# Generated by Django 4.0.5 on 2023-03-09 04:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('bisrmutiapp', '0004_remove_customuser_is_staff_customuser_email_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='customuser',
            name='is_staff',
            field=models.BooleanField(default=False),
        ),
    ]
