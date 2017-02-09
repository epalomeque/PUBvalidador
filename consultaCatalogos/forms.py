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
    municipiobeneficiado = forms.ModelChoiceField(queryset=Cat_Municipio.objects.all(),
                                                  to_field_name="identMunicipio",
                                                  empty_label="------",
                                                  label='Municipio')
    # Clave Localidad donde se encuentra la obra_9
    # Localidad donde se encuentra la obra_10
    localidadbeneficiada = forms.ModelChoiceField(queryset=Cat_Localidad.objects.all(),
                                                  to_field_name="identLocalidad",
                                                  empty_label="------",
                                                  label='Localidad')
    # Asentamiento humano_11
    asentamiento = forms.ModelChoiceField(queryset=Cat_Asentamiento.objects.all(),
                                          to_field_name="nombreAsentamiento",
                                          label='Tipo de asentamiento')
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
    dependencia = forms.ModelChoiceField(queryset=Cat_Dependencias.objects.all(),
                                         to_field_name='nombreDependencia',
                                         label='Dependencia')
    # Clave del programa_18
    # Nombre del programa_20
    claveprograma = forms.ModelChoiceField(queryset=Cat_Programas.objects.all(),
                                           to_field_name='identPrograma',
                                           label='Clave del programa')
    # Clave del subprograma_19
    clavesubprograma = forms.ModelChoiceField(queryset=Cat_Subprogramas.objects.all(),
                                              label='Clave del subprograma',
                                              required=False)
    # Tipo de apoyo_21
    tipoapoyo = forms.ModelChoiceField(queryset=Cat_TipoApoyo.objects.all(),
                                       to_field_name='identTipoApoyo',
                                       label='Tipo de apoyo')
    # Identificador de la Obra_22
    idobra = forms.CharField(max_length=15, label='Identificador de la obra')
    # Descripcion de la Obra_23
    descripcionobra = forms.CharField(widget=forms.Textarea(attrs={'rows':'4'}),
                                      label=u'Descripción de la obra')
    # Cantidad de beneficios_24
    cantbeneficios = forms.IntegerField(label=u'Cantidad de beneficios')
    # Total en pesos de los beneficios_25
    totalpesosbeneficios = forms.IntegerField(label=u'Total en pesos de los beneficios')
    # Inversion federal_26
    inversionfederal = forms.IntegerField(label=u'Inversión Federal')
    # Inversion estatal_27
    inversionestatal = forms.IntegerField(label=u'Inversión Estatal')
    # Inversion municipal_28
    inversionmunicipal = forms.IntegerField(label=u'Inversión Municipal')
    # Inversion de otras fuentes_29
    inversionotras = forms.IntegerField(label=u'Inversión de otras fuentes')
    # Fuentes que fondean el recurso_30
    fuentesrecurso = forms.ModelChoiceField(queryset=Cat_Fuentes.objects.all(),
                                            to_field_name='identFuentes',
                                            label=u'Fuentes que fondean el recurso')
    # Fecha Inicio_33
    fechainicio = forms.DateField(widget=SelectDateWidget(), label=u'Fecha de inicio')
    # Fecha Fin_34
    fechafin = forms.DateField(widget=SelectDateWidget(), label=u'Fecha de finalización')
    # Periodicidad de entrega del beneficio_35
    periodicidadentrega = forms.ModelChoiceField(queryset=Cat_Frecuencia.objects.all(),
                                                 to_field_name='identFrecuencia',
                                                 label=u'Periocidad de entrega')
    # Numero de la entrega del beneficio_36
    numeroentregabeneficio = forms.IntegerField(label='No. de entrega')


class formPersonas(forms.Form):

    SINO_CHOICES = (
        ('SI', 'SI'),
        ('NO', 'NO'),
    )

    registro = forms.IntegerField(label=u'Registro No.',
                                  widget=forms.HiddenInput)
    # Identificador de Hogar_1
    idhogar = forms.CharField(max_length=15,
                              label=u'Identificador de Hogar',
                              widget=forms.TextInput)
    # Identificador de Persona_2
    idpersona = forms.CharField(max_length=15,
                                label=u'Identificador de Persona')
    # Primer Apellido_3
    primerapellido = forms.CharField(max_length=40,
                                     label=u'Primer Apellido')
    # Segundo Apellido _4
    segundoapellido = forms.CharField(max_length=40,
                                      label=u'Segundo Apellido',
                                      required=False)
    # Nombre (s)_5
    nombre = forms.CharField(max_length=40,
                             label=u'Nombre(s)')
    # CURP_6
    curp = forms.CharField(max_length=18,
                           label=u'C.U.R.P.')
    # Sexo_7
    sexo = forms.ModelChoiceField(queryset=Cat_Sexo.objects.all(),
                                  empty_label=u'-----',
                                  label=u'Sexo')
    # Estado Civil_8
    estadocivil = forms.ModelChoiceField(queryset=Cat_Edocivil.objects.all(),
                                         empty_label=u'-----',
                                         label=u'Estado Civil')
    # Titular_9
    titular = forms.ChoiceField(choices=SINO_CHOICES,
                                label=u'Titular')
    # Parentesco del Beneficiario con el Jefe del Hogar_10
    parentesco = forms.ModelChoiceField(queryset=Cat_Parentesco.objects.all(),
                                        empty_label='-----',
                                        label=u'Parentesco')
    # Otro documento de identificacion_11
    otrodocto = forms.ModelChoiceField(queryset=Cat_Identificacion.objects.all(),
                                       label=u'Otro documento de identificación',
                                       required=False)
    # Clave Municipio donde se paga el beneficio_12
    # Municipio donde se paga el beneficio_13
    cvemunicipiopago = forms.ModelChoiceField(queryset=Cat_Municipio.objects.all(),
                                              to_field_name="identMunicipio",
                                              empty_label=u'----',
                                              label=u'Municipio donde se paga el beneficio')
    # Clave Localidad donde se paga el beneficio_14
    # Localidad donde se paga el beneficio_15
    # related_name='Localidad_Pago_Beneficio',
    localidadpago = forms.ModelChoiceField(queryset=Cat_Localidad.objects.all(),
                                           to_field_name="identLocalidad",
                                           empty_label=u'-----',
                                           label=u'Localidad donde se paga el beneficio')
    # Localidad de Residencia_16
    #  related_name='Localidad_De_Residencia',
    localidadresidencia = forms.ModelChoiceField(queryset=Cat_Localidad.objects.all(),
                                                 to_field_name="identLocalidad",
                                                 empty_label=u'-----',
                                                 label=u'Localidad de Residencia')
    # Nombre de vialidad_17
    nombrevialidad = forms.CharField(max_length=40,
                                     label=u'Nombre de la vialidad')
    # Numero Exterior_18
    numexterior = forms.CharField(max_length=5,
                                  required=False,
                                  label=u'Número exterior')
    # Numero Interior _19
    numinterior = forms.CharField(max_length=5,
                                  required=False,
                                  label=u'Número interior')
    # Codigo Postal_20
    codigopostal = forms.CharField(max_length=5,
                                   required=False,
                                   label=u'Código Postal')
    # Asentamiento humano_21
    asentamientohumano = forms.ModelChoiceField(queryset=Cat_Asentamiento.objects.all(),
                                                empty_label=u'-----',
                                                label=u'Tipo de asentamiento humano')
    # Referencia del domicilio_22
    referenciadomicilio = forms.CharField(max_length=250,
                                          required=False,
                                          label=u'Referencia del domicilio')
    # Dependencia que opera el programa_23
    dependencia = forms.ModelChoiceField(queryset=Cat_Dependencias.objects.all(),
                                         to_field_name='nombreDependencia',
                                         empty_label=u'-----',
                                         label=u'Dependencia que opera el programa')
    # Clave del programa_24
    # Nombre del programa_26
    claveprograma = forms.ModelChoiceField(queryset=Cat_Programas.objects.all(),
                                           to_field_name='identPrograma',
                                           empty_label=u'-----',
                                           label=u'Clave del programa')
    # Clave del subprograma_25
    clavesubprograma = forms.ModelChoiceField(queryset=Cat_Subprogramas.objects.all(),
                                              label=u'Clave del subprograma',
                                              to_field_name='identSubprograma',
                                              empty_label=u'-----',
                                              required=False)
    # Tipo de apoyo_27
    tipoapoyo = forms.ModelChoiceField(queryset=Cat_TipoApoyo.objects.all(),
                                       empty_label=u'-----',
                                       label=u'Tipo de apoyo')
    # Beneficio_28
    beneficio = forms.CharField(max_length=250,
                                label=u'Beneficio')
    # Cantidad de beneficios_29
    cantbeneficios = forms.IntegerField(label=u'Cantidad de beneficios')
    # Total en pesos de los beneficios_30
    totalpesosbeneficios = forms.IntegerField(label=u'Total en pesos de los beneficios')
    # Inversion federal_31
    inversionfederal = forms.IntegerField(label=u'Inversión Federal')
    # Inversion estatal_32
    inversionestatal = forms.IntegerField(label=u'Inversión Estatal')
    # Inversion municipal_33
    inversionmunicipal = forms.IntegerField(label=u'Inversión Municipal')
    # Inversion de otras fuentes_34
    inversionotras = forms.IntegerField(label=u'Inversión de otras fuentes')
    # Fuentes que fondean el recurso_35
    fuentesrecurso = forms.ModelChoiceField(queryset=Cat_Fuentes.objects.all(),
                                            to_field_name='identFuentes',
                                            empty_label=u'-----',
                                            label=u'Fuentes que fondean el recurso')
    # Mes de periodo de pago_37
    mesperiodopago = forms.ModelChoiceField(queryset=Cat_Mes.objects.all(),
                                            empty_label=u'-----',
                                            label=u'Mes de periodo de pago')
    # Periodicidad de entrega del beneficio_39
    periodicidadentrega = forms.ModelChoiceField(queryset=Cat_Frecuencia.objects.all(),
                                                 empty_label=u'-----',
                                                 label=u'Periocidad de entrega')
    # Numero de la entrega del beneficio_40
    numentrega = forms.IntegerField(label='No. de entrega')


class formActores(forms.Form):

    SINO_CHOICES = (
        ('SI', 'SI'),
        ('NO', 'NO'),
    )

    registro = forms.IntegerField(label=u'Registro No.',
                                  widget=forms.HiddenInput)
    # 'Razón Social_1'
    razonsocial = forms.CharField(max_length='250')
    # 'Registro Federal de Contribuyentes_2'
    rfc = forms.CharField(min_length='13',
                    max_length='13',
                    label='R.F.C.')
    # 'Primer Apellido_3'
    primerapellido = forms.CharField(max_length=40,
                                     label=u'Primer Apellido')
    # 'Segundo Apellido_4'
    segundoapellido = forms.CharField(max_length=40,
                                      label=u'Segundo Apellido',
                                      required=False)
    # 'Nombre (s)_5'
    nombre = forms.CharField(max_length=40,
                             label=u'Nombre(s)')
    # 'CURP_6'
    curp = forms.CharField(max_length=18,
                           label=u'C.U.R.P.')
    # 'Sexo_7'
    sexo = forms.ModelChoiceField(queryset=Cat_Sexo.objects.all(),
                                  empty_label=u'-----',
                                  label=u'Sexo')
    # 'Estado de Nacimiento_8'
    estadonacimiento = forms.ModelChoiceField(queryset=Cat_Estados.objects.all(),
                                              empty_label=u'-----',
                                              label=u'Estado de Nacimiento',
                                              required=False)
    # 'Titular_9'
    titular = forms.ChoiceField(choices=SINO_CHOICES,
                                label=u'Titular')
    # 'Otro documento de identificación_10'
    otrodocto = forms.ModelChoiceField(queryset=Cat_Identificacion.objects.all(),
                                       label=u'Otro documento de identificación',
                                       required=False)
    # 'Clave Municipio donde se paga el beneficio_11'
    # 'Municipio donde se paga el beneficio_12'
    cvemunicipiopago = forms.ModelChoiceField(queryset=Cat_Municipio.objects.all(),
                                              to_field_name="identMunicipio",
                                              empty_label=u'----',
                                              label=u'Municipio donde se paga el beneficio')
    # 'Clave Localidad donde se paga el beneficio_13'
    # 'Localidad donde se paga el beneficio_14'
    localidadpago = forms.ModelChoiceField(queryset=Cat_Localidad.objects.all(),
                                           to_field_name="identLocalidad",
                                           empty_label=u'-----',
                                           label=u'Localidad donde se paga el beneficio')
    # 'Localidad de residencia actor social_15'
    localidadresidencia_as = forms.ModelChoiceField(queryset=Cat_Localidad.objects.all(),
                                           to_field_name="identLocalidad",
                                           empty_label=u'-----',
                                           label=u'Localidad de residencia del Actor Social')
    # 'Nombre de vialidad actor social_16'
    nombrevialidad_as = forms.CharField(max_length=40,
                                     label=u'Nombre de la vialidad del Actor Social')
    # 'Número Exterior actor social_17'
    numexterior_as = forms.CharField(max_length=5,
                                  required=False,
                                  label=u'Número exterior del Actor Social')
    # 'Número Interior actor social_18'
    numinterior_as = forms.CharField(max_length=5,
                                  required=False,
                                  label=u'Número interior del Actor Social')
    # 'Código Postal actor social_19'
    codigopostal_as = forms.CharField(max_length=5,
                                   label=u'Código Postal del Actor Social')
    # 'Referencia del domicilio actor social_20'
    referenciadomicilio_as = forms.CharField(max_length=250,
                                          required=False,
                                          label=u'Referencia del domicilio del Actor Social')
    # 'Localidad de residencia del integrante el actor social_21'
    localidadresidencia_int = forms.ModelChoiceField(queryset=Cat_Localidad.objects.all(),
                                           to_field_name="identLocalidad",
                                           empty_label=u'-----',
                                           label=u'Localidad de residencia del Integrante')
    # 'Nombre de vialidad integrante_22'
    nombrevialidad_int = forms.CharField(max_length=40,
                                     label=u'Nombre de la vialidad del Integrante')
    # 'Número Exterior integrante_23'
    numexterior_int = forms.CharField(max_length=5,
                                  required=False,
                                  label=u'Número exterior del Integrante')
    # 'Número Interior integrante_24'
    numinterior_int = forms.CharField(max_length=5,
                                  required=False,
                                  label=u'Número interior del Integrante')
    # 'Código Postal integrante_25'
    codigopostal_int = forms.CharField(max_length=5,
                                   label=u'Código Postal del Integrante')
    # 'Referencia del domicilio integrante_26'
    referenciadomicilio_int = forms.CharField(max_length=250,
                                          required=False,
                                          label=u'Referencia del domicilio del Integrante')
    # 'Dependencia que opera el programa_27'
    dependencia = forms.ModelChoiceField(queryset=Cat_Dependencias.objects.all(),
                                         to_field_name='nombreDependencia',
                                         empty_label=u'-----',
                                         label=u'Dependencia que opera el programa')
    # 'Clave del programa_28'
    # 'Nombre del programa_30'
    claveprograma = forms.ModelChoiceField(queryset=Cat_Programas.objects.all(),
                                           to_field_name='identPrograma',
                                           empty_label=u'-----',
                                           label=u'Clave del programa')
    # 'Clave del subprograma_29'
    clavesubprograma = forms.ModelChoiceField(queryset=Cat_Subprogramas.objects.all(),
                                              label=u'Clave del subprograma',
                                              to_field_name='identSubprograma',
                                              empty_label=u'-----',
                                              required=False)
    # 'Tipo de apoyo_31'
    tipoapoyo = forms.ModelChoiceField(queryset=Cat_TipoApoyo.objects.all(),
                                       empty_label=u'-----',
                                       label=u'Tipo de apoyo')
    # 'Beneficio_32'
    beneficio = forms.CharField(max_length=250,
                                label=u'Beneficio')
    # 'Cantidad de beneficios_33'
    cantbeneficios = forms.IntegerField(label=u'Cantidad de beneficios')
    # 'Total en pesos de los beneficios_34'
    totalpesosbeneficios = forms.IntegerField(label=u'Total en pesos de los beneficios')
    # 'Inversión federal_35'}
    inversionfederal = forms.IntegerField(label=u'Inversión Federal')
    # 'Inversión estatal_36'
    inversionestatal = forms.IntegerField(label=u'Inversión Estatal')
    # 'Inversión municipal_37'
    inversionmunicipal = forms.IntegerField(label=u'Inversión Municipal')
    # 'Inversión de otras fuentes_38'
    inversionotras = forms.IntegerField(label=u'Inversión de otras fuentes')
    # 'Fuentes que fondean el recurso_39'
    fuentesrecurso = forms.ModelChoiceField(queryset=Cat_Fuentes.objects.all(),
                                            to_field_name='identFuentes',
                                            empty_label=u'-----',
                                            label=u'Fuentes que fondean el recurso')
    # 'Mes de periodo de pago_41'
    mesperiodopago = forms.ModelChoiceField(queryset=Cat_Mes.objects.all(),
                                            empty_label=u'-----',
                                            label=u'Mes de periodo de pago')
    # 'Periodicidad de entrega del beneficio_43'
    periodicidadentrega = forms.ModelChoiceField(queryset=Cat_Frecuencia.objects.all(),
                                                 empty_label=u'-----',
                                                 label=u'Periocidad de entrega')
    # 'Número de la entrega del beneficio_44'
    numentrega = forms.IntegerField(label='No. de entrega')