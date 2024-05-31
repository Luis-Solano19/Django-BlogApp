# Generated by Django 5.0.6 on 2024-05-31 03:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blogs', '0004_about'),
    ]

    operations = [
        migrations.CreateModel(
            name='SocialMedia',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('heading', models.CharField(max_length=50)),
                ('social_media_name', models.CharField(max_length=100)),
                ('social_media_link', models.URLField(unique=True)),
            ],
        ),
    ]
