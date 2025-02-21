from django.db import models, transaction
from django.contrib.auth.models import User
from django.utils.timezone import now
from beneficiari.models import Beneficiar
import uuid


class Solicitari(models.Model):
    beneficiar = models.ForeignKey(Beneficiar, on_delete=models.SET_NULL, null=True, blank=True, verbose_name="Beneficiar")

    nume = models.CharField(max_length=255, db_index=True)
    prenume = models.CharField(max_length=255)
    telefon = models.CharField(max_length=15, db_index=True)
    tip_client = models.CharField(
        max_length=20,
        choices=[("fizic", "Persoana Fizică"), ("juridic", "Persoana Juridică")],
        verbose_name="Tip Client",
    )

    rezolvat = models.BooleanField(default=False, verbose_name="REZOLVAT")
    nr_solicit = models.CharField(max_length=50, verbose_name="NUMĂR SOLICITARE", unique=True, editable=False)
    data_solicit = models.DateField(verbose_name="DataS", default=now)

    operator = models.ForeignKey(User, related_name="solicitari_operator", on_delete=models.SET_NULL, null=True, blank=True, verbose_name="OPERATOR INTERVENȚIE")

    tip_interventie = models.CharField(max_length=100, verbose_name="Tip intervenție")
    producator = models.CharField(max_length=100, blank=True, null=True, verbose_name="Producător Centrală")
    model = models.CharField(max_length=100, blank=True, null=True, verbose_name="Model Centrală")

    data_program = models.DateField(null=True, blank=True, verbose_name="Data programării")
    ora_program = models.TimeField(null=True, blank=True, verbose_name="Ora programării")
    observatii = models.TextField(blank=True, null=True, verbose_name="Observații")

    class Meta:
        verbose_name = "Solicitare"
        verbose_name_plural = "Solicitări"
        ordering = ["-data_solicit"]

    def __str__(self):
        return f"Nr.inreg {self.nr_solicit}/{self.data_solicit}"

    def save(self, *args, **kwargs):
        if not self.nr_solicit:
            self.nr_solicit = f"BB-{uuid.uuid4().hex[:6].upper()}"
        super().save(*args, **kwargs)
