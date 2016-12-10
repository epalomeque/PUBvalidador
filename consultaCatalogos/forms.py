from django import forms
from django.contrib.auth.models import User
from django.forms import ModelForm
from consultaCatalogos.models import TrabajosRealizados


class SignUpForm(ModelForm):
    class Meta:
        model = User
        fields = ['username', 'password', 'email', 'first_name', 'last_name']
        widgets = {
            'password': forms.PasswordInput(),
        }


class nuevoTrabajoForm(ModelForm):
#class nuevoTrabajoForm(forms.Form):
    class Meta:
        model = TrabajosRealizados
        fields = ['archivoRelacionado', 'TipoPadron','AnioEjercicio','Trimestre', 'Estatus', 'Usuario']
        #fields = ['archivoRelacionado', 'Estatus', 'Usuario', 'TipoPadron','AnioEjercicio','Trimestre', 'CantidadRegistros','JsonTrabajo']
        widgets = {
            'archivoRelacionado': forms.FileInput,
            'Estatus': forms.HiddenInput,
            'Usuario':forms.HiddenInput,
            'TipoPadron':forms.Select,
            'AnioEjercicio':forms.Select,
            'Trimestre':forms.Select,
            #'CantidadRegistros':forms.HiddenInput,
            #'JsonTrabajo':forms.HiddenInput
        }


class formPoblacion(forms.Form):

    SINO_CHOICES = (
        ('SI', 'SI'),
        ('NO', 'NO'),
    )

    multilocalidad = forms.Select(choices=SINO_CHOICES)
    rfc = forms.CharField(max_length='13')
    numerobeneficiados = forms.IntegerField
