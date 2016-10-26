from django.db import models

# Create your models here.
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

class Cat_Fuentes():
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
        return '%s %s' % (self.identIdentificacion, self.nombreIdentificacion)

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
    idLocalidad = models.ForeignKey(Cat_Municipio)

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
     nombreDependencia = models.CharField(max_length=60)

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
        return self.nombrePeriodo

class Cat_Mes(models.Model):
    nombreMes = models.CharField(max_length=12)

    def __unicode__(self):
        return self.nombreMes

class Cat_Frecuencia(models.Model):
    identFrecuencia = models.CharField(max_length=2)
    nombreFrecuencia = models.CharField(max_length=15)
    descripFrecuencia = models.CharField (max_length=45)

    def __unicode__(self):
        return self.nombreMes

class Formato_PUB_Actor(models.Model):
    Razon_Social_1 = models.CharField(max_length=20)
    Registro_Federal_de_Contribuyentes_2  = models.CharField(max_length=13)
    Primer_Apellido_3 = models.CharField(max_length=20)
    Segundo_Apellido_4 = models.CharField(max_length=20)
    Nombre_s_5 = models.CharField(max_length=20)
    CURP_6 = models.CharField(max_length=18)
    Sexo_7 = models.ForeignKey(Cat_Sexo)
    Estado_de_Nacimiento_8 = models.ForeignKey(Cat_Estados)
    Titular_9 = models.CharField(max_length=1, )
    Otro_documento_de_identificacion_10 = models.ForeignKey(Cat_Identificacion)
    #Clave_Municipio_donde_se_paga_el_beneficio_11 = models.ForeignKey(Cat_Municipio)
    Municipio_donde_se_paga_el_beneficio_12 = models.ForeignKey(Cat_Municipio)
    #Clave_Localidad_donde_se_paga_el_beneficio_13 = models.ForeignKey(Cat_Localidad)
    Localidad_donde_se_paga_el_beneficio_14 = models.ForeignKey(Cat_Localidad)

    Localidad_de_residencia_actor_social_15 = models.ForeignKey(Cat_Localidad)
    Nombre_de_vialidad_actor_social_16 = models.CharField(max_length=20)
    Numero_Exterior_actor_social_17 = models.CharField(max_length=5)
    Numero_Interior_actor_social_18 = models.CharField(max_length=5)
    Codigo_Postal_actor_social_19 = models.CharField(max_length=5)
    Referencia_del_domicilio_actor_social_20 = models.CharField(max_length=60)
    Localidad_de_residencia_del_integrante_el_actor_social_21 = models.ForeignKey(Cat_Localidad)

    Nombre_de_vialidad_integrante_22 = models.CharField(max_length=20)
    Numero_Exterior_integrante_23 = models.CharField(max_length=5)
    Numero_Interior_integrante_24 = models.CharField(max_length=5)
    Codigo_Postal_integrante_25 = models.CharField(max_length=5)
    Referencia_del_domicilio_integrante_26 = models.CharField(max_length=60)

    Dependencia_que_opera_el_programa_27 = models.ForeignKey(Cat_Dependencias)
    Clave_del_programa_28 = models.ForeignKey(Cat_Programas)
    Clave_del_subprograma_29 = models.ForeignKey(Cat_Subprogramas)
    #Nombre_del_programa_30 = models.CharField(max_length=20)
    Tipo_de_apoyo_31 = models.ForeignKey(Cat_TipoApoyo)
    Beneficio_32 = models.CharField(max_length=35)
    Cantidad_de_beneficios_33 = models.IntegerField
    Total_en_pesos_de_los_beneficios_34 = models.IntegerField
    Inversion_federal_35 = models.IntegerField
    Inversion_estatal_36 = models.IntegerField
    Inversion_municipal_37 = models.IntegerField
    Inversion_de_otras_fuentes_38 = models.IntegerField

    Fuentes_que_fondean_el_recurso_39 = models.CharField(max_length=20)
    Trimestre_40 = models.CharField(max_length=20)
    Mes_de_periodo_de_pago_41 = models.CharField(max_length=20)
    Anio_de_ejercicio_42 = models.CharField(max_length=20)
    Periodicidad_de_entrega_del_beneficio_43 = models.CharField(max_length=20)
    Numero_de_la_entrega_del_beneficio_44 = models.CharField(max_length=20)