from django.db import models


class Beneficiar(models.Model):
    nume = models.CharField(max_length=255, db_index=True)
    prenume = models.CharField(max_length=255, db_index=True)
    telefon = models.CharField(max_length=15, db_index=True)
    tip_client = models.CharField(
        max_length=20,
        choices=[("fizic", "Persoana Fizică"), ("juridic", "Persoana Juridică")],
        verbose_name="Tip Client",
    )

    def __str__(self):
        # Afișează numele complet și telefonul pentru a fi mai clar în autocomplete
        return f"{self.nume} {self.prenume} ({self.telefon})"
