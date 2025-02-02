from django.db import models


class Anexa3(models.Model):
    titlu = models.CharField(max_length=255, verbose_name="Titlu")
    descriere = models.TextField(blank=True, null=True, verbose_name="Descriere")
    data_creare = models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name = "Anexa 3"
        verbose_name_plural = "Anexe 3"

    def __str__(self):
        return self.titlu
