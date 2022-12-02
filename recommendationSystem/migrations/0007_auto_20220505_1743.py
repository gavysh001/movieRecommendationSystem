# Generated by Django 3.2.5 on 2022-05-05 12:13

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('recommendationSystem', '0006_auto_20220505_1737'),
    ]

    operations = [
        migrations.AlterField(
            model_name='movies',
            name='cast',
            field=models.ManyToManyField(related_name='cast', to='recommendationSystem.Artists'),
        ),
        migrations.AlterField(
            model_name='movies',
            name='genres',
            field=models.ManyToManyField(related_name='genres', to='recommendationSystem.Genres'),
        ),
        migrations.CreateModel(
            name='Reviews',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=255)),
                ('desc', models.TextField(max_length=255)),
                ('date', models.DateTimeField(auto_now=True)),
                ('status', models.CharField(choices=[('p', 'Pending'), ('c', 'Confirmed'), ('d', 'Deleted')], default='p', max_length=1)),
                ('movies', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='recommendationSystem.movies')),
                ('visitors', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='recommendationSystem.visitors')),
            ],
            options={
                'db_table': 'reviews',
            },
        ),
    ]
