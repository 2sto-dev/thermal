from django.db import models


class Judet(models.Model):
    id = models.IntegerField(
        primary_key=True
    )  # Setăm un ID fix pentru județul Mehedinți
    nume = models.CharField(max_length=100, unique=True)

    def __str__(self):
        return self.nume

    class Meta:
        verbose_name = "Adaugă Județ"
        verbose_name_plural = "Adaugă Județe"


class Localitate(models.Model):
    judet = models.ForeignKey(
        Judet, on_delete=models.CASCADE, related_name="localitati"
    )  # Legăm localitatea de județ
    JUD_COD = models.CharField(max_length=40)
    COD = models.CharField(max_length=40)
    cod_POLITIE = models.CharField(max_length=24)
    DENUMIRE = models.CharField(max_length=255)
    TPL_COD = models.CharField(max_length=30)

    COD_POSTAL = models.CharField(max_length=20, blank=True, null=True)
    LOC_JUD_COD = models.CharField(max_length=40)
    LOC_COD = models.CharField(max_length=40)

    def __str__(self):
        return self.DENUMIRE

    class Meta:
        verbose_name = "Adaugă Localități"
        verbose_name_plural = "Adaugă Localități"


class Strada(models.Model):
    # Facem `localitate` câmp obligatoriu prin `null=False`
    localitate = models.ForeignKey(
        Localitate, on_delete=models.CASCADE, related_name="strazi", null=False
    )
    LOC_JUD_COD = models.CharField(max_length=40)
    LOC_COD = models.CharField(max_length=10)
    COD = models.CharField(max_length=40)
    COD_POLITIE = models.IntegerField()
    DENUMIRE = models.CharField(max_length=40)
    TAT_COD = models.CharField(max_length=40)
    COD_POSTAL = models.CharField(max_length=40)

    def __str__(self):
        return self.DENUMIRE

    class Meta:
        verbose_name = "Adaugă Strada"
        verbose_name_plural = "Adaugă Strazi"


class CodPostal(models.Model):
    localitate = models.ForeignKey(
        Localitate, on_delete=models.CASCADE, related_name="coduri_postale"
    )
    LOC_JUD_COD = models.CharField(max_length=40)
    LOC_COD = models.CharField(max_length=40)
    COD = models.BigIntegerField(null=True, blank=True)
    BLOC = models.CharField(max_length=40)
    COD_POSTAL = models.BigIntegerField(null=True, blank=True)

    def __str__(self):
        return self.COD_POSTAL


class RelatiiLocalitati(models.Model):
    localitate = models.ForeignKey(
        Localitate, on_delete=models.CASCADE, related_name="relatii"
    )
    loc_jud_cod_nou = models.IntegerField()
    loc_cod_nou = models.IntegerField()

    def __str__(self):
        return f"Relație {self.localitate.COD} -> {self.loc_cod_nou}"
