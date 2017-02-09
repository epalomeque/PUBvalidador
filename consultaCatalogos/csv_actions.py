#!/usr/bin/env python
# -*- coding: utf-8 -*-

# import codecs
import unicodecsv as csv
from forms import SignUpForm, nuevoTrabajoForm, formPoblacion, formPersonas, formActores
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
        diccionario['REGISTRO'] = i
        for celda, nombre in zip(registro, encabezados):
            diccionario[nombre] = {'VALOR':celda}
        registrosDicc.append(diccionario)
        diccionario = {}
        # print registrosDicc

    datos = {
        'encabezados': encabezados,
        'registros': registrosDicc
    }

    print 'Saliendo de import_csv'
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
        if not(str(registro[campo]['VALOR']) == str(anio)):
            # print registro[campo]['valor']
            errores += 1
        # else:
            # registro[campo]['esvalido'] = True
            # print registro[campo]['esvalido']
    # print '*' * 50
    return errores


def ErroresColumnaTrimestre(trimestre, registros, tipo_padron):
    print '*ErroresColumnaTrimestre'
    formato = seleccionarTipoPadron(tipo_padron)
    campo = obtenerCampoTrimestre(formato)

    errores = 0

    for registro in registros:
        if not(str(registro[campo]['VALOR'].upper()) == str(trimestre.upper())):
            # print registro[campo]
            errores += 1
        else:
            registro[campo]['esvalido'] = True
            print registro[campo]['esvalido']

    # print errores

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


def ObtenDatosEnLista(registros, TipoPadron_id, modelo_convertido):
    datos_lista = list()
    ###
    # Si el modelo del JSON esta convertido
    if modelo_convertido:
        # Tipo padron ACTORES
        if TipoPadron_id == 1:
            for registro in registros:
                dato_form = formActores({
                    'registro': registro[u'registro'],
                    'razonsocial': registro[u'razonsocial'],
                    'rfc': registro[u'rfc'],
                    'primerapellido': registro[u'primerapellido'],
                    'segundoapellido': registro[u'segundoapellido'],
                    'nombre': registro[u'nombre'],
                    'curp': registro[u'curp'],
                    'sexo': registro[u'sexo'],
                    'estadonacimiento': registro[u'estadonacimiento'],
                    'titular': registro[u'titular'],
                    'otrodocto': registro[u'otrodocto'],
                    'cvemunicipiopago': registro[u'cvemunicipiopago'],
                    'localidadpago': registro[u'localidadpago'],
                    'localidadresidencia_as': registro[u'localidadresidencia_as'],
                    'nombrevialidad_as': registro[u'nombrevialidad_as'],
                    'numexterior_as': registro[u'numexterior_as'],
                    'numinterior_as': registro[u'numinterior_as'],
                    'codigopostal_as': registro[u'codigopostal_as'],
                    'referenciadomicilio_as': registro[u'referenciadomicilio_as'],
                    'localidadresidencia_int': registro[u'localidadresidencia_int'],
                    'nombrevialidad_int': registro[u'nombrevialidad_int'],
                    'numexterior_int': registro[u'numexterior_int'],
                    'numinterior_int': registro[u'numinterior_int'],
                    'codigopostal_int': registro[u'codigopostal_int'],
                    'referenciadomicilio_int': registro[u'referenciadomicilio_int'],
                    'dependencia': registro[u'dependencia'],
                    'claveprograma': registro[u'claveprograma'],
                    'clavesubprograma': registro[u'clavesubprograma'],
                    'tipoapoyo': registro[u'tipoapoyo'],
                    'beneficio': registro[u'beneficio'],
                    'cantbeneficios': registro[u'cantbeneficios'],
                    'totalpesosbeneficios': registro[u'totalpesosbeneficios'],
                    'inversionfederal': registro[u'inversionfederal'],
                    'inversionestatal': registro[u'inversionestatal'],
                    'inversionmunicipal': registro[u'inversionmunicipal'],
                    'inversionotras': registro[u'inversionotras'],
                    'fuentesrecurso': registro[u'fuentesrecurso'],
                    'mesperiodopago': registro[u'mesperiodopago'],
                    'periodicidadentrega': registro[u'periodicidadentrega'],
                    'numentrega': registro[u'numentrega']
                })
                datos_lista.append(dato_form)


        # Tipo padron PERSONAS
        if TipoPadron_id == 2:
            for registro in registros:
                dato_form = formPersonas({
                    'registro': registro[u'registro'],
                    'idhogar': registro[u'idhogar'],
                    'idpersona': registro[u'idpersona'],
                    'primerapellido': registro[u'primerapellido'],
                    'segundoapellido': registro[u'segundoapellido'],
                    'nombre': registro[u'nombre'],
                    'curp': registro[u'curp'],
                    'sexo': registro[u'sexo'],
                    'estadocivil': registro[u'estadocivil'],
                    'titular': registro[u'titular'],
                    'parentesco': registro[u'parentesco'],
                    'otrodocto': registro[u'otrodocto'],
                    'cvemunicipiopago': registro[u'cvemunicipiopago'],
                    'localidadpago': registro[u'localidadpago'],
                    'localidadresidencia': registro[u'localidadresidencia'],
                    'nombrevialidad': registro[u'nombrevialidad'],
                    'numexterior': registro[u'numexterior'],
                    'numinterior': registro[u'numinterior'],
                    'codigopostal': registro[u'codigopostal'],
                    'asentamientohumano': registro[u'asentamientohumano'],
                    'referenciadomicilio': registro[u'referenciadomicilio'],
                    'dependencia': registro[u'dependencia'],
                    'claveprograma': registro[u'claveprograma'],
                    'clavesubprograma': registro[u'clavesubprograma'],
                    'tipoapoyo': registro[u'tipoapoyo'],
                    'beneficio': registro[u'beneficio'],
                    'cantbeneficios': registro[u'cantbeneficios'],
                    'totalpesosbeneficios': registro[u'totalpesosbeneficios'],
                    'inversionfederal': registro[u'inversionfederal'],
                    'inversionestatal': registro[u'inversionestatal'],
                    'inversionmunicipal': registro[u'inversionmunicipal'],
                    'inversionotras': registro[u'inversionotras'],
                    'fuentesrecurso': registro[u'fuentesrecurso'],
                    'mesperiodopago': registro[u'mesperiodopago'],
                    'periodicidadentrega': registro[u'periodicidadentrega'],
                    'numentrega': registro[u'numentrega']
                })
                datos_lista.append(dato_form)

        # Tipo padron POBLACION
        if TipoPadron_id == 3:
            for registro in registros:
                dato_form = formPoblacion( {
                    'registro': registro[u'registro'],
                    'multilocalidad': registro[u'multilocalidad'],
                    'rfc': registro[u'rfc'],
                    'numerobeneficiados': registro[u'numerobeneficiados'],
                    'hombresbeneficiados': registro[u'hombresbeneficiados'],
                    'mujeresbeneficiadas': registro[u'mujeresbeneficiadas'],
                    'viviendasbeneficiadas': registro[u'viviendasbeneficiadas'],
                    'municipiobeneficiado': registro[u'municipiobeneficiado'],
                    'localidadbeneficiada': registro[u'localidadbeneficiada'],
                    'asentamiento': registro[u'asentamiento'],
                    'nombrevialidad': registro[u'nombrevialidad'],
                    'numeroexterior': registro[u'numeroexterior'],
                    'numerointerior': registro[u'numerointerior'],
                    'codigopostal': registro[u'codigopostal'],
                    'referenciadomicilio': registro[u'referenciadomicilio'],
                    'dependencia': registro[u'dependencia'],
                    'claveprograma': registro[u'claveprograma'],
                    'clavesubprograma': registro[u'clavesubprograma'],
                    'tipoapoyo': registro[u'tipoapoyo'],
                    'idobra': registro[u'idobra'],
                    'descripcionobra': registro[u'descripcionobra'],
                    'cantbeneficios': registro[u'cantbeneficios'],
                    'totalpesosbeneficios': registro[u'totalpesosbeneficios'],
                    'inversionfederal': registro[u'inversionfederal'],
                    'inversionestatal': registro[u'inversionestatal'],
                    'inversionmunicipal': registro[u'inversionmunicipal'],
                    'inversionotras': registro[u'inversionotras'],
                    'fuentesrecurso': registro[u'fuentesrecurso'],
                    'fechainicio': registro[u'fechainicio'],
                    'fechafin': registro[u'fechafin'],
                    'periodicidadentrega': registro[u'periodicidadentrega'],
                    'numeroentregabeneficio': registro[u'numeroentregabeneficio']
                } )
                datos_lista.append(dato_form)
    ###
    # Si el modelo aun no ha sido convertido
    else:
        registrosIniciales = registros.get('registros')
        # Tipo padron ACTORES
        if TipoPadron_id == 1:
            for registro in registrosIniciales:
                dato_form = formActores({
                    'registro': registro.get(u'REGISTRO'),
                    'razonsocial': registro.get(u'Razón Social_1').get(u'VALOR'),
                    'rfc': registro.get(u'Registro Federal de Contribuyentes_2').get(u'VALOR'),
                    'primerapellido': registro.get(u'Primer Apellido_3').get(u'VALOR'),
                    'segundoapellido': registro.get(u'Segundo Apellido_4').get(u'VALOR'),
                    'nombre': registro.get(u'Nombre (s)_5').get(u'VALOR'),
                    'curp': registro.get(u'CURP_6').get(u'VALOR'),
                    'sexo': registro.get(u'Sexo_7').get(u'VALOR'),
                    'estadonacimiento': registro.get(u'Estado de Nacimiento_8').get(u'VALOR'),
                    'titular': registro.get(u'Titular_9').get(u'VALOR'),
                    'otrodocto': registro.get(u'Otro documento de identificación_10').get(u'VALOR'),
                    'cvemunicipiopago': registro.get(u'Clave Municipio donde se paga el beneficio_11').get(u'VALOR'),
                    'localidadpago': registro.get(u'Clave Localidad donde se paga el beneficio_13').get(u'VALOR'),
                    'localidadresidencia_as': registro.get(u'Localidad de residencia actor social_15').get(u'VALOR'),
                    'nombrevialidad_as': registro.get(u'Nombre de vialidad actor social_16').get(u'VALOR'),
                    'numexterior_as': registro.get(u'Número Exterior actor social_17').get(u'VALOR'),
                    'numinterior_as': registro.get(u'Número Interior actor social_18').get(u'VALOR'),
                    'codigopostal_as': registro.get(u'Código Postal actor social_19').get(u'VALOR'),
                    'referenciadomicilio_as': registro.get(u'Referencia del domicilio actor social_20').get(u'VALOR'),
                    'localidadresidencia_int': registro.get(u'Localidad de residencia del integrante el actor social_21').get(u'VALOR'),
                    'nombrevialidad_int': registro.get(u'Nombre de vialidad integrante_22').get(u'VALOR'),
                    'numexterior_int': registro.get(u'Número Exterior integrante_23').get(u'VALOR'),
                    'numinterior_int': registro.get(u'Número Interior integrante_24').get(u'VALOR'),
                    'codigopostal_int': registro.get(u'Código Postal integrante_25').get(u'VALOR'),
                    'referenciadomicilio_int': registro.get(u'Referencia del domicilio integrante_26').get(u'VALOR'),
                    'dependencia': registro.get(u'Dependencia que opera el programa_27').get(u'VALOR'),
                    'claveprograma': registro.get(u'Clave del programa_28').get(u'VALOR'),
                    'clavesubprograma': registro.get(u'Clave del subprograma_29').get(u'VALOR'),
                    'tipoapoyo': registro.get(u'Tipo de apoyo_31').get(u'VALOR'),
                    'beneficio': registro.get(u'Beneficio_32').get(u'VALOR'),
                    'cantbeneficios': registro.get(u'Cantidad de beneficios_33').get(u'VALOR'),
                    'totalpesosbeneficios': registro.get(u'Total en pesos de los beneficios_34').get(u'VALOR'),
                    'inversionfederal': registro.get(u'Inversión federal_35').get(u'VALOR'),
                    'inversionestatal': registro.get(u'Inversión estatal_36').get(u'VALOR'),
                    'inversionmunicipal': registro.get(u'Inversión municipal_37').get(u'VALOR'),
                    'inversionotras': registro.get(u'Inversión de otras fuentes_38').get(u'VALOR'),
                    'fuentesrecurso': registro.get(u'Fuentes que fondean el recurso_39').get(u'VALOR'),
                    'mesperiodopago': registro.get(u'Mes de periodo de pago_41').get(u'VALOR'),
                    'periodicidadentrega': registro.get(u'Periodicidad de entrega del beneficio_43').get(u'VALOR'),
                    'numentrega': registro.get(u'Número de la entrega del beneficio_44').get(u'VALOR')
                })
                datos_lista.append(dato_form)

        # Tipo padron PERSONAS
        if TipoPadron_id == 2:
            for registro in registrosIniciales:
                dato_form = formPersonas({
                    'registro': registro.get(u'REGISTRO'),
                    'idhogar': registro.get(u'Identificador de Hogar_1').get(u'VALOR'),
                    'idpersona': registro.get(u'Identificador de Persona_2').get(u'VALOR'),
                    'primerapellido': registro.get(u'Primer Apellido_3').get(u'VALOR'),
                    'segundoapellido': registro.get(u'Segundo Apellido _4').get(u'VALOR'),
                    'nombre': registro.get(u'Nombre (s)_5').get(u'VALOR'),
                    'curp': registro.get(u'CURP_6').get(u'VALOR'),
                    'sexo': registro.get(u'Sexo_7').get(u'VALOR'),
                    'estadocivil': registro.get(u'Estado Civil_8').get(u'VALOR'),
                    'titular': registro.get(u'Titular_9').get(u'VALOR'),
                    'parentesco': registro.get(u'Parentesco del Beneficiario con el Jefe del Hogar_10').get(u'VALOR'),
                    'otrodocto': registro.get(u'Otro documento de identificación_11').get(u'VALOR'),
                    'cvemunicipiopago': int(registro.get(u'Clave Municipio donde se paga el beneficio_12').get(u'VALOR')),
                    'localidadpago': int(registro.get(u'Clave Localidad donde se paga el beneficio_14').get(u'VALOR')),
                    'localidadresidencia': registro.get(u'Localidad de Residencia_16').get(u'VALOR'),
                    'nombrevialidad': registro.get(u'Nombre de vialidad_17').get(u'VALOR'),
                    'numexterior': registro.get(u'Número Exterior_18').get(u'VALOR'),
                    'numinterior': registro.get(u'Número Interior _19').get(u'VALOR'),
                    'codigopostal': registro.get(u'Código Postal_20').get(u'VALOR'),
                    'asentamientohumano': registro.get(u'Asentamiento humano_21').get(u'VALOR'),
                    'referenciadomicilio': registro.get(u'Referencia del domicilio_22').get(u'VALOR'),
                    'dependencia': registro.get(u'Dependencia que opera el programa_23').get(u'VALOR'),
                    'claveprograma': registro.get(u'Clave del programa_24').get(u'VALOR'),
                    'clavesubprograma': registro.get(u'Clave del subprograma_25').get(u'VALOR'),
                    'tipoapoyo': registro.get(u'Tipo de apoyo_27').get(u'VALOR'),
                    'beneficio': registro.get(u'Beneficio_28').get(u'VALOR'),
                    'cantbeneficios': registro.get(u'Cantidad de beneficios_29').get(u'VALOR'),
                    'totalpesosbeneficios': registro.get(u'Total en pesos de los beneficios_30').get(u'VALOR'),
                    'inversionfederal': registro.get(u'Inversión federal_31').get(u'VALOR'),
                    'inversionestatal': registro.get(u'Inversión estatal_32').get(u'VALOR'),
                    'inversionmunicipal': registro.get(u'Inversión municipal_33').get(u'VALOR'),
                    'inversionotras': registro.get(u'Inversión de otras fuentes_34').get(u'VALOR'),
                    'fuentesrecurso': registro.get(u'Fuentes que fondean el recurso_35').get(u'VALOR'),
                    'mesperiodopago': registro.get(u'Mes de periodo de pago_37').get(u'VALOR'),
                    'periodicidadentrega': registro.get(u'Periodicidad de entrega del beneficio_39').get(u'VALOR'),
                    'numentrega': registro.get(u'Número de la entrega del beneficio_40').get(u'VALOR')
                })
                datos_lista.append(dato_form)

        # Tipo padron POBLACION
        if TipoPadron_id == 3:
            for registro in registrosIniciales:
                dato_form = formPoblacion({
                    'registro': registro.get(u'REGISTRO'),
                    'multilocalidad': registro.get(u'Multilocalidad_1').get(u'VALOR'),
                    'rfc': registro.get(u'Registro Federal de Contribuyentes_2').get(u'VALOR'),
                    'numerobeneficiados': registro.get(u'Número beneficiados_3').get(u'VALOR'),
                    'hombresbeneficiados': registro.get(u'Hombres beneficiados_4').get(u'VALOR'),
                    'mujeresbeneficiadas': registro.get(u'Mujeres beneficiadas_5').get(u'VALOR'),
                    'viviendasbeneficiadas': registro.get(u'Viviendas beneficiadas_6').get(u'VALOR'),
                    'municipiobeneficiado': int(registro.get(u'Clave Municipio donde se encuentra la obra_7').get(u'VALOR')),
                    'localidadbeneficiada': int(registro.get(u'Clave Localidad donde se encuentra la obra_9').get(u'VALOR')),
                    'asentamiento': registro.get(u'Asentamiento humano_11').get(u'VALOR'),
                    'nombrevialidad': registro.get(u'Nombre vialidad_12').get(u'VALOR'),
                    'numeroexterior': registro.get(u'Número Exterior_13').get(u'VALOR'),
                    'numerointerior': registro.get(u'Número Interior_14').get(u'VALOR'),
                    'codigopostal': registro.get(u'Código Postal_15').get(u'VALOR'),
                    'referenciadomicilio': registro.get(u'Referencia del domicilio_16').get(u'VALOR'),
                    'dependencia': smart_bytes(registro.get(u'Dependencia que opera el programa_17').get(u'VALOR')),
                    'claveprograma': smart_bytes(registro.get(u'Clave del programa_18').get(u'VALOR')),
                    'clavesubprograma': registro.get(u'Clave del subprograma_19').get(u'VALOR'),
                    'tipoapoyo': smart_bytes(registro.get(u'Tipo de apoyo_21').get(u'VALOR')),
                    'idobra': registro.get(u'Identificador de la Obra_22').get(u'VALOR'),
                    'descripcionobra': smart_bytes(registro.get(u'Descripción de la Obra_23').get(u'VALOR')),
                    'cantbeneficios': registro.get(u'Cantidad de beneficios_24').get(u'VALOR'),
                    'totalpesosbeneficios': registro.get(u'Total en pesos de los beneficios_25').get(u'VALOR'),
                    'inversionfederal': registro.get(u'Inversión federal_26').get(u'VALOR'),
                    'inversionestatal': registro.get(u'Inversión estatal_27').get(u'VALOR'),
                    'inversionmunicipal': registro.get(u'Inversión municipal_28').get(u'VALOR'),
                    'inversionotras': registro.get(u'Inversión de otras fuentes_29').get(u'VALOR'),
                    'fuentesrecurso': smart_bytes(registro.get(u'Fuentes que fondean el recurso_30').get(u'VALOR')),
                    'fechainicio': registro.get(u'Fecha Inicio_33').get(u'VALOR'),
                    'fechafin': registro.get(u'Fecha Fin_34').get(u'VALOR'),
                    'periodicidadentrega': registro.get(u'Periodicidad de entrega del beneficio_35').get(u'VALOR'),
                    'numeroentregabeneficio': registro.get(u'Número de la entrega del beneficio_36').get(u'VALOR')
                })
                datos_lista.append(dato_form)

    return datos_lista


def contar_registros_con_errores(dato_inicial):
    i = 0
    for registro in dato_inicial:
        if registro.errors:
            i = i + 1

    return i


def ActualizarInformacionAModeloNormalizado(formulario_de_registros, TipoPadron_id):
    diccionario_normalizado = list()
    if TipoPadron_id == 1:
        for registro in formulario_de_registros:
            diccionario_temporal = {
                    'registro': registro[u'registro'].value(),
                    'razonsocial': registro[u'razonsocial'].value(),
                    'rfc': registro[u'rfc'].value(),
                    'primerapellido': registro[u'primerapellido'].value(),
                    'segundoapellido': registro[u'segundoapellido'].value(),
                    'nombre': registro[u'nombre'].value(),
                    'curp': registro[u'curp'].value(),
                    'sexo': registro[u'sexo'].value(),
                    'estadonacimiento': registro[u'estadonacimiento'].value(),
                    'titular': registro[u'titular'].value(),
                    'otrodocto': registro[u'otrodocto'].value(),
                    'cvemunicipiopago': registro[u'cvemunicipiopago'].value(),
                    'localidadpago': registro[u'localidadpago'].value(),
                    'localidadresidencia_as': registro[u'localidadresidencia_as'].value(),
                    'nombrevialidad_as': registro[u'nombrevialidad_as'].value(),
                    'numexterior_as': registro[u'numexterior_as'].value(),
                    'numinterior_as': registro[u'numinterior_as'].value(),
                    'codigopostal_as': registro[u'codigopostal_as'].value(),
                    'referenciadomicilio_as': registro[u'referenciadomicilio_as'].value(),
                    'localidadresidencia_int': registro[u'localidadresidencia_int'].value(),
                    'nombrevialidad_int': registro[u'nombrevialidad_int'].value(),
                    'numexterior_int': registro[u'numexterior_int'].value(),
                    'numinterior_int': registro[u'numinterior_int'].value(),
                    'codigopostal_int': registro[u'codigopostal_int'].value(),
                    'referenciadomicilio_int': registro[u'referenciadomicilio_int'].value(),
                    'dependencia': registro[u'dependencia'].value(),
                    'claveprograma': registro[u'claveprograma'].value(),
                    'clavesubprograma': registro[u'clavesubprograma'].value(),
                    'tipoapoyo': registro[u'tipoapoyo'].value(),
                    'beneficio': registro[u'beneficio'].value(),
                    'cantbeneficios': registro[u'cantbeneficios'].value(),
                    'totalpesosbeneficios': registro[u'totalpesosbeneficios'].value(),
                    'inversionfederal': registro[u'inversionfederal'].value(),
                    'inversionestatal': registro[u'inversionestatal'].value(),
                    'inversionmunicipal': registro[u'inversionmunicipal'].value(),
                    'inversionotras': registro[u'inversionotras'].value(),
                    'fuentesrecurso': registro[u'fuentesrecurso'].value(),
                    'mesperiodopago': registro[u'mesperiodopago'].value(),
                    'periodicidadentrega': registro[u'periodicidadentrega'].value(),
                    'numentrega': registro[u'numentrega'].value()
            }
            diccionario_normalizado.append(diccionario_temporal)

    # Tipo de padron PERSONAS
    if TipoPadron_id == 2:
        for registro in formulario_de_registros:
            diccionario_temporal = {
                'registro': registro['registro'].value(),
                'idhogar': registro['idhogar'].value(),
                'idpersona': registro['idpersona'].value(),
                'primerapellido': registro['primerapellido'].value(),
                'segundoapellido': registro['segundoapellido'].value(),
                'nombre': registro['nombre'].value(),
                'curp': registro['curp'].value(),
                'sexo': registro['sexo'].value(),
                'estadocivil': registro['estadocivil'].value(),
                'titular': registro['titular'].value(),
                'parentesco': registro['parentesco'].value(),
                'otrodocto': registro['otrodocto'].value(),
                'cvemunicipiopago': registro['cvemunicipiopago'].value(),
                'localidadpago': registro['localidadpago'].value(),
                'localidadresidencia': registro['localidadresidencia'].value(),
                'nombrevialidad': registro['nombrevialidad'].value(),
                'numexterior': registro['numexterior'].value(),
                'numinterior': registro['numinterior'].value(),
                'codigopostal': registro['codigopostal'].value(),
                'asentamientohumano': registro['asentamientohumano'].value(),
                'referenciadomicilio': registro['referenciadomicilio'].value(),
                'dependencia': registro['dependencia'].value(),
                'claveprograma': registro['claveprograma'].value(),
                'clavesubprograma': registro['clavesubprograma'].value(),
                'tipoapoyo': registro['tipoapoyo'].value(),
                'beneficio': registro['beneficio'].value(),
                'cantbeneficios': registro['cantbeneficios'].value(),
                'totalpesosbeneficios': registro['totalpesosbeneficios'].value(),
                'inversionfederal': registro['inversionfederal'].value(),
                'inversionestatal': registro['inversionestatal'].value(),
                'inversionmunicipal': registro['inversionmunicipal'].value(),
                'inversionotras': registro['inversionotras'].value(),
                'fuentesrecurso': registro['fuentesrecurso'].value(),
                'mesperiodopago': registro['mesperiodopago'].value(),
                'periodicidadentrega': registro['periodicidadentrega'].value(),
                'numentrega': registro['numentrega'].value()
            }
            diccionario_normalizado.append(diccionario_temporal)

    # Tipo de padron POBLACION
    if TipoPadron_id == 3:
        for registro in formulario_de_registros:
            diccionario_temporal = {
                'registro': registro['registro'].value(),
                'multilocalidad': registro['multilocalidad'].value(),
                'rfc': registro['rfc'].value(),
                'numerobeneficiados': registro['numerobeneficiados'].value(),
                'hombresbeneficiados': registro['hombresbeneficiados'].value(),
                'mujeresbeneficiadas': registro['mujeresbeneficiadas'].value(),
                'viviendasbeneficiadas': registro['viviendasbeneficiadas'].value(),
                'municipiobeneficiado': registro['municipiobeneficiado'].value(),
                'localidadbeneficiada': registro['localidadbeneficiada'].value(),
                'asentamiento': registro['asentamiento'].value(),
                'nombrevialidad': registro['nombrevialidad'].value(),
                'numeroexterior': registro['numeroexterior'].value(),
                'numerointerior': registro['numerointerior'].value(),
                'codigopostal': registro['codigopostal'].value(),
                'referenciadomicilio': registro['referenciadomicilio'].value(),
                'dependencia': registro['dependencia'].value(),
                'claveprograma': registro['claveprograma'].value(),
                'clavesubprograma': registro['clavesubprograma'].value(),
                'tipoapoyo': registro['tipoapoyo'].value(),
                'idobra': registro['idobra'].value(),
                'descripcionobra': registro['descripcionobra'].value(),
                'cantbeneficios': registro['cantbeneficios'].value(),
                'totalpesosbeneficios': registro['totalpesosbeneficios'].value(),
                'inversionfederal': registro['inversionfederal'].value(),
                'inversionestatal': registro['inversionestatal'].value(),
                'inversionmunicipal': registro['inversionmunicipal'].value(),
                'inversionotras': registro['inversionotras'].value(),
                'fuentesrecurso': registro['fuentesrecurso'].value(),
                'fechainicio': registro['fechainicio'].value(),
                'fechafin': registro['fechafin'].value(),
                'periodicidadentrega': registro['periodicidadentrega'].value(),
                'numeroentregabeneficio': registro['numeroentregabeneficio'].value()
            }
            diccionario_normalizado.append(diccionario_temporal)

    return diccionario_normalizado