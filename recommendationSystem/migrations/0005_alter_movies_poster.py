# Generated by Django 3.2.5 on 2022-05-04 11:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('recommendationSystem', '0004_alter_movies_table'),
    ]

    operations = [
        migrations.AlterField(
            model_name='movies',
            name='poster',
            field=models.FileField(upload_to='movies/'),
        ),
    ]
