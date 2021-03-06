# Generated by Django 3.2.9 on 2021-12-09 19:18

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    operations = [
        migrations.CreateModel(
            name='VGSales',
            fields=[
                ('rank', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.TextField()),
                ('platform', models.CharField(blank=True, max_length=16, null=True)),
                ('year', models.PositiveIntegerField(blank=True, null=True)),
                ('genre', models.CharField(blank=True, max_length=25, null=True)),
                ('publisher', models.CharField(blank=True, max_length=50, null=True)),
                ('na_sales', models.FloatField()),
                ('eu_sales', models.FloatField()),
                ('jp_sales', models.FloatField()),
                ('other_sales', models.FloatField()),
                ('global_sales', models.FloatField()),
            ],
            options={
                'db_table': 'vgsales',
                'managed': True,
            },
        ),
    ]
