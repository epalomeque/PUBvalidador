# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
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
                ('nombreDependencia', models.CharField(max_length=60)),
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
                ('descripFrecuencia', models.CharField(max_length=45)),
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
                ('nombreLocalidad', models.CharField(max_length=50)),
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
            ],
        ),
        migrations.CreateModel(
            name='Cat_Programas',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('identPrograma', models.CharField(max_length=10)),
                ('nombrePrograma', models.CharField(max_length=80)),
                ('descripPrograma', models.TextField(blank=True)),
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
            name='FormatoPubActor',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('RazonSocial', models.CharField(max_length=20)),
                ('RFC', models.CharField(max_length=13)),
                ('PrimerApellido', models.CharField(max_length=20)),
                ('SegundoApellido', models.CharField(max_length=20)),
                ('Nombre', models.CharField(max_length=20)),
                ('CURP', models.CharField(max_length=18)),
                ('Titular', models.CharField(max_length=1)),
                ('NombreVialidadActor', models.CharField(max_length=20)),
                ('NumeroExtActor', models.CharField(max_length=5)),
                ('NumeroIntActor', models.CharField(max_length=5)),
                ('CodigoPostalActor', models.CharField(max_length=5)),
                ('RefDomActor', models.CharField(max_length=60)),
                ('NombreVialidadIntegrante', models.CharField(max_length=20)),
                ('NumeroExtIntegrante', models.CharField(max_length=5)),
                ('NumeroIntIntegrante', models.CharField(max_length=5)),
                ('CodigoPostalIntegrante', models.CharField(max_length=5)),
                ('RefDomicilioIntegrante', models.CharField(max_length=60)),
                ('Beneficio', models.CharField(max_length=35)),
                ('ClavePrograma', models.ForeignKey(to='consultaCatalogos.Cat_Programas')),
                ('ClaveSubprograma', models.ForeignKey(to='consultaCatalogos.Cat_Subprogramas')),
                ('Dependencia', models.ForeignKey(to='consultaCatalogos.Cat_Dependencias')),
                ('EdoNacimiento', models.ForeignKey(to='consultaCatalogos.Cat_Estados')),
                ('FuentesRecurso', models.ForeignKey(to='consultaCatalogos.Cat_Fuentes')),
                ('LocDondeSePagaBeneficio', models.ForeignKey(related_name='Localidad_Pago_Beneficio', to='consultaCatalogos.Cat_Localidad')),
                ('LocResidActorSocial', models.ManyToManyField(related_name='Localidad_Actor', to='consultaCatalogos.Cat_Localidad')),
                ('LocResidDelIntegrante', models.ManyToManyField(related_name='Localidad_Integrante', to='consultaCatalogos.Cat_Localidad')),
                ('MesPeriodoPago', models.ForeignKey(to='consultaCatalogos.Cat_Mes')),
                ('MunDondeSePagaBeneficio', models.ForeignKey(to='consultaCatalogos.Cat_Municipio')),
                ('OtroDocId', models.ForeignKey(to='consultaCatalogos.Cat_Identificacion')),
                ('PeriodicidadEntregaBeneficio', models.ForeignKey(to='consultaCatalogos.Cat_Frecuencia')),
                ('Sexo', models.ForeignKey(to='consultaCatalogos.Cat_Sexo')),
                ('TipoApoyo', models.ForeignKey(to='consultaCatalogos.Cat_TipoApoyo')),
                ('Trimestre', models.ForeignKey(to='consultaCatalogos.Cat_Periodos')),
            ],
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
