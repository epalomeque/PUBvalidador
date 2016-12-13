from django import forms
from django.contrib.auth.models import User
from django.forms import ModelForm
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

    registro = forms.IntegerField(label='Registro No.')
    # Multilocalidad_1
    multilocalidad = forms.ChoiceField(choices=SINO_CHOICES, label='Multilocalidad')
    # Registro Federal de Contribuyentes_2
    rfc = forms.CharField(max_length='13', label='R.F.C.')
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
    municipiobeneficiado = forms.ModelChoiceField(queryset=Cat_Municipio.objects.all(), empty_label="(Ninguno)", label='Municipio')
    # Clave Localidad donde se encuentra la obra_9
    # Localidad donde se encuentra la obra_10
    localidadbeneficiada = forms.ModelChoiceField(queryset=Cat_Localidad.objects.all(), empty_label="(Ninguno)", label='Localidad')
    # Asentamiento humano_11
    asentamiento = forms.ModelChoiceField(queryset=Cat_Asentamiento.objects.all(), label='Tipo de asentamiento')
    # Nombre vialidad_12
    nombrevialidad = forms.CharField(max_length=250)
    # Numero Exterior_13
    numeroexterior = forms.CharField(max_length=5)
    # Numero Interior_14
    numerointerior = forms.CharField(max_length=5)
    # Codigo Postal_15
    codigopostal = forms.CharField(max_length=5)
    # Referencia del domicilio_16
    referenciadomicilio = forms.CharField(max_length=250)
    # Dependencia que opera el programa_17
    dependencia = forms.ModelChoiceField(queryset=Cat_Dependencias.objects.all())
    # Clave del programa_18
    # Nombre del programa_20
    claveprograma = forms.ModelChoiceField(queryset=Cat_Programas.objects.all())
    # Clave del subprograma_19
    clavesubprograma = forms.ModelChoiceField(queryset=Cat_Subprogramas.objects.all())
    # Tipo de apoyo_21
    tipoapoyo = forms.ModelChoiceField(queryset=Cat_TipoApoyo.objects.all())
    # Identificador de la Obra_22
    idobra = forms.CharField(max_length=15)
    # Descripcion de la Obra_23
    descripcionobra = forms.Textarea()
    # Cantidad de beneficios_24
    cantbeneficios = forms.IntegerField()
    # Total en pesos de los beneficios_25
    totalpesosbeneficios = forms.IntegerField()
    # Inversion federal_26
    inversionfederal = forms.IntegerField()
    # Inversion estatal_27
    inversionestatal = forms.IntegerField()
    # Inversion municipal_28
    inversionmunicipal = forms.IntegerField()
    # Inversion de otras fuentes_29
    inversionotras = forms.IntegerField()
    # Fuentes que fondean el recurso_30
    fuentesrecurso = forms.ModelChoiceField(queryset=Cat_Fuentes.objects.all())
    # Trimestre_31
    #Trimestre = models.ForeignKey(Cat_Periodos)
    # Anio de ejercicio_32
    #AnioEjercicio = models.ForeignKey(Cat_AnioEjercicio)
    # Fecha Inicio_33
    fechainicio = forms.DateField(widget=SelectDateWidget(empty_label="Nothing"))
    # Fecha Fin_34
    fechafin = forms.DateField()
    # Periodicidad de entrega del beneficio_35
    periodicidadentrega = forms.ModelChoiceField(queryset=Cat_Frecuencia.objects.all())
    # Numero de la entrega del beneficio_36
    numeroentregabeneficio = forms.IntegerField()