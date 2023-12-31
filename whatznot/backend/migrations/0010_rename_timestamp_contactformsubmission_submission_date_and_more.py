# Generated by Django 4.2.4 on 2023-09-02 14:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('backend', '0009_contactformsubmission'),
    ]

    operations = [
        migrations.RenameField(
            model_name='contactformsubmission',
            old_name='timestamp',
            new_name='submission_date',
        ),
        migrations.RemoveField(
            model_name='contactformsubmission',
            name='agree_to_newsletters',
        ),
        migrations.AlterField(
            model_name='contactformsubmission',
            name='budget',
            field=models.DecimalField(decimal_places=2, max_digits=10),
        ),
        migrations.AlterField(
            model_name='contactformsubmission',
            name='name',
            field=models.CharField(max_length=100),
        ),
        migrations.AlterField(
            model_name='contactformsubmission',
            name='phone_number',
            field=models.CharField(max_length=15),
        ),
    ]
