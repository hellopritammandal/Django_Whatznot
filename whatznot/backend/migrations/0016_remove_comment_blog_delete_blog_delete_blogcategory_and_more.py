# Generated by Django 4.2.4 on 2023-09-02 23:01

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('backend', '0015_rename_area_servicelocation'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='comment',
            name='blog',
        ),
        migrations.DeleteModel(
            name='Blog',
        ),
        migrations.DeleteModel(
            name='BlogCategory',
        ),
        migrations.DeleteModel(
            name='BlogTag',
        ),
        migrations.DeleteModel(
            name='Comment',
        ),
    ]