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

    class Meta:
        ordering = ["nume", "prenume"]  # 🔹 Adăugăm sortare pentru evitarea erorii

    def __str__(self):
        return f"{self.nume} {self.prenume}"
