# Generated by Django 3.2.5 on 2022-05-03 11:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('recommendationSystem', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='artists',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'artists',
            },
        ),
        migrations.CreateModel(
            name='genres',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('description', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'genres',
            },
        ),
    ]