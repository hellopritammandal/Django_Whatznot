# Generated by Django 4.2.4 on 2023-09-03 14:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('backend', '0019_remove_portfolio_category_portfolio_category'),
    ]

    operations = [
        migrations.AddField(
            model_name='portfolio',
            name='solution',
            field=models.TextField(default=1),
            preserve_default=False,
        ),
    ]