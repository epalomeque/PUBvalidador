# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('consultaCatalogos', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='formatopubactor',
            name='ClaveSubprograma',
            field=models.ForeignKey(to='consultaCatalogos.Cat_Subprogramas', blank=True),
        ),
        migrations.AlterField(
            model_name='formatopubactor',
            name='EdoNacimiento',
            field=models.ForeignKey(to='consultaCatalogos.Cat_Estados', blank=True),
        ),
        migrations.AlterField(
            model_name='formatopubactor',
            name='LocDondeSePagaBeneficio',
            field=models.ForeignKey(related_name='Localidad_Pago_Beneficio', default=b'', to='consultaCatalogos.Cat_Localidad'),
        ),
        migrations.RemoveField(
            model_name='formatopubactor',
            name='LocResidActorSocial',
        ),
        migrations.AddField(
            model_name='formatopubactor',
            name='LocResidActorSocial',
            field=models.ForeignKey(related_name='Localidad_Actor', default=b'', to='consultaCatalogos.Cat_Localidad'),
        ),
        migrations.RemoveField(
            model_name='formatopubactor',
            name='LocResidDelIntegrante',
        ),
        migrations.AddField(
            model_name='formatopubactor',
            name='LocResidDelIntegrante',
            field=models.ForeignKey(related_name='Localidad_Integrante', default=b'', to='consultaCatalogos.Cat_Localidad'),
        ),
        migrations.AlterField(
            model_name='formatopubactor',
            name='NumeroExtActor',
            field=models.CharField(max_length=5, blank=True),
        ),
        migrations.AlterField(
            model_name='formatopubactor',
            name='NumeroExtIntegrante',
            field=models.CharField(max_length=5, blank=True),
        ),
        migrations.AlterField(
            model_name='formatopubactor',
            name='NumeroIntActor',
            field=models.CharField(max_length=5, blank=True),
        ),
        migrations.AlterField(
            model_name='formatopubactor',
            name='NumeroIntIntegrante',
            field=models.CharField(max_length=5, blank=True),
        ),
        migrations.AlterField(
            model_name='formatopubactor',
            name='OtroDocId',
            field=models.ForeignKey(to='consultaCatalogos.Cat_Identificacion', blank=True),
        ),
        migrations.AlterField(
            model_name='formatopubactor',
            name='RefDomActor',
            field=models.CharField(max_length=60, blank=True),
        ),
        migrations.AlterField(
            model_name='formatopubactor',
            name='RefDomicilioIntegrante',
            field=models.CharField(max_length=60, blank=True),
        ),
        migrations.AlterField(
            model_name='formatopubactor',
            name='SegundoApellido',
            field=models.CharField(max_length=20, blank=True),
        ),
    ]
