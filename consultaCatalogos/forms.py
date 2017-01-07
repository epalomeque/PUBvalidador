#!/usr/bin/env python
# -*- coding: utf-8 -*-

from django import forms
from django.contrib.auth.models import User
from django.forms import ModelForm
#from django.forms import widgets
from django.forms.extras import SelectDateWidget
from consultaCatalogos.models import TrabajosRealizados, Cat_Municipio, Cat_Localidad
from consultaCatalogos.models import *
import os.path


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
    numeroexterior = forms.CharField(max_length=5, label='No.Exterior')
    # Numero Interior_14
    numerointerior = forms.CharField(max_length=5, label='No.Interior')
    # Codigo Postal_15
    codigopostal = forms.CharField(max_length=5, label=u'Código Postal')
    # Referencia del domicilio_16
    referenciadomicilio = forms.CharField(max_length=250, label='Referencia del domicilio')
    # Dependencia que opera el programa_17
    dependencia = forms.ModelChoiceField(queryset=Cat_Dependencias.objects.all(), to_field_name='nombreDependencia', label='Dependencia')
    # Clave del programa_18
    # Nombre del programa_20
    claveprograma = forms.ModelChoiceField(queryset=Cat_Programas.objects.all(), to_field_name='identPrograma', label='Clave del programa')
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


class formPersonas(forms.Form):

    SINO_CHOICES = (
        ('SI', 'SI'),
        ('NO', 'NO'),
    )

    registro = forms.IntegerField(label='Registro No.', widget=forms.HiddenInput)
    # Identificador de Hogar_1
    IdHogar = forms.CharField(max_length=15, label=u'Identificador de Hogar')
    # Identificador de Persona_2
    IdPersona = forms.CharField(max_length=15, label=u'Identificador de Persona')
    # Primer Apellido_3
    PrimerApellido = forms.CharField(max_length=40, label=u'Primer Apellido')
    # Segundo Apellido _4
    SegundoApellido = forms.CharField(max_length=40, label=u'Segundo Apellido', required=False)
    # Nombre (s)_5
    Nombre = forms.CharField(max_length=40, label=u'Nombre(s)')
    # CURP_6
    CURP = forms.CharField(max_length=18, label=u'C.U.R.P.')
    # Sexo_7
    Sexo = forms.ModelChoiceField(queryset=Cat_Sexo.objects.all(), empty_label='-----', label=u'Sexo')
    # Estado Civil_8
    EstadoCivil = forms.ModelChoiceField(queryset=Cat_Edocivil.objects.all(), empty_label='-----', label=u'Estado Civil')
    # Titular_9
    Titular = forms.ChoiceField(choices=SINO_CHOICES, label=u'Titular')
    # Parentesco del Beneficiario con el Jefe del Hogar_10
    Parentesco = forms.ModelChoiceField(queryset=Cat_Parentesco.objects.all(), empty_label='-----', label=u'Parentesco')
    # Otro documento de identificacion_11
    OtroDocId = forms.ModelChoiceField(queryset=Cat_Identificacion.objects.all(), label=u'Otro documento de identificación', required=False)
    # Clave Municipio donde se paga el beneficio_12
    # Municipio donde se paga el beneficio_13
    MunicipioDondePagaBeneficio = forms.ModelChoiceField(queryset=Cat_Municipio.objects.all(), to_field_name="identMunicipio", empty_label=u'----', label=u'Municipio donde se paga el beneficio')
    # Clave Localidad donde se paga el beneficio_14
    # Localidad donde se paga el beneficio_15
    # related_name='Localidad_Pago_Beneficio',
    LocalidadPagoBeneficio = forms.ModelChoiceField(queryset=Cat_Localidad.objects.all(), to_field_name="identLocalidad", empty_label=u'-----', label=u'Localidad donde se paga el beneficio')
    # Localidad de Residencia_16
    #  related_name='Localidad_De_Residencia',
    LocalidadResidencia = forms.ModelChoiceField(queryset=Cat_Localidad.objects.all(), to_field_name="identLocalidad", empty_label=u'-----', label=u'Localidad de Residencia')
    # Nombre de vialidad_17
    NombreVialidad = forms.CharField(max_length=40, label=u'Nombre de la vialidad')
    # Numero Exterior_18
    NumeroExterior = forms.CharField(max_length=5, required=False, label=u'Número exterior')
    # Numero Interior _19
    NumeroInterior = forms.CharField(max_length=5, required=False, label=u'Número interior')
    # Codigo Postal_20
    CodigoPostal = forms.CharField(max_length=5, required=False, label=u'Código Postal')
    # Asentamiento humano_21
    AsentamientoHumano = forms.ModelChoiceField(queryset=Cat_Asentamiento.objects.all(), empty_label=u'-----', label=u'Tipo de asentamiento humano')
    # Referencia del domicilio_22
    ReferenciaDomicilio = forms.CharField(max_length=250, required=False, label=u'Referencia del domicilio')
    # Dependencia que opera el programa_23
    Dependencia = forms.ModelChoiceField(queryset=Cat_Dependencias.objects.all(), to_field_name='nombreDependencia',empty_label=u'-----', label=u'Dependencia que opera el programa')
    # Clave del programa_24
    # Nombre del programa_26
    NombrePrograma = forms.ModelChoiceField(queryset=Cat_Programas.objects.all(), empty_label=u'-----', label=u'Nombre del programa')
    # Clave del subprograma_25
    NombreSubprograma = forms.ModelChoiceField(queryset=Cat_Subprogramas.objects.all(), required=False, empty_label=u'-----', label=u'Nombre del subprograma')
    # Tipo de apoyo_27
    TipoApoyo = forms.ModelChoiceField(queryset=Cat_TipoApoyo.objects.all(), empty_label=u'-----', label=u'Tipo de apoyo')
    # Beneficio_28
    Beneficio = forms.CharField(max_length=250, label=u'Beneficio')
    # Cantidad de beneficios_29
    CantBeneficios = forms.IntegerField(label='Cantidad de beneficios')
    # Total en pesos de los beneficios_30
    TotalPesosBeneficios = forms.IntegerField(label='Total en pesos de los beneficios')
    # Inversion federal_31
    InversionFederal = forms.IntegerField(label=u'Inversión Federal')
    # Inversion estatal_32
    InversionEstatal = forms.IntegerField(label=u'Inversión Estatal')
    # Inversion municipal_33
    InversionMunicipal = forms.IntegerField(label=u'Inversión Municipal')
    # Inversion de otras fuentes_34
    InversionOtras = forms.IntegerField(label=u'Inversión de otras fuentes')
    # Fuentes que fondean el recurso_35
    FuentesRecurso = forms.ModelChoiceField(queryset=Cat_Fuentes.objects.all(), to_field_name='identFuentes', empty_label=u'-----', label=u'Fuentes que fondean el recurso')
    # Mes de periodo de pago_37
    MesPeriodoPago = forms.ModelChoiceField(queryset=Cat_Mes.objects.all(), empty_label=u'-----', label=u'Mes de periodo de pago')
    # Periodicidad de entrega del beneficio_39
    PeriodicidadEntregaBeneficio = forms.ModelChoiceField(queryset=Cat_Frecuencia.objects.all(), empty_label=u'-----', label=u'Periocidad de entrega')
    # Numero de la entrega del beneficio_40
    NumeroEntregaBeneficio = forms.IntegerField(label='No. de entrega')