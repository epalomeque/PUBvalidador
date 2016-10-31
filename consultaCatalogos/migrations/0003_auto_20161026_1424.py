# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('consultaCatalogos', '0002_auto_20161026_1350'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cat_frecuencia',
            name='descripFrecuencia',
            field=models.CharField(max_length=45, blank=True),
        ),
    ]
