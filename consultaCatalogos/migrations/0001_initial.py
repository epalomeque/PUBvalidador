# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Cat_AnioEjercicio',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('AnioEjercicio', models.CharField(default=b'', max_length=4)),
            ],
        ),
        migrations.CreateModel(
            name='Cat_Asentamiento',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('identAsentamiento', models.IntegerField()),
                ('nombreAsentamiento', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Cat_CodigoPostal',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('claveCP', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Cat_Dependencias',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('identDependencia', models.CharField(max_length=2)),
                ('nombreDependencia', models.CharField(max_length=150)),
            ],
        ),
        migrations.CreateModel(
            name='Cat_Edocivil',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('identEdoCivil', models.CharField(max_length=2)),
                ('nombreEdoCivil', models.CharField(max_length=14)),
            ],
        ),
        migrations.CreateModel(
            name='Cat_Estados',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('identEstado', models.IntegerField()),
                ('nombreEstado', models.CharField(max_length=25)),
            ],
        ),
        migrations.CreateModel(
            name='Cat_Frecuencia',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('identFrecuencia', models.CharField(max_length=2)),
                ('nombreFrecuencia', models.CharField(max_length=15)),
                ('descripFrecuencia', models.CharField(max_length=45, blank=True)),
            ],
        ),
        migrations.CreateModel(
            name='Cat_Fuentes',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('identFuentes', models.CharField(max_length=3)),
                ('descripcionFuentes', models.CharField(max_length=35)),
            ],
        ),
        migrations.CreateModel(
            name='Cat_Identificacion',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('identIdentificacion', models.CharField(max_length=2)),
                ('nombreIdentificacion', models.CharField(max_length=70)),
            ],
        ),
        migrations.CreateModel(
            name='Cat_Localidad',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('identLocalidad', models.IntegerField()),
                ('nombreLocalidad', models.CharField(max_length=250)),
            ],
        ),
        migrations.CreateModel(
            name='Cat_Mes',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombreMes', models.CharField(max_length=12)),
            ],
        ),
        migrations.CreateModel(
            name='Cat_Municipio',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('identMunicipio', models.IntegerField()),
                ('nombreMunicipio', models.CharField(max_length=25)),
                ('idEstado', models.ForeignKey(to='consultaCatalogos.Cat_Estados')),
            ],
        ),
        migrations.CreateModel(
            name='Cat_Parentesco',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('identParentesco', models.CharField(max_length=2)),
                ('nombreParentesco', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='Cat_Periodos',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('identPeriodo', models.CharField(max_length=2)),
                ('nombrePeriodo', models.CharField(max_length=20)),
                ('mes', models.ManyToManyField(to='consultaCatalogos.Cat_Mes')),
            ],
        ),
        migrations.CreateModel(
            name='Cat_Programas',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('identPrograma', models.CharField(max_length=10)),
                ('nombrePrograma', models.CharField(max_length=80)),
                ('descripPrograma', models.TextField(blank=True)),
                ('idDependencia', models.ForeignKey(to='consultaCatalogos.Cat_Dependencias')),
            ],
        ),
        migrations.CreateModel(
            name='Cat_Sexo',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('identSexo', models.CharField(max_length=1)),
                ('nombreSexo', models.CharField(max_length=10)),
            ],
        ),
        migrations.CreateModel(
            name='Cat_Subprogramas',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('identSubprograma', models.CharField(max_length=10)),
                ('nombreSubPrograma', models.CharField(max_length=80)),
                ('descripSubprograma', models.TextField(blank=True)),
                ('idPrograma', models.ForeignKey(to='consultaCatalogos.Cat_Programas')),
            ],
        ),
        migrations.CreateModel(
            name='Cat_TipoApoyo',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('identTipoApoyo', models.CharField(max_length=2)),
                ('nombreTipoApoyo', models.CharField(max_length=10)),
            ],
        ),
        migrations.CreateModel(
            name='Cat_TipoPadron',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombrePadron', models.CharField(max_length=10)),
            ],
        ),
        migrations.CreateModel(
            name='EstatusTrabajos',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombreEstatus', models.CharField(default=b'', max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='FormatoPubActor',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('RazonSocial', models.CharField(max_length=20)),
                ('RFC', models.CharField(max_length=13)),
                ('PrimerApellido', models.CharField(max_length=20)),
                ('SegundoApellido', models.CharField(max_length=20, blank=True)),
                ('Nombre', models.CharField(max_length=20)),
                ('CURP', models.CharField(max_length=18)),
                ('Titular', models.CharField(max_length=1, choices=[(b'SI', b'S'), (b'NO', b'N')])),
                ('NombreVialidadActor', models.CharField(max_length=20)),
                ('NumeroExtActor', models.CharField(max_length=5, blank=True)),
                ('NumeroIntActor', models.CharField(max_length=5, blank=True)),
                ('CodigoPostalActor', models.CharField(max_length=5)),
                ('RefDomActor', models.CharField(max_length=250, blank=True)),
                ('NombreVialidadIntegrante', models.CharField(max_length=20)),
                ('NumeroExtIntegrante', models.CharField(max_length=5, blank=True)),
                ('NumeroIntIntegrante', models.CharField(max_length=5, blank=True)),
                ('CodigoPostalIntegrante', models.CharField(max_length=5)),
                ('RefDomicilioIntegrante', models.CharField(max_length=250, blank=True)),
                ('Beneficio', models.CharField(max_length=250)),
                ('AnioEjercicio', models.ForeignKey(to='consultaCatalogos.Cat_AnioEjercicio')),
                ('ClavePrograma', models.ForeignKey(to='consultaCatalogos.Cat_Programas')),
                ('ClaveSubprograma', models.ForeignKey(to='consultaCatalogos.Cat_Subprogramas', blank=True)),
                ('Dependencia', models.ForeignKey(to='consultaCatalogos.Cat_Dependencias')),
                ('EdoNacimiento', models.ForeignKey(to='consultaCatalogos.Cat_Estados', blank=True)),
                ('FuentesRecurso', models.ForeignKey(to='consultaCatalogos.Cat_Fuentes')),
                ('LocDondeSePagaBeneficio', models.ForeignKey(related_name='Localidad_Pago_Beneficio_Actor', default=b'', to='consultaCatalogos.Cat_Localidad')),
                ('LocResidActorSocial', models.ForeignKey(related_name='Localidad_Actor', default=b'', to='consultaCatalogos.Cat_Localidad')),
                ('LocResidDelIntegrante', models.ForeignKey(related_name='Localidad_Integrante', default=b'', to='consultaCatalogos.Cat_Localidad')),
                ('MesPeriodoPago', models.ForeignKey(to='consultaCatalogos.Cat_Mes')),
                ('MunDondeSePagaBeneficio', models.ForeignKey(to='consultaCatalogos.Cat_Municipio')),
                ('OtroDocId', models.ForeignKey(to='consultaCatalogos.Cat_Identificacion', blank=True)),
                ('PeriodicidadEntregaBeneficio', models.ForeignKey(to='consultaCatalogos.Cat_Frecuencia')),
                ('Sexo', models.ForeignKey(to='consultaCatalogos.Cat_Sexo')),
                ('TipoApoyo', models.ForeignKey(to='consultaCatalogos.Cat_TipoApoyo')),
                ('Trimestre', models.ForeignKey(to='consultaCatalogos.Cat_Periodos')),
            ],
        ),
        migrations.CreateModel(
            name='FormatoPubPersona',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('IdHogar', models.CharField(max_length=15)),
                ('IdPersona', models.CharField(max_length=15)),
                ('PrimerApellido', models.CharField(max_length=20)),
                ('SegundoApellido', models.CharField(max_length=20, blank=True)),
                ('Nombre', models.CharField(max_length=20)),
                ('CURP', models.CharField(max_length=18)),
                ('Titular', models.CharField(max_length=1, choices=[(b'SI', b'S'), (b'NO', b'N')])),
                ('NombreVialidad', models.CharField(max_length=20)),
                ('NumeroExterior', models.CharField(max_length=5, blank=True)),
                ('NumeroInterior', models.CharField(max_length=5, blank=True)),
                ('CodigoPostal', models.CharField(max_length=5)),
                ('ReferenciaDomicilio', models.CharField(max_length=250, blank=True)),
                ('Beneficio', models.CharField(max_length=250)),
                ('AnioEjercicio', models.ForeignKey(to='consultaCatalogos.Cat_AnioEjercicio')),
                ('AsentamientoHumano', models.ForeignKey(to='consultaCatalogos.Cat_Asentamiento')),
                ('ClavePrograma', models.ForeignKey(to='consultaCatalogos.Cat_Programas')),
                ('ClaveSubprograma', models.ForeignKey(to='consultaCatalogos.Cat_Subprogramas', blank=True)),
                ('Dependencia', models.ForeignKey(to='consultaCatalogos.Cat_Dependencias')),
                ('EstadoCivil', models.ForeignKey(to='consultaCatalogos.Cat_Edocivil')),
                ('FuentesRecurso', models.ForeignKey(to='consultaCatalogos.Cat_Fuentes')),
                ('LocalidadPagoBeneficio', models.ForeignKey(related_name='Localidad_Pago_Beneficio', to='consultaCatalogos.Cat_Localidad')),
                ('LocalidadResidencia', models.ForeignKey(related_name='Localidad_De_Residencia', to='consultaCatalogos.Cat_Localidad')),
                ('MesPeriodoPago', models.ForeignKey(to='consultaCatalogos.Cat_Mes')),
                ('MunicipioBeneficiado', models.ForeignKey(to='consultaCatalogos.Cat_Municipio')),
                ('OtroDocId', models.ForeignKey(to='consultaCatalogos.Cat_Identificacion', blank=True)),
                ('Parentesco', models.ForeignKey(to='consultaCatalogos.Cat_Parentesco')),
                ('PeriodicidadEntregaBeneficio', models.ForeignKey(to='consultaCatalogos.Cat_Frecuencia')),
                ('Sexo', models.ForeignKey(to='consultaCatalogos.Cat_Sexo')),
                ('TipoApoyo', models.ForeignKey(to='consultaCatalogos.Cat_TipoApoyo')),
                ('Trimestre', models.ForeignKey(to='consultaCatalogos.Cat_Periodos')),
            ],
        ),
        migrations.CreateModel(
            name='FormatoPubPoblacion',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('Multilocalidad', models.CharField(max_length=2, choices=[(b'SI', b'SI'), (b'NO', b'NO')])),
                ('RFC', models.CharField(max_length=13)),
                ('NombreVialidad', models.CharField(max_length=20)),
                ('NumeroExterior', models.CharField(max_length=5, blank=True)),
                ('NumeroInterior', models.CharField(max_length=5, blank=True)),
                ('CodigoPostal', models.CharField(max_length=5)),
                ('ReferenciaDomicilio', models.CharField(max_length=250, blank=True)),
                ('IdObra', models.CharField(max_length=15)),
                ('AnioEjercicio', models.ForeignKey(to='consultaCatalogos.Cat_AnioEjercicio')),
                ('AsentamientoHumano', models.ForeignKey(to='consultaCatalogos.Cat_Asentamiento')),
                ('ClavePrograma', models.ForeignKey(to='consultaCatalogos.Cat_Programas')),
                ('ClaveSubprograma', models.ForeignKey(to='consultaCatalogos.Cat_Subprogramas', blank=True)),
                ('Dependencia', models.ForeignKey(to='consultaCatalogos.Cat_Dependencias')),
                ('FuentesRecurso', models.ForeignKey(to='consultaCatalogos.Cat_Fuentes')),
                ('LocalidadBeneficiada', models.ForeignKey(to='consultaCatalogos.Cat_Localidad')),
                ('MunicipioBeneficiado', models.ForeignKey(to='consultaCatalogos.Cat_Municipio')),
                ('PeriodicidadEntregaBeneficio', models.ForeignKey(to='consultaCatalogos.Cat_Frecuencia')),
                ('TipoApoyo', models.ForeignKey(to='consultaCatalogos.Cat_TipoApoyo')),
                ('Trimestre', models.ForeignKey(to='consultaCatalogos.Cat_Periodos')),
            ],
        ),
        migrations.CreateModel(
            name='TrabajosRealizados',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('archivoRelacionado', models.FileField(upload_to=b'csv/%Y/%m/%d')),
                ('FechaInicio', models.DateTimeField(auto_now_add=True)),
                ('UltimaActualizacion', models.DateField(auto_now=True)),
                ('CantidadRegistros', models.IntegerField(default=0)),
                ('jsondata', models.TextField(default=b'')),
                ('modeloConvertido', models.BooleanField(default=False)),
                ('estructura_valida', models.BooleanField(default=False)),
                ('anio_valido', models.BooleanField(default=False)),
                ('trimestre_valido', models.BooleanField(default=False)),
                ('AnioEjercicio', models.ForeignKey(default=b'', to='consultaCatalogos.Cat_AnioEjercicio')),
                ('Estatus', models.ForeignKey(to='consultaCatalogos.EstatusTrabajos')),
                ('TipoPadron', models.ForeignKey(default=b'', to='consultaCatalogos.Cat_TipoPadron')),
                ('Trimestre', models.ForeignKey(default=b'', to='consultaCatalogos.Cat_Periodos')),
                ('Usuario', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.AddField(
            model_name='formatopubpoblacion',
            name='id_trabajo',
            field=models.ForeignKey(default=b'', to='consultaCatalogos.TrabajosRealizados'),
        ),
        migrations.AddField(
            model_name='formatopubpersona',
            name='id_trabajo',
            field=models.ForeignKey(default=b'', to='consultaCatalogos.TrabajosRealizados'),
        ),
        migrations.AddField(
            model_name='formatopubactor',
            name='id_trabajo',
            field=models.ForeignKey(default=b'', to='consultaCatalogos.TrabajosRealizados'),
        ),
        migrations.AddField(
            model_name='cat_localidad',
            name='idMunicipio',
            field=models.ForeignKey(to='consultaCatalogos.Cat_Municipio'),
        ),
        migrations.AddField(
            model_name='cat_codigopostal',
            name='idLocalidad',
            field=models.ForeignKey(to='consultaCatalogos.Cat_Localidad'),
        ),
    ]
