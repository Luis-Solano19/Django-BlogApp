# Generated by Django 5.0.6 on 2024-05-31 04:11

import django.utils.timezone
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('assignments', '0002_socialmedia'),
    ]

    operations = [
        migrations.AddField(
            model_name='socialmedia',
            name='created_at',
            field=models.DateTimeField(auto_now_add=True, default=django.utils.timezone.now),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='socialmedia',
            name='updated_at',
            field=models.DateTimeField(auto_now=True),
        ),
    ]
