#!/usr/bin/env python
# -*- coding: utf-8 -*-

# import codecs
import unicodecsv as csv
from forms import SignUpForm, nuevoTrabajoForm, formPoblacion
from django.utils.encoding import smart_text, smart_unicode, smart_bytes, smart_str, force_text
import json
from models import FormatoPubPersona, FormatoPubActor, FormatoPubPoblacion

# import csv
import sys

# from django.utils import timezone
# from consultaCatalogos.models import FormatoPubActor, FormatoPubPoblacion, FormatoPubPersona


formato_actores = {
    'nombrePadron':u'Actor',
    'cantColumnas': 44,
    'nombreCols': [
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
        u"Número de la entrega del beneficio_44",
    ]
}

formato_poblacion = {
    'nombrePadron':u'Población',
    'cantColumnas': 36,
    'nombreCols':[
        u"Multilocalidad_1",
        u"Registro Federal de Contribuyentes_2",
        u"Número beneficiados_3",
        u"Hombres beneficiados_4",
        u"Mujeres beneficiadas_5",
        u"Viviendas beneficiadas_6",
        u"Clave Municipio donde se encuentra la obra_7",
        u"Municipio donde se encuentra la obra_8",
        u"Clave Localidad donde se encuentra la obra_9",
        u"Localidad donde se encuentra la obra_10",
        u"Asentamiento humano_11",
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
        u"Número de la entrega del beneficio_36",
    ]
}

formato_personas = {
    'nombrePadron':u'Persona',
    'cantColumnas': 40,
    'nombreCols':[
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
    ElEncoding = 'cp1252' # el encoding usado por windows1252
    f = open(filename, 'rb')
    # obteniendo los nombres de las columnas, y limpiando los textos
    registros = csv.reader(f, dialect='excel', delimiter=',', encoding=ElEncoding)
    headers = registros.next()

    encabezados = list()
    for nombres in headers:
        nombres = nombres.strip((' \t\n\r'))
        if nombres <> '':
            encabezados.append(nombres)

    diccionario = {}
    registrosDicc = list()
    i=0

    for registro in registros:
        i = i + 1
        diccionario['num_record'] = i
        for celda, nombre in zip(registro, encabezados):
            diccionario[nombre] = {'valor':celda,'esvalido':False, 'descrip':''}
        registrosDicc.append(diccionario)
        diccionario = {}
        # print registrosDicc

    datos = {
        'encabezados': encabezados,
        'registros': registrosDicc
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


def OrdenColumnasCorrecto(HeadersArchivo, FormatoPadron):
    iguales = True
    for nomArchivo, nomFormato in zip(HeadersArchivo, FormatoPadron):
        if son_iguales(nomArchivo.encode('utf-8'), nomFormato.encode('utf-8')):
            iguales = iguales and True
            #print nomArchivo.encode('utf-8') + ' :: ' + nomFormato.encode('utf-8') + ' => Iguales'
        else:
            iguales = iguales and False
            #print nomArchivo.encode('utf-8') + ' :: ' + nomFormato.encode('utf-8') + ' => No Iguales'
    return iguales


def seleccionarTipoPadron(tipo_padron):
    # Elegir que tipo de padron se va a revisar
    if tipo_padron == 1:
        formato = formato_actores
    elif tipo_padron == 2:
        formato = formato_personas
    elif tipo_padron == 3:
        formato = formato_poblacion
    else:
        print 'Formato de padron no definido'
    return formato


def obtenerCampoAnio(formato):
    nombreCampo = ''
    # print formato.get('nombrePadron')
    if formato['nombrePadron'] == u'Actor':
        nombreCampo = formato['nombreCols'].pop(41)
    elif formato['nombrePadron'] == u'Población':
        nombreCampo = formato['nombreCols'].pop(31)
    elif formato['nombrePadron'] == u'Persona':
        nombreCampo = formato['nombreCols'].pop(37)
    else:
        nombreCampo = 'Error'
    return nombreCampo


def obtenerCampoTrimestre(formato):
    nombreCampo = ''
    #print formato.get('nombrePadron')
    if formato['nombrePadron'] == u'Actor':
        nombreCampo = formato['nombreCols'].pop(39)
    elif formato['nombrePadron'] == u'Población':
        nombreCampo = formato['nombreCols'].pop(30)
    elif formato['nombrePadron'] == u'Persona':
        nombreCampo = formato['nombreCols'].pop(35)
    else:
        nombreCampo = 'Error'
    return nombreCampo


def EstructuraArchivoEsValida(lista_Columnas, tipo_padron):
    #print 'Estructura Archivos iniciado - ' * 3
    formato = seleccionarTipoPadron(tipo_padron)
    #print lista_Columnas
    #print tipo_padron
    #print formato

    ValidacionTotalColumnas = CantColumnasCorrecta(total_headers(lista_Columnas), formato["cantColumnas"])
    #print ValidacionTotalColumnas
    ValidacionOrdenColumnas = OrdenColumnasCorrecto(lista_Columnas, formato["nombreCols"])
    #print ValidacionOrdenColumnas

    if ValidacionTotalColumnas and ValidacionOrdenColumnas:
        validacion = True
    else:
        validacion = False

    return validacion


def ErroresColumnaAnio(anio, registros, tipo_padron):
    # print '*ErroresColumnaAnio' * 10
    formato = seleccionarTipoPadron(tipo_padron)
    campo = obtenerCampoAnio(formato)

    errores = 0

    for registro in registros:
        if not(str(registro[campo]['valor']) == str(anio)):
            # print registro[campo]['valor']
            errores += 1
        else:
            registro[campo]['esvalido'] = True
            # print registro[campo]['esvalido']
    # print '*' * 50
    return errores


def ErroresColumnaTrimestre(trimestre, registros, tipo_padron):
    # print '*ErroresColumnaTrimestre'*10
    formato = seleccionarTipoPadron(tipo_padron)
    campo = obtenerCampoTrimestre(formato)

    errores = 0

    for registro in registros:
        if not(str(registro[campo]['valor'].upper()) == str(trimestre.upper())):
            # print registro[campo]
            errores += 1
        else:
            registro[campo]['esvalido'] = True
            # print registro[campo]['esvalido']

    # print '*' * 50

    return errores


def ErroresIniciales(registros, TipoPadron_id, AnioEjercicio, TrimestreIdent):
    valor = True
    errores_anio = ErroresColumnaAnio(AnioEjercicio, registros, TipoPadron_id)
    errores_trimestre = ErroresColumnaTrimestre(TrimestreIdent, registros, TipoPadron_id)

    if errores_anio and errores_trimestre:
        valor = True
    else:
        valor = False

    return valor


def ObtenDatosEnLista(registros, TipoPadron_id):
    datos_lista = list()
    if TipoPadron_id == 1:
        print 1
    if TipoPadron_id == 2:
        print 2
    if TipoPadron_id == 3:
        for registro in registros:
            dato_form = formPoblacion( {
                'registro': registro.get(u'num_record'),
                'multilocalidad': registro.get(u'Multilocalidad_1').get(u'valor'),
                'rfc': registro.get(u'Registro Federal de Contribuyentes_2').get(u'valor'),
                'numerobeneficiados': registro.get(u'Número beneficiados_3').get(u'valor'),
                'hombresbeneficiados': registro.get(u'Hombres beneficiados_4').get(u'valor'),
                'mujeresbeneficiadas': registro.get(u'Mujeres beneficiadas_5').get(u'valor'),
                'viviendasbeneficiadas': registro.get(u'Viviendas beneficiadas_6').get(u'valor'),
                #'municipiobeneficiado': registro.get(u'Municipio donde se encuentra la obra_8').get(u'valor'),
                'municipiobeneficiado': int(registro.get(u'Clave Municipio donde se encuentra la obra_7').get(u'valor')),
                #'localidadbeneficiada': registro.get(u'Localidad donde se encuentra la obra_10').get(u'valor'),
                'localidadbeneficiada': int(registro.get(u'Clave Localidad donde se encuentra la obra_9').get(u'valor')),
                'asentamiento': registro.get(u'Asentamiento humano_11').get(u'valor'),
                'nombrevialidad': registro.get(u'Nombre vialidad_12').get(u'valor'),
                'numeroexterior': registro.get(u'Número Exterior_13').get(u'valor'),
                'numerointerior': registro.get(u'Número Interior_14').get(u'valor'),
                'codigopostal': registro.get(u'Código Postal_15').get(u'valor'),
                'referenciadomicilio': registro.get(u'Referencia del domicilio_16').get(u'valor'),
                'dependencia': smart_bytes(registro.get(u'Dependencia que opera el programa_17').get(u'valor')),
                'claveprograma': registro.get(u'Nombre del programa_20').get(u'valor'),
                'clavesubprograma': registro.get(u'Clave del subprograma_19').get(u'valor'),
                'tipoapoyo': smart_bytes(registro.get(u'Tipo de apoyo_21').get(u'valor')),
                'idobra': registro.get(u'Identificador de la Obra_22').get(u'valor'),
                'descripcionobra': smart_bytes(registro.get(u'Descripción de la Obra_23').get(u'valor')),
                'cantbeneficios': registro.get(u'Cantidad de beneficios_24').get(u'valor'),
                'totalpesosbeneficios': registro.get(u'Total en pesos de los beneficios_25').get(u'valor'),
                'inversionfederal': registro.get(u'Inversión federal_26').get(u'valor'),
                'inversionestatal': registro.get(u'Inversión estatal_27').get(u'valor'),
                'inversionmunicipal': registro.get(u'Inversión municipal_28').get(u'valor'),
                'inversionotras': registro.get(u'Inversión de otras fuentes_29').get(u'valor'),
                'fuentesrecurso': smart_bytes(registro.get(u'Fuentes que fondean el recurso_30').get(u'valor')),
                'fechainicio': registro.get(u'Fecha Inicio_33').get(u'valor'),
                'fechafin': registro.get(u'Fecha Fin_34').get(u'valor'),
                'periodicidadentrega': registro.get(u'Periodicidad de entrega del beneficio_35').get(u'valor'),
                'numeroentregabeneficio': registro.get(u'Número de la entrega del beneficio_36').get(u'valor')
            } )
            datos_lista.append(dato_form)

    return datos_lista