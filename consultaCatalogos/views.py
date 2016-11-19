from django.shortcuts import render
# from django.conf.global_settings import MEDIA_URL
from django.shortcuts import render_to_response
from django.template.context import RequestContext
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.core.urlresolvers import reverse
from django.http.response import HttpResponseRedirect
from forms import SignUpForm, nuevoTrabajoForm
from models import TrabajosRealizados
#from django.core.files.uploadedfile import SimpleUploadedFile
from csv_actions import *


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
        'pendientes' : trabajos_pedientes,
        'total_pendientes' : trabajos_pedientes.count()
    }

    return render_to_response('home.html', userData, context_instance=RequestContext(request))


@login_required()
def validar(request, trabajo_id):
    # Abrir estatus del trabajo
    trabajo = TrabajosRealizados.objects.get(pk=trabajo_id)

    if trabajo.Usuario == request.user :
        # Si el estatus es INCOMPLETO
        if trabajo.Estatus_id == 1 :
            print 'trabajo.Estatus_id == 1'
            print trabajo.Estatus
        # Si el estatus es COMPLETO
        elif trabajo.Estatus_id == 2:
            print 'trabajo.Estatus_id == 2'
            print trabajo.Estatus
        # Si el estatus es ENVIADO
        elif trabajo.Estatus_id == 3:
            print 'trabajo.Estatus_id == 3'
            print trabajo.Estatus
        # Si el estatus es INICIADO
        elif trabajo.Estatus_id == 4:
            print 'trabajo.Estatus_id == 4'
            print trabajo.Estatus
            datos = import_csv(trabajo.archivoRelacionado.path)
            if EstructuraArchivoEsValida(datos.get('encabezados'), trabajo.TipoPadron_id):
                validar_anio(trabajo.AnioEjercicio, datos.get('registros'), trabajo.TipoPadron_id)
                print 'Estructura valida, sigamos con las validaciones'
            else:
                print 'estructura no valida'


    else:
        return HttpResponseRedirect('/noautorizado')

    data = {
        'trabajo': trabajo
    }

    return render_to_response('validar.html', data, context_instance=RequestContext(request))


def no_autorizado(request):
    return render_to_response('no_autorizado.html')