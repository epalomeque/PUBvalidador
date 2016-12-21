#!/usr/bin/env python
# -*- coding: utf-8 -*-

from django import forms
from django.contrib.auth.models import User
from django.forms import ModelForm
#from django.forms import widgets
from django.forms.extras import SelectDateWidget
from consultaCatalogos.models import TrabajosRealizados, Cat_Municipio, Cat_Localidad
from consultaCatalogos.models import *



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

    registro = forms.IntegerField(label='Registro No.', widget=forms.HiddenInput)
    # Multilocalidad_1
    multilocalidad = forms.ChoiceField(choices=SINO_CHOICES, label='Multilocalidad')
    # Registro Federal de Contribuyentes_2
    rfc = forms.CharField(min_length='13', max_length='13', label='R.F.C.')
    # Numero beneficiados_3
    numerobeneficiados = forms.IntegerField(label='Personas beneficiadas')
    # Hombres beneficiados_4
    hombresbeneficiados = forms.IntegerField(label='Hombres beneficiados')
    # Mujeres beneficiadas_5
    mujeresbeneficiadas = forms.IntegerField(label='Mujeres beneficiadas')
    # Viviendas beneficiadas_6
    viviendasbeneficiadas = forms.IntegerField(label='Viviendas beneficiadas')
    # Clave Municipio donde se encuentra la obra_7
    # Municipio donde se encuentra la obra_8
    municipiobeneficiado = forms.ModelChoiceField(queryset=Cat_Municipio.objects.all(), to_field_name="identMunicipio", empty_label="(Ninguno)", label='Municipio')
    # Clave Localidad donde se encuentra la obra_9
    # Localidad donde se encuentra la obra_10
    localidadbeneficiada = forms.ModelChoiceField(queryset=Cat_Localidad.objects.all(), to_field_name="identLocalidad",empty_label="(Ninguno)", label='Localidad')
    # Asentamiento humano_11
    asentamiento = forms.ModelChoiceField(queryset=Cat_Asentamiento.objects.all(), to_field_name="nombreAsentamiento", label='Tipo de asentamiento')
    # Nombre vialidad_12
    nombrevialidad = forms.CharField(max_length=250, label='Nombre de la vialidad')
    # Numero Exterior_13
    numeroexterior = forms.CharField(max_length=5, label='No. Exterior')
    # Numero Interior_14
    numerointerior = forms.CharField(max_length=5, label='No. Exterior')
    # Codigo Postal_15
    codigopostal = forms.CharField(max_length=5, label=u'Código Postal')
    # Referencia del domicilio_16
    referenciadomicilio = forms.CharField(max_length=250, label='Referencia del domicilio')
    # Dependencia que opera el programa_17
    dependencia = forms.ModelChoiceField(queryset=Cat_Dependencias.objects.all(), to_field_name='nombreDependencia', label='Dependencia')
    # Clave del programa_18
    # Nombre del programa_20
    claveprograma = forms.ModelChoiceField(queryset=Cat_Programas.objects.all(), label='Clave del programa')
    # Clave del subprograma_19
    clavesubprograma = forms.ModelChoiceField(queryset=Cat_Subprogramas.objects.all(), label='Clave del subprograma', required=False)
    # Tipo de apoyo_21
    tipoapoyo = forms.ModelChoiceField(queryset=Cat_TipoApoyo.objects.all(), to_field_name='identTipoApoyo', label='Tipo de apoyo')
    # Identificador de la Obra_22
    idobra = forms.CharField(max_length=15, label='Identificador de la obra')
    # Descripcion de la Obra_23
    descripcionobra = forms.CharField(widget=forms.Textarea(attrs={'rows':'4'}), label=u'Descripción de la obra')
    # Cantidad de beneficios_24
    cantbeneficios = forms.IntegerField(label='Cantidad de beneficios')
    # Total en pesos de los beneficios_25
    totalpesosbeneficios = forms.IntegerField(label='Total en pesos de los beneficios')
    # Inversion federal_26
    inversionfederal = forms.IntegerField(label=u'Inversión Federal')
    # Inversion estatal_27
    inversionestatal = forms.IntegerField(label=u'Inversión Estatal')
    # Inversion municipal_28
    inversionmunicipal = forms.IntegerField(label=u'Inversión Municipal')
    # Inversion de otras fuentes_29
    inversionotras = forms.IntegerField(label=u'Inversión de otras fuentes')
    # Fuentes que fondean el recurso_30
    fuentesrecurso = forms.ModelChoiceField(queryset=Cat_Fuentes.objects.all(), to_field_name='identFuentes',label='Fuentes que fondean el recurso')
    # Trimestre_31
    #Trimestre = models.ForeignKey(Cat_Periodos)
    # Anio de ejercicio_32
    #AnioEjercicio = models.ForeignKey(Cat_AnioEjercicio)
    # Fecha Inicio_33
    fechainicio = forms.DateField(widget=SelectDateWidget(), label='Fecha de inicio')
    # Fecha Fin_34
    fechafin = forms.DateField(widget=SelectDateWidget(), label=u'Fecha de finalización')
    # Periodicidad de entrega del beneficio_35
    periodicidadentrega = forms.ModelChoiceField(queryset=Cat_Frecuencia.objects.all(), to_field_name='identFrecuencia', label='Periocidad de entrega')
    # Numero de la entrega del beneficio_36
    numeroentregabeneficio = forms.IntegerField(label='No. de entrega')