from django.shortcuts import render
# from django.conf.global_settings import MEDIA_URL
from django.shortcuts import render_to_response
from django.template.context import RequestContext
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.core.urlresolvers import reverse
from django.http.response import HttpResponseRedirect
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from consultaCatalogos.forms import SignUpForm, nuevoTrabajoForm, formPoblacion
from models import TrabajosRealizados, Cat_Municipio
#from django.core.files.uploadedfile import SimpleUploadedFile
from csv_actions import *
# from django.forms import formset_factory


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
        'error_estructura': False,
        'error_trimestre': False,
        'error_anio': False
    }

    return render_to_response('home.html', userData, context_instance=RequestContext(request))


@login_required()
def validar(request, trabajo_id):
    # Abrir estatus del trabajo
    trabajo = TrabajosRealizados.objects.get(pk=trabajo_id)
    page = ''
    if trabajo.Usuario == request.user:
        tipopadronid = trabajo.TipoPadron_id # obtengo el tipo de padron # print 'tipopadronid: ' + str(tipopadronid)
        anioejercicio = trabajo.AnioEjercicio # obtengo el anio de ejercicio
        trimperiodoid = trabajo.Trimestre.identPeriodo # obtengo el trimestre registrado
        Estatus_id = trabajo.Estatus_id
        datos = json.loads(trabajo.jsondata) # Obtengo los datos del JSON

        # si es la primera vez que se inica el proceso, se toman los datos originales,
        # de otro modo se leeen con el esquema actualizado
        dato_inicial = ObtenDatosEnLista(datos.get('registros'), tipopadronid, False)#trabajo.modeloConvertido)
        #
        #    datos = json.loads(trabajo.jsondata)
        #    dato_inicial = ObtenDatosEnLista(datos.get('registros'), tipopadronid)
        #    trabajo.modeloConvertido = True
            # guarda el json en el modelo de trabajo
            #trabajo.jsondata = json.dumps(dato_inicial)
        #    trabajo.save()
        #else:
        #    dato_inicial = json.loads(trabajo.jsondata)

        # Si el estatus del trabajo es INCOMPLETO
        if Estatus_id == 1:

            if request.method == 'POST':
                # Crea una instancia del formulario y rellenarlo con los datos del request.POST
                formulario = formPoblacion(request.POST)

                # comprobando el metodo de acceso a los datos en el formulario
                # print 'claveprograma.value() = ' + str(formulario['claveprograma'].value())
                # print formulario['claveprograma'].errors

                # obteniendo el numero de registro en el diccionario de datos
                registro = int(formulario['registro'].value()) - 1
                #print 'formulario[registro].value() = ' + str(formulario['registro'].value())
                #print 'registro = ' + str(registro)

                # si hay cambio en los datos del formulario grabarlos en la lista de datos iniciales y convertirlas al json
                if formulario.has_changed():
                    # print("The following fields changed:\n%s" % ",\n ".join(formulario.changed_data))
                    dato_inicial[registro] = formulario

                # check whether it's valid:
                if formulario.is_valid():
                    print 'llegue aqui'
                    print str(request.get_host())
                    print request.get_full_path()
                    if dato_inicial[registro] == formulario:
                        print 'estan bien pinche iguales'
                    # process the data in form.cleaned_data as required
                    # ...
                    # redirect to a new URL:
                    return HttpResponseRedirect(request.get_full_path())
            # if a GET (or any other method) we'll create a blank form
            else:
                page = request.GET.get('page')

        # Si el estatus del trabajo es COMPLETO
        elif Estatus_id == 2:
            print 'trabajo.Estatus_id == 2 | Completo'
            print trabajo.Estatus
        # Si el estatus del trabajo es ENVIADO
        elif Estatus_id == 3:
            print 'trabajo.Estatus_id == 3 | Enviado'
            print trabajo.Estatus
        # Si el estatus del trabajo es INICIADO
        elif Estatus_id == 4:
            # Convierte el archivo CSV a JSON y lo guarda en el modelo trabajo
            datos = import_csv(trabajo.archivoRelacionado.path)
            estructura_archivo_valida = EstructuraArchivoEsValida(datos.get('encabezados'), tipopadronid)
            if estructura_archivo_valida:
                trabajo.estructura_valida = estructura_archivo_valida
                errores_iniciales = ErroresIniciales(datos.get('registros'), tipopadronid, anioejercicio, trimperiodoid)
                if errores_iniciales:
                    errores_anio = ErroresColumnaAnio(anioejercicio, datos.get('registros'), tipopadronid)
                    if errores_anio > 0:
                        trabajo.anio_valido = False
                    else:
                        trabajo.anio_valido = True
                    errores_trimestre = ErroresColumnaTrimestre(trimperiodoid, datos.get('registros'), tipopadronid)
                    if errores_trimestre > 0:
                        trabajo.trimestre_valido = False
                    else:
                        trabajo.trimestre_valido = True
                    trabajo.Estatus_id = 5
                    trabajo.save()

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

                else:
                    # print 'Sin errores iniciales'
                    # GuardarRegistros(datos.get('registros'), tipopadronid, trabajo.pk)
                    trabajo.CantidadRegistros = len(datos.get('registros'))
                    trabajo.Estatus_id = 1
                    trabajo.jsondata = json.dumps(datos)
                    trabajo.trimestre_valido = True
                    trabajo.anio_valido = True
                    trabajo.save()
            else:
                trabajo.estructura_valida = False
                trabajo.Estatus_id = 5
                trabajo.save()

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
        'paginador': p
    }

    return render_to_response('validar.html', data, context_instance=RequestContext(request))


def no_autorizado(request):
    return render_to_response('no_autorizado.html')