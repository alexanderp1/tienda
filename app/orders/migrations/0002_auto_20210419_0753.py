# Generated by Django 3.1.5 on 2021-04-19 12:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='order',
            name='comprado',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='order',
            name='pendiente',
            field=models.BooleanField(default=True),
        ),
    ]
