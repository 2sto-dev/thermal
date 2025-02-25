from django.db import models
from adrese.models import Judet, Localitate, Artera


class Beneficiar(models.Model):
    nume = models.CharField(max_length=255, db_index=True)
    prenume = models.CharField(max_length=255, db_index=True)
    telefon = models.CharField(max_length=15, db_index=True)
    judet = models.ForeignKey(Judet, on_delete=models.SET_NULL, null=True, blank=True)
    localitate = models.ForeignKey(Localitate, on_delete=models.SET_NULL, null=True, blank=True)
    strada = models.ForeignKey(Artera, on_delete=models.SET_NULL, null=True, blank=True)
    
    nr = models.CharField(max_length=10, blank=True, null=True)  # Numărul străzii
    bloc = models.CharField(max_length=10, blank=True, null=True)  # Blocul
    cod_postal = models.CharField(max_length=20, null=True, blank=True)
    tip_client = models.CharField(
        max_length=20,
        choices=[("fizic", "Persoana Fizică"), ("juridic", "Persoana Juridică")],
        verbose_name="Tip Client",
    )

    class Meta:
        ordering = ["nume", "prenume"]  # 🔹 Adăugăm sortare pentru evitarea erorii

    def __str__(self):
        return f"{self.nume} {self.prenume}"
