#!/usr/bin/env python
# -*- coding: utf-8 -*-

import codecs
#import unicodecsv as csv
import csv
import sys
from django.utils.encoding import smart_text, smart_unicode
#from django.utils import timezone
#from consultaCatalogos.models import FormatoPubActor, FormatoPubPoblacion, FormatoPubPersona


formato_actores = {
    'cantColumnas': 44,
    'nombre_cols': [
        u"Razón Social_1",
        u"Registro Federal de Contribuyentes_2",
        u"Primer Apellido_3",
        u"Segundo Apellido_4",
        u"Nombre (s)_5",
        u"CURP_6",
        u"Sexo_7",
        u"Estado de Nacimiento_8",
        u"Titular_9",
        u"Otro documento de identificación_10",
        u"Clave Municipio donde se paga el beneficio_11",
        u"Municipio donde se paga el beneficio_12",
        u"Clave Localidad donde se paga el beneficio_13",
        u"Localidad donde se paga el beneficio_14",
        u"Localidad de residencia actor social_15",
        u"Nombre de vialidad actor social_16",
        u"Número Exterior actor social_17",
        u"Número Interior actor social_18",
        u"Código Postal actor social_19",
        u"Referencia del domicilio actor social_20",
        u"Localidad de residencia del integrante el actor social_21",
        u"Nombre de vialidad integrante_22",
        u"Número Exterior integrante_23",
        u"Número Interior integrante_24",
        u"Código Postal integrante_25",
        u"Referencia del domicilio integrante_26",
        u"Dependencia que opera el programa_27",
        u"Clave del programa_28",
        u"Clave del subprograma_29",
        u"Nombre del programa_30",
        u"Tipo de apoyo_31",
        u"Beneficio_32",
        u"Cantidad de beneficios_33",
        u"Total en pesos de los beneficios_34",
        u"Inversión federal_35",
        u"Inversión estatal_36",
        u"Inversión municipal_37",
        u"Inversión de otras fuentes_38",
        u"Fuentes que fondean el recurso_39",
        u"Trimestre_40",
        u"Mes de periodo de pago_41",
        u"Año de ejercicio_42",
        u"Periodicidad de entrega del beneficio_43",
        u"Número de la entrega del beneficio_44"
    ]
}

formato_poblacion = {
    'cantColumnas': 36,
    'nombrecols':[
        u"Multilocalidad_1",
        u"Registro Federal de Contribuyentes_2",
        u"Número beneficiados_3",
        u"Hombres beneficiados_4",
        u"Mujeres beneficiadas_5",
        u"Viviendas beneficiadas_6",
        u"Clave Municipio donde se encuentra la obra_7",
        u"Municipio donde se encuentra la obra_8",
        u"Clave Localidad donde se encuentra la obra_9",
        u"Localidad donde se encuentra la obra_10 Asentamiento humano_11",
        u"Nombre vialidad_12",
        u"Número Exterior_13",
        u"Número Interior_14",
        u"Código Postal_15",
        u"Referencia del domicilio_16",
        u"Dependencia que opera el programa_17",
        u"Clave del programa_18",
        u"Clave del subprograma_19",
        u"Nombre del programa_20",
        u"Tipo de apoyo_21",
        u"Identificador de la Obra_22",
        u"Descripción de la Obra_23",
        u"Cantidad de beneficios_24",
        u"Total en pesos de los beneficios_25",
        u"Inversión federal_26",
        u"Inversión estatal_27",
        u"Inversión municipal_28",
        u"Inversión de otras fuentes_29",
        u"Fuentes que fondean el recurso_30",
        u"Trimestre_31",
        u"Año de ejercicio_32",
        u"Fecha Inicio_33",
        u"Fecha Fin_34",
        u"Periodicidad de entrega del beneficio_35",
        u"Número de la entrega del beneficio_36"
    ]
}

formato_personas = {
    'cantColumnas': 40,
    'nombrecols':[
        u"Identificador de Hogar_1",
        u"Identificador de Persona_2",
        u"Primer Apellido_3",
        u"Segundo Apellido _4",
        u"Nombre (s)_5",
        u"CURP_6",
        u"Sexo_7",
        u"Estado Civil_8",
        u"Titular_9",
        u"Parentesco del Beneficiario con el Jefe del Hogar_10",
        u"Otro documento de identificación_11",
        u"Clave Municipio donde se paga el beneficio_12",
        u"Municipio donde se paga el beneficio_13",
        u"Clave Localidad donde se paga el beneficio_14",
        u"Localidad donde se paga el beneficio_15",
        u"Localidad de Residencia_16",
        u"Nombre de vialidad_17",
        u"Número Exterior_18",
        u"Número Interior _19",
        u"Código Postal_20",
        u"Asentamiento humano_21",
        u"Referencia del domicilio_22",
        u"Dependencia que opera el programa_23",
        u"Clave del programa_24",
        u"Clave del subprograma_25",
        u"Nombre del programa_26",
        u"Tipo de apoyo_27",
        u"Beneficio_28",
        u"Cantidad de beneficios_29",
        u"Total en pesos de los beneficios_30",
        u"Inversión federal_31",
        u"Inversión estatal_32",
        u"Inversión municipal_33",
        u"Inversión de otras fuentes_34",
        u"Fuentes que fondean el recurso_35",
        u"Trimestre_36",
        u"Mes de periodo de pago_37",
        u"Año de ejercicio_38",
        u"Periodicidad de entrega del beneficio_39",
        u"Número de la entrega del beneficio_40",
    ]
}


def import_csv(filename):
    print 'Default Encoding => ' + sys.getdefaultencoding()
    f = codecs.open(filename, 'r')
    print 'f.encoding => ' + str(f.encoding)
    registros = csv.reader(f, dialect='excel', delimiter=',')
    recordsDicc = csv.DictReader(f, dialect='excel', delimiter=',')
    encabezados = registros.next()

    datos = {
        'encabezados': encabezados,
        'registros': recordsDicc
    }

    return datos


def total_headers(headers):
    cuenta = 0
    for celdas in headers:
        if celdas <> '':
            cuenta+=1
    return cuenta


def son_iguales(valor1, valor2):
    return (valor1 == valor2)


def CantColumnasCorrecta(CantidadColumnas, CantidadTemplate):
    if son_iguales(CantidadColumnas, CantidadTemplate):
        valor = True
    else:
        valor = False
    return valor


def OrdenColumnasCorrecto(ListaColumnas, FormatoPadron):
    print 'Formato de Padron => ' + str(FormatoPadron) + ' :: Tipo => ' + str(type(FormatoPadron))
    print 'Lista de Columnas = > ' + str(ListaColumnas) + ' :: Tipo => ' + str(type(ListaColumnas))
    ListaColumnasUtf8 = list()
    for elemento in ListaColumnas:
        if not son_iguales(elemento, ''):
            print 'elemento => ' + elemento + ' :: Tipo => ' + str(type(elemento))
            elementoutf8 = elemento.decode("utf_8_sig", "replace")
            print 'elementoUtf8 => ' + elementoutf8 + ' :: Tipo => ' + str(type(elementoutf8))
            ListaColumnasUtf8.append(elementoutf8)

    print 'ListaColumnasUtf8 => ' + str(ListaColumnasUtf8)

    for nombre in FormatoPadron:
        nombreutf8 = nombre.encode('utf-8')
        iguales = True
        if nombreutf8 in ListaColumnasUtf8:
            iguales = True and iguales
            print nombreutf8 + ' :: Iguales => ' + str(iguales) + ' :: Tipo => ' + str(type(nombreutf8))
        else:
            iguales = False and iguales
            print nombreutf8 + ' :: Iguales => ' + str(iguales) + ' :: Tipo => ' + str(type(nombreutf8))

    return iguales


def EstructuraArchivoEsValida(lista_Columnas, tipo_padron):
    # Elegir que tipo de padron se va a revisar
    if tipo_padron == 1:
        formato = formato_actores
    elif tipo_padron == 2:
        formato = formato_personas
        print 'Padron Personas'
    elif tipo_padron == 3:
        formato = formato_poblacion

    ValidacionTotalColumnas = CantColumnasCorrecta(total_headers(lista_Columnas), formato["cantColumnas"])
    ValidacionOrdenColumnas = False

    OrdenColumnasCorrecto(lista_Columnas, formato["nombrecols"])

    if ValidacionTotalColumnas and ValidacionOrdenColumnas:
        validacion = True
    else:
        validacion = False

    return validacion


def validar_anio(anio, registros):

    return anio

def validar_trimestre(trimestre, registros):
    return trimestre
