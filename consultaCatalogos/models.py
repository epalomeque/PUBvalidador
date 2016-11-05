from django.db import models
from django.contrib.auth.models import User


# Create your models here.
class Cat_AnioEjercicio(models.Model):
    AnioEjercicio = models.CharField(max_length=4, default='')

    def __unicode__(self):  # __str__ en Python 3
        return self.AnioEjercicio


class Cat_Sexo(models.Model):
    identSexo = models.CharField(max_length=1)
    nombreSexo = models.CharField(max_length=10)

    def __unicode__(self):  # __str__ en Python 3
        return self.nombreSexo


class Cat_TipoApoyo(models.Model):
    identTipoApoyo = models.CharField(max_length=2)
    nombreTipoApoyo = models.CharField(max_length=10)

    def __unicode__(self):
        return self.nombreTipoApoyo


class Cat_Fuentes(models.Model):
    identFuentes = models.CharField(max_length=3)
    descripcionFuentes = models.CharField(max_length=35)

    def __unicode__(self):
        return self.descripcionFuentes


class Cat_Edocivil(models.Model):
    identEdoCivil = models.CharField(max_length=2)
    nombreEdoCivil = models.CharField(max_length=14)

    def __unicode__(self):
        return self.nombreEdoCivil


class Cat_Parentesco(models.Model):
    identParentesco = models.CharField(max_length=2)
    nombreParentesco = models.CharField(max_length=20)

    def __unicode__(self):
        return self.nombreParentesco


class Cat_Identificacion(models.Model):
    identIdentificacion = models.CharField(max_length=2)
    nombreIdentificacion = models.CharField(max_length=70)

    def __unicode__(self):
        return '%s | %s' % (self.identIdentificacion, self.nombreIdentificacion)


class Cat_Estados(models.Model):
    identEstado = models.IntegerField()
    nombreEstado = models.CharField(max_length=25)

    def __unicode__(self):
        return self.nombreEstado


class Cat_Municipio(models.Model):
    identMunicipio = models.IntegerField()
    nombreMunicipio = models.CharField(max_length=25)
    idEstado = models.ForeignKey(Cat_Estados)

    def __unicode__(self):
        return self.nombreMunicipio


class Cat_Localidad(models.Model):
    identLocalidad = models.IntegerField()
    nombreLocalidad = models.CharField(max_length=50)
    idMunicipio = models.ForeignKey(Cat_Municipio)

    def __unicode__(self):
        return self.nombreLocalidad


class Cat_CodigoPostal(models.Model):
    claveCP = models.IntegerField()
    idLocalidad = models.ForeignKey(Cat_Localidad)

    def __unicode__(self):
        return self.claveCP


class Cat_Asentamiento(models.Model):
    identAsentamiento = models.IntegerField()
    nombreAsentamiento = models.CharField(max_length=50)

    def __unicode__(self):
        return self.nombreAsentamiento


class Cat_Dependencias(models.Model):
     identDependencia = models.CharField(max_length=2)
     nombreDependencia = models.CharField(max_length=150)

     def __unicode__(self):
         return self.nombreDependencia


class Cat_Programas(models.Model):
    identPrograma = models.CharField(max_length=10)
    nombrePrograma = models.CharField(max_length=80)
    descripPrograma = models.TextField(blank=True)

    def __unicode__(self):
        return self.nombrePrograma


class Cat_Subprogramas(models.Model):
    identSubprograma = models.CharField(max_length=10)
    nombreSubPrograma = models.CharField(max_length=80)
    descripSubprograma = models.TextField(blank=True)
    idPrograma = models.ForeignKey(Cat_Programas)

    def __unicode__(self):
        return self.nombreSubprograma


class Cat_Periodos(models.Model):
    identPeriodo = models.CharField(max_length=2)
    nombrePeriodo = models.CharField(max_length=20)

    def __unicode__(self):
        return '%s | %s' % (self.identPeriodo, self.nombrePeriodo)


class Cat_Mes(models.Model):
    nombreMes = models.CharField(max_length=12)

    def __unicode__(self):
        return self.nombreMes


class Cat_Frecuencia(models.Model):
    identFrecuencia = models.CharField(max_length=2)
    nombreFrecuencia = models.CharField(max_length=15)
    descripFrecuencia = models.CharField (max_length=45, blank=True)

    def __unicode__(self):
        return self.nombreFrecuencia


class Cat_TipoPadron(models.Model):
    nombrePadron = models.CharField(max_length=10)

    def __unicode__(self):
        return self.nombrePadron


# Modelos del PUB
class FormatoPubActor(models.Model):
    # Razon Social_1
    RazonSocial = models.CharField(max_length=20)
    # Registro Federal de Contribuyentes_2
    RFC = models.CharField(max_length=13)
    # Primer Apellido_3
    PrimerApellido = models.CharField(max_length=20)
    # Segundo Apellido_4
    SegundoApellido = models.CharField(max_length=20, blank=True)
    # Nombre(s)_5
    Nombre = models.CharField(max_length=20)
    # CURP_6
    CURP = models.CharField(max_length=18)
    # Sexo_7
    Sexo = models.ForeignKey(Cat_Sexo)
    # Estado de Nacimiento_8
    EdoNacimiento = models.ForeignKey(Cat_Estados, blank=True)
    # Titular_9
    Titular = models.CharField(max_length=1)
    # Otro documento de identificacion_10
    OtroDocId = models.ForeignKey(Cat_Identificacion, blank=True)
    # Clave Municipio donde se paga el beneficio_11
    # Municipio donde se paga el beneficio_12
    MunDondeSePagaBeneficio = models.ForeignKey(Cat_Municipio)
    # Clave Localidad donde se paga el beneficio_13
    # Localidad donde se paga el beneficio_14
    LocDondeSePagaBeneficio = models.ForeignKey(Cat_Localidad, related_name='Localidad_Pago_Beneficio', default='')
    # Localidad de residencia actor social_15
    LocResidActorSocial = models.ForeignKey(Cat_Localidad, related_name='Localidad_Actor', default='')
    # Nombre de vialidad actor social_16
    NombreVialidadActor = models.CharField(max_length=20)
    # Numero Exterior actor social_17
    NumeroExtActor = models.CharField(max_length=5, blank=True)
    # Numero Interior actor social_18
    NumeroIntActor = models.CharField(max_length=5, blank=True)
    # Codigo Postal actor social_19
    CodigoPostalActor = models.CharField(max_length=5)
    # Referencia del domicilio actor social_20
    RefDomActor = models.CharField(max_length=60, blank=True)
    # Localidad de residencia del integrante el actor social_21
    LocResidDelIntegrante = models.ForeignKey(Cat_Localidad, related_name='Localidad_Integrante', default='')
    # Nombre de vialidad integrante_22
    NombreVialidadIntegrante = models.CharField(max_length=20)
    # Numero Exterior integrante_23
    NumeroExtIntegrante = models.CharField(max_length=5, blank=True)
    # Numero Interior integrante_24
    NumeroIntIntegrante = models.CharField(max_length=5, blank=True)
    # Codigo Postal integrante_25
    CodigoPostalIntegrante = models.CharField(max_length=5)
    # Referencia del domicilio integrante_26
    RefDomicilioIntegrante = models.CharField(max_length=60, blank=True)
    # Dependencia que opera el programa_27
    Dependencia = models.ForeignKey(Cat_Dependencias)
    # Clave del programa_28
    # Nombre del programa_30
    ClavePrograma = models.ForeignKey(Cat_Programas)
    # Clave del subprograma_29
    ClaveSubprograma = models.ForeignKey(Cat_Subprogramas, blank=True)
    # Tipo de apoyo_31
    TipoApoyo = models.ForeignKey(Cat_TipoApoyo)
    # Beneficio_32
    Beneficio = models.CharField(max_length=35)
    # Cantidad de beneficios_33
    CantBeneficios = models.IntegerField
    # Total en pesos de los beneficios_34
    TotalPesosBeneficios = models.IntegerField
    # Inversion federal_35
    InversionFederal = models.IntegerField
    # Inversion estatal_36
    InversionEstatal = models.IntegerField
    # Inversion municipal_37
    InversionMunicipal = models.IntegerField
    # Inversion de otras fuentes_38
    InversionOtras = models.IntegerField
    # Fuentes que fondean el recurso_39
    FuentesRecurso = models.ForeignKey(Cat_Fuentes)
    # Trimestre_40
    Trimestre = models.ForeignKey(Cat_Periodos)
    # Mes de periodo de pago_41
    MesPeriodoPago = models.ForeignKey(Cat_Mes)
    # Anio de ejercicio_42
    AnioEjercicio = models.ForeignKey(Cat_AnioEjercicio)
    # Periodicidad de entrega del beneficio_43
    PeriodicidadEntregaBeneficio = models.ForeignKey(Cat_Frecuencia)
    # Numero de la entrega del beneficio_44
    NumeroEntregaBeneficio = models.IntegerField


class FormatoPubPersona(models.Model):
    Trimestre = models.ForeignKey(Cat_Periodos)
    # Mes de periodo de pago_41
    MesPeriodoPago = models.ForeignKey(Cat_Mes)
    # Anio de ejercicio_42
    AnioEjercicio = models.ForeignKey(Cat_AnioEjercicio)
    # Periodicidad de entrega del beneficio_43
    PeriodicidadEntregaBeneficio = models.ForeignKey(Cat_Frecuencia)


class FormatoPubPoblacion(models.Model):
    Trimestre = models.ForeignKey(Cat_Periodos)
    # Mes de periodo de pago_41
    MesPeriodoPago = models.ForeignKey(Cat_Mes)
    # Anio de ejercicio_42
    AnioEjercicio = models.ForeignKey(Cat_AnioEjercicio)
    # Periodicidad de entrega del beneficio_43
    PeriodicidadEntregaBeneficio = models.ForeignKey(Cat_Frecuencia)


# Modelos del validador
class EstatusTrabajos(models.Model):
    nombreEstatus = models.CharField(max_length=20, default='')

    def __unicode__(self):
        return self.nombreEstatus


class TrabajosRealizados(models.Model):
    archivoRelacionado = models.FileField(upload_to='csv/%Y/%m/%d')
    Estatus = models.ForeignKey(EstatusTrabajos)
    Usuario = models.ForeignKey(User)
    FechaInicio = models.DateTimeField(auto_now_add=True)
    UltimaActualizacion = models.DateField(auto_now=True)
    TipoPadron = models.ForeignKey(Cat_TipoPadron, default='')
    AnioEjercicio = models.ForeignKey(Cat_AnioEjercicio, default='')
    Trimestre = models.ForeignKey(Cat_Periodos, default='')
    CantidadRegistros = models.IntegerField(default=0)
    JsonTrabajo = models.TextField(blank=True, default='')

    def __unicode__(self):
        return 'ID: %s | Archivo: %s | Usuario: %s' % (self.pk, self.archivoRelacionado, self.Usuario)