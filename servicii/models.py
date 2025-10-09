from django.db import models


class Serviciu(models.Model):
    CATEGORII = [
        ('termice', 'Centrale Termice'),
        ('clima', 'Aer Condiționat'),
    ]

    titlu = models.CharField("Titlu", max_length=100)
    slug = models.SlugField("Slug", unique=True)
    categorie = models.CharField("Categorie", max_length=10, choices=CATEGORII)
    activ = models.BooleanField("Activ", default=True)

    # SEO
    meta_title = models.CharField("Meta Title", max_length=160, blank=True, null=True)
    meta_description = models.CharField("Meta Description", max_length=180, blank=True, null=True)
    meta_keywords = models.CharField("Meta Keywords", max_length=255, blank=True, null=True)

    def __str__(self):
        return self.titlu


class PretServiciu(models.Model):
    CATEGORII = [
        ("standard", "Standard"),
        ("suplimentar", "Suplimentar"),
    ]

    serviciu = models.ForeignKey(
        Serviciu,
        on_delete=models.CASCADE,
        related_name="preturi",
        verbose_name="Serviciu"
    )
    denumire = models.CharField("Denumire serviciu", max_length=200)
    pret = models.DecimalField("Preț (lei)", max_digits=8, decimal_places=2)
    um = models.CharField("Unitatea de măsură", max_length=50, blank=True, null=True)  # 👈 adăugat
    categorie = models.CharField(
        "Categorie preț",
        max_length=20,
        choices=CATEGORII,
        default="standard"
    )

    def __str__(self):
        return f"{self.denumire} - {self.pret} lei/{self.um or ''} ({self.get_categorie_display()})"

