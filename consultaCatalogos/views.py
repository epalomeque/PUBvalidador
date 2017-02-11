# from django.shortcuts import render
from django.shortcuts import render_to_response
from django.template.context import RequestContext
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.core.urlresolvers import reverse
from django.http.response import HttpResponseRedirect
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from models import TrabajosRealizados, Cat_Municipio
from csv_actions import *
from consultaCatalogos.forms import SignUpForm, nuevoTrabajoForm, formPoblacion, formPersonas
#from django.core.files.uploadedfile import SimpleUploadedFile


# Create your views here.
def signup(request):
    if request.method == 'POST':  # If the form has been submitted...
        form = SignUpForm(request.POST)  # A form bound to the POST data
        if form.is_valid():  # All validation rules pass

            # Process the data in form.cleaned_data
            username = form.cleaned_data["username"]
            password = form.cleaned_data["password"]
            email = form.cleaned_data["email"]
            first_name = form.cleaned_data["first_name"]
            last_name = form.cleaned_data["last_name"]

            # At this point, user is a User object that has already been saved
            # to the database. You can continue to change its attributes
            # if you want to change other fields.
            user = User.objects.create_user(username, email, password)
            user.first_name = first_name
            user.last_name = last_name

            # Save new user attributes
            user.save()

            return HttpResponseRedirect(reverse('home'))  # Redirect after POST
    else:
        form = SignUpForm()

    data = {
        'form': form,
    }
    return render_to_response('signup.html', data, context_instance=RequestContext(request))


@login_required()
def home(request):
    # if this is a POST request we need to process the form data
    if request.method == 'POST':
        # create a form instance and populate it with data from the request:
        nuevo_trabajo = nuevoTrabajoForm(request.POST, request.FILES)
        # check whether it's valid:
        if nuevo_trabajo.is_valid():
            # process the data in form.cleaned_data as required
            el_trabajo = nuevo_trabajo.save()
            # redirect to a new URL:
            return HttpResponseRedirect('/validar/%s' % el_trabajo.pk)

    usuario_actual = request.user
    trabajos_pedientes = TrabajosRealizados.objects.filter(Usuario=usuario_actual, Estatus__in=[1, 2, 3, 4])
    userData = {
        'user': usuario_actual,
        'nuevoTrabajo': nuevoTrabajoForm(initial={'Usuario':usuario_actual, 'Estatus':4}),
        'pendientes': trabajos_pedientes,
        'total_pendientes': trabajos_pedientes.count(),
        'error_estructura': True, # al inicio las banderas estan en True para que no impriman mensaje de error
        'error_trimestre': True,
        'error_anio': True
    }

    return render_to_response('home.html', userData, context_instance=RequestContext(request))


@login_required()
def borrar(request, trabajo_id):
    trabajo = TrabajosRealizados.objects.get(pk=trabajo_id)
    if trabajo.Usuario == request.user:
        trabajo.delete()
    else:
        return HttpResponseRedirect('/noautorizado')

    return HttpResponseRedirect('/')


@login_required()
def validar(request, trabajo_id):
    # Abrir estatus del trabajo
    trabajo = TrabajosRealizados.objects.get(pk=trabajo_id)
    # El valor del numero de pagina en el paginador
    page = ''
    # Si el usuario es el mismo que hace la peticion entonces se puede acceder al trabajo
    if trabajo.Usuario == request.user:

        tipopadronid = trabajo.TipoPadron_id  # obtengo el tipo de padron # print 'tipopadronid: ' + str(tipopadronid)
        anioejercicio = trabajo.AnioEjercicio  # obtengo el anio de ejercicio
        trimperiodoid = trabajo.Trimestre.identPeriodo  # obtengo el trimestre registrado
        Estatus_id = trabajo.Estatus_id

        if trabajo.jsondata:  # Si existen datos en el campo de JSON
            print 'Si hay datos en el JSON'
            datos = json.loads(trabajo.jsondata)  # Obtengo los datos del JSON
            #  Creamos una lista de formularios con los datos del JSON
            dato_inicial = ObtenDatosEnLista(datos, tipopadronid, trabajo.modeloConvertido)
            # Revisamos la cantidad de registros por corregir
            registros_por_validar = contar_registros_con_errores(dato_inicial)
            if (registros_por_validar == 0) and (trabajo.Estatus_id == 1):
                trabajo.Estatus_id = 2
                trabajo.save()

        else:
            print 'No hay datos en el JSON'
            datos = list()
            dato_inicial = list()
            registros_por_validar = 0

        ### Si el estatus del trabajo es INCOMPLETO
        if Estatus_id == 1:

            # Crea una instancia del formulario y rellenarlo con los datos del request.POST
            if request.method == 'POST':
                # Hacer if para que seleccione el tipo de padron
                if tipopadronid == 3:
                    formulario = formPoblacion(request.POST)
                elif tipopadronid == 2:
                    formulario = formPersonas(request.POST)
                elif tipopadronid == 1:
                    formulario = formActores(request.POST)

                # obteniendo el numero de registro en el diccionario de datos
                registro = int(formulario['registro'].value()) - 1

                # si hay cambio en los datos del formulario grabarlos en la lista de datos iniciales y guardar JSON
                if formulario.has_changed():
                    dato_inicial[registro] = formulario # Actualizando el registro en la lista de formularios
                    datos = {} # limpiamos datos
                    datos = ActualizarInformacionAModeloNormalizado(dato_inicial, tipopadronid)
                    if not(trabajo.modeloConvertido):
                        trabajo.modeloConvertido = True
                    trabajo.jsondata = json.dumps(datos)
                    trabajo.save()

                    return HttpResponseRedirect(request.get_full_path())

            # si es GET (o cualquier otro metodo) asignamos la pagina a presentar del paginador
            else:
                page = request.GET.get('page')

        ### Si el estatus del trabajo es COMPLETO
        elif Estatus_id == 2:
            print 'trabajo.Estatus_id == 2 | Completo'
            print trabajo.Estatus
            page = request.GET.get('page')

        ### Si el estatus del trabajo es ENVIADO
        elif Estatus_id == 3:
            print 'trabajo.Estatus_id == 3 | Enviado'
            print trabajo.Estatus

        ### Si el estatus del trabajo es INICIADO
        elif Estatus_id == 4:
            # print 'El estatus es INICIADO'
            # Convierte el archivo CSV a JSON y lo guarda en el modelo trabajo
            datos = import_csv(trabajo.archivoRelacionado.path)
            estructura_archivo_valida = EstructuraArchivoEsValida(datos.get('encabezados'), tipopadronid)
            print 'La estructura del archivo es valida : ' + str(estructura_archivo_valida)

            if estructura_archivo_valida:  # Si la estructura del archivo es valida se realizan otras comprobaciones

                # print 'La estructura de archivo es valida: ' + str(estructura_archivo_valida)
                trabajo.estructura_valida = estructura_archivo_valida
                errores_anio = ErroresColumnaAnio(anioejercicio, datos.get('registros'), tipopadronid)
                errores_trimestre = ErroresColumnaTrimestre(trimperiodoid, datos.get('registros'), tipopadronid)

                #errores_iniciales = ErroresIniciales(datos.get('registros'), tipopadronid, anioejercicio, trimperiodoid)
                print 'Errores en la columna anio: ' + str(errores_anio)
                print 'Errores en la columna trimestre: ' + str(errores_trimestre)

                if (errores_anio > 0) or (errores_trimestre > 0):  # Si existen errores en el anio o trimestre

                    # Validar si los errores son en la columna de anio
                    if errores_anio > 0:
                        trabajo.anio_valido = False
                    else:
                        trabajo.anio_valido = True

                    # Validar si los errores son en la columna de trimestre
                    if errores_trimestre > 0:
                        trabajo.trimestre_valido = False
                    else:
                        trabajo.trimestre_valido = True

                    trabajo.Estatus_id = 5  # Se cambia el ID del estatus a INVALIDO
                    trabajo.save()  # Se guarda el estatus del trabajo en la base de datos

                    usuario_actual = request.user
                    trabajos_pedientes = TrabajosRealizados.objects.filter(Usuario=usuario_actual,
                                                                           Estatus__in=[1, 2, 3, 4])
                    userData = {
                        'user': usuario_actual,
                        'nuevoTrabajo': nuevoTrabajoForm(initial={'Usuario': usuario_actual, 'Estatus': 4}),
                        'pendientes': trabajos_pedientes,
                        'total_pendientes': trabajos_pedientes.count(),
                        'error_estructura': trabajo.estructura_valida,
                        'error_trimestre': trabajo.trimestre_valido,
                        'error_anio': trabajo.anio_valido
                    }

                    return render_to_response('home.html', userData, context_instance=RequestContext(request))

                else:  # Si no existen errores en las columnas de anio y trimestre

                    # print 'Errores iniciales es: ' + str(errores_iniciales)
                    trabajo.CantidadRegistros = len(datos.get('registros'))  # Obtenemos el total de registros
                    trabajo.Estatus_id = 1  # Actualizamos el estatus del trabajo a INCOMPLETO
                    trabajo.jsondata = json.dumps(datos)  # Vaciamos los datos iniciales en formato JSON
                    trabajo.trimestre_valido = True  # Validamos bandera de trimestre
                    trabajo.anio_valido = True  # Validamos bandera de anio
                    trabajo.save()  # Salvamos trabajo actual

                    return HttpResponseRedirect('/validar/%s' % trabajo.pk)

            else:  # Si la estructura del archivo no es valida
                trabajo.estructura_valida = False
                trabajo.Estatus_id = 5  # Se cambia el ID del estatus a INVALIDO
                trabajo.save()  # Se guarda el trabajo en la base de datos

                usuario_actual = request.user
                trabajos_pedientes = TrabajosRealizados.objects.filter(Usuario=usuario_actual, Estatus__in=[1, 2, 3, 4])
                userData = {
                    'user': usuario_actual,
                    'nuevoTrabajo': nuevoTrabajoForm(initial={'Usuario': usuario_actual, 'Estatus': 4}),
                    'pendientes': trabajos_pedientes,
                    'total_pendientes': trabajos_pedientes.count(),
                    'error_estructura': True,
                    'error_trimestre': False,
                    'error_anio': False
                }

                return render_to_response('home.html', userData, context_instance=RequestContext(request))

    else:
        return HttpResponseRedirect('/noautorizado')

    # Iniciamos el paginador
    p = Paginator(dato_inicial, 3)

    try:
        records = p.page(page)
    except PageNotAnInteger:
        # If page is not an integer, deliver first page.
        records = p.page(1)
    except EmptyPage:
        # If page is out of range (e.g. 9999), deliver last page of results.
        records = p.page(p.num_pages)

    data = {
        'trabajo': trabajo,
        'datos': datos,
        'formulario': records,
        'paginador': p,
        'registros_invalidos': registros_por_validar
    }

    return render_to_response('validar.html', data, context_instance=RequestContext(request))


def no_autorizado(request):
    return render_to_response('no_autorizado.html')