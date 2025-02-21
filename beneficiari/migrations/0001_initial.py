# Generated by Django 5.1.5 on 2025-02-03 19:30

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = []

    operations = [
        migrations.CreateModel(
            name="Beneficiar",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("nume", models.CharField(db_index=True, max_length=255)),
                ("prenume", models.CharField(db_index=True, max_length=255)),
                ("telefon", models.CharField(db_index=True, max_length=15)),
                (
                    "tip_client",
                    models.CharField(
                        choices=[
                            ("fizic", "Persoana Fizică"),
                            ("juridic", "Persoana Juridică"),
                        ],
                        max_length=20,
                        verbose_name="Tip Client",
                    ),
                ),
            ],
        ),
    ]
