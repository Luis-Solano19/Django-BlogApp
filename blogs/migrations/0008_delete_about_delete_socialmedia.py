# Generated by Django 5.0.6 on 2024-05-31 03:54

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blogs', '0007_remove_socialmedia_heading'),
    ]

    operations = [
        migrations.DeleteModel(
            name='About',
        ),
        migrations.DeleteModel(
            name='SocialMedia',
        ),
    ]
