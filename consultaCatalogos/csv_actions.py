#!/usr/bin/env python
# -*- coding: utf-8 -*-

import codecs
#import unicodecsv as csv
import csv
from django.utils import timezone
from consultaCatalogos.models import FormatoPubActor, FormatoPubPoblacion, FormatoPubPersona

formato_actores = {
    'columnas': 44,
    'nombre_cols': [
        {"Razón Social_1": "RazonSocial" },
        {"Registro Federal de Contribuyentes_2": "RFC" },
        {"Primer Apellido_3": "PrimerApellido" },
        {"Segundo Apellido_4": "SegundoApellido" },
        {"Nombre (s)_5": "Nombre" },
        {"CURP_6": "CURP" },
        {"Sexo_7": "Sexo" },
        {"Estado de Nacimiento_8": "EdoNacimiento" },
        {"Titular_9": "Titular" },
        {"Otro documento de identificación_10": "OtroDocId" },
        {"Clave Municipio donde se paga el beneficio_11": "MunDondeSePagaBeneficio" },
        {"Municipio donde se paga el beneficio_12": "MunDondeSePagaBeneficio" },
        {"Clave Localidad donde se paga el beneficio_13": "LocDondeSePagaBeneficio" },
        {"Localidad donde se paga el beneficio_14": "LocDondeSePagaBeneficio" },
        {"Localidad de residencia actor social_15": "LocResidActorSocial" },
        {"Nombre de vialidad actor social_16": "NombreVialidadActor" },
        {"Número Exterior actor social_17": "NumeroExtActor" },
        {"Número Interior actor social_18": "NumeroIntActor" },
        {"Código Postal actor social_19": "CodigoPostalActor" },
        {"Referencia del domicilio actor social_20": "RefDomActor" },
        {"Localidad de residencia del integrante el actor social_21": "LocResidDelIntegrante" },
        {"Nombre de vialidad integrante_22": "NombreVialidadIntegrante" },
        {"Número Exterior integrante_23": "NumeroExtIntegrante" },
        {"Número Interior integrante_24": "NumeroIntIntegrante" },
        {"Código Postal integrante_25": "CodigoPostalIntegrante" },
        {"Referencia del domicilio integrante_26": "RefDomicilioIntegrante" },
        {"Dependencia que opera el programa_27": "Dependencia" },
        {"Clave del programa_28": "ClavePrograma" },
        {"Clave del subprograma_29": "ClaveSubprograma" },
        {"Nombre del programa_30": "ClavePrograma" },
        {"Tipo de apoyo_31": "TipoApoyo" },
        {"Beneficio_32": "Beneficio" },
        {"Cantidad de beneficios_33": "CantBeneficios" },
        {"Total en pesos de los beneficios_34": "TotalPesosBeneficios" },
        {"Inversión federal_35": "InversionFederal" },
        {"Inversión estatal_36": "InversionEstatal" },
        {"Inversión municipal_37": "InversionMunicipal" },
        {"Inversión de otras fuentes_38": "InversionOtras" },
        {"Fuentes que fondean el recurso_39": "FuentesRecurso" },
        {"Trimestre_40": "Trimestre" },
        {"Mes de periodo de pago_41": "MesPeriodoPago" },
        {"Año de ejercicio_42": "AnioEjercicio" },
        {"Periodicidad de entrega del beneficio_43": "PeriodicidadEntregaBeneficio " },
        {"Número de la entrega del beneficio_44": "NumeroEntregaBeneficio" }
    ]
}

formato_poblacion = {
    'columnas': 36,
    'nombrecols':[
        {"Multilocalidad_1": "" },
        {"Registro Federal de Contribuyentes_2": "" },
        {"Número beneficiados_3": "" },
        {"Hombres beneficiados_4": "" },
        {"Mujeres beneficiadas_5": "" },
        {"Viviendas beneficiadas_6": "" },
        {"Clave Municipio donde se encuentra la obra_7": "" },
        {"Municipio donde se encuentra la obra_8": "" },
        {"Clave Localidad donde se encuentra la obra_9": "" },
        {"Localidad donde se encuentra la obra_10 Asentamiento humano_11": "" },
        {"Nombre vialidad_12": "" },
        {"Número Exterior_13": "" },
        {"Número Interior_14": "" },
        {"Código Postal_15": "" },
        {"Referencia del domicilio_16": "" },
        {"Dependencia que opera el programa_17": "" },
        {"Clave del programa_18": "" },
        {"Clave del subprograma_19": "" },
        {"Nombre del programa_20": "" },
        {"Tipo de apoyo_21": "" },
        {"Identificador de la Obra_22": "" },
        {"Descripción de la Obra_23": "" },
        {"Cantidad de beneficios_24": "" },
        {"Total en pesos de los beneficios_25": "" },
        {"Inversión federal_26": "" },
        {"Inversión estatal_27": "" },
        {"Inversión municipal_28": "" },
        {"Inversión de otras fuentes_29": "" },
        {"Fuentes que fondean el recurso_30": "" },
        {"Trimestre_31": "" },
        {"Año de ejercicio_32": "" },
        {"Fecha Inicio_33": "" },
        {"Fecha Fin_34": "" },
        {"Periodicidad de entrega del beneficio_35": "" },
        {"Número de la entrega del beneficio_36": "" }
    ]
}

formato_personas = {
    'columnas': 40,
    'nombrecols':[
        {"Identificador de Hogar_1": "IdHogar"},
        {"Identificador de Persona_2": "IdPersona"},
        {"Primer Apellido_3": "PrimerApellido"},
        {"Segundo Apellido _4": "SegundoApellido"},
        {"Nombre (s)_5": "Nombre"},
        {"CURP_6": "CURP"},
        {"Sexo_7": "Sexo"},
        {"Estado Civil_8": "EstadoCivil"},
        {"Titular_9": "Titular"},
        {"Parentesco del Beneficiario con el Jefe del Hogar_10": "Parentesco"},
        {"Otro documento de identificación_11": "OtroDocId"},
        {"Clave Municipio donde se paga el beneficio_12": "MunicipioBeneficiado"},
        {"Municipio donde se paga el beneficio_13": "MunicipioBeneficiado"},
        {"Clave Localidad donde se paga el beneficio_14": "LocalidadPagoBeneficio"},
        {"Localidad donde se paga el beneficio_15": "LocalidadPagoBeneficio"},
        {"Localidad de Residencia_16": "LocalidadResidencia"},
        {"Nombre de vialidad_17": "NombreVialidad"},
        {"Número Exterior_18": "NumeroExterior"},
        {"Número Interior _19": "NumeroInterior"},
        {"Código Postal_20": "CodigoPostal"},
        {"Asentamiento humano_21": "AsentamientoHumano"},
        {"Referencia del domicilio_22": "ReferenciaDomicilio"},
        {"Dependencia que opera el programa_23": "Dependencia"},
        {"Clave del programa_24": "ClavePrograma"},
        {"Clave del subprograma_25": "ClaveSubprograma"},
        {"Nombre del programa_26": "ClavePrograma"},
        {"Tipo de apoyo_27": "TipoApoyo"},
        {"Beneficio_28": "Beneficio"},
        {"Cantidad de beneficios_29": "CantBeneficios"},
        {"Total en pesos de los beneficios_30": "TotalPesosBeneficios"},
        {"Inversión federal_31": "InversionFederal"},
        {"Inversión estatal_32": "InversionEstatal"},
        {"Inversión municipal_33": "InversionMunicipal"},
        {"Inversión de otras fuentes_34": "InversionOtras"},
        {"Fuentes que fondean el recurso_35": "FuentesRecurso"},
        {"Trimestre_36": "Trimestre"},
        {"Mes de periodo de pago_37": "MesPeriodoPago"},
        {"Año de ejercicio_38": "AnioEjercicio"},
        {"Periodicidad de entrega del beneficio_39": "PeriodicidadEntregaBeneficio"},
        {"Número de la entrega del beneficio_40": "NumeroEntregaBeneficio"},
    ]
}

def import_csv(filename):
    f = open(filename, 'rb')
    registros = csv.reader(f, dialect='excel', delimiter=',')
    recordsDicc = csv.DictReader(f, dialect='excel', delimiter=',')
    encabezados = registros.next()

    datos = {
        'encabezados': encabezados,
        'registros' : recordsDicc
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

    return valor


def EstructuraArchivoEsValida(lista_Columnas, tipo_padron):
    ValidacionTotalColumnas = False
    ValidacionOrdenColumnas = False

    # Elegir que tipo de padron se va a revisar
    if tipo_padron == 1:
        formato = formato_actores
    elif tipo_padron == 2:
        formato = formato_personas
        print 'Padron Personas'
    elif tipo_padron == 3:
        formato = formato_poblacion

    ValidacionTotalColumnas = CantColumnasCorrecta(total_headers(nombrecolumnas), formato["columnas"])


    return validacion


def validar_anio(anio, registros):

    return anio

def validar_trimestre(trimestre, registros):
    return trimestre
