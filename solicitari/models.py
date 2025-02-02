from django.db import models, transaction
from django.contrib.auth.models import User
from django.utils.timezone import now

class Solicitari(models.Model):
    
    rezolvat = models.BooleanField(default=False, verbose_name="REZOLVAT")
    nr_solicit = models.CharField(
        max_length=50, verbose_name="NUMĂR SOLICITARE", unique=True, editable=False
    )
    data_solicit = models.DateField(verbose_name="DataS", default=now)

    operator = models.ForeignKey(
        User,
        related_name="solicitari_operator",
        on_delete=models.SET_NULL,
        null=True,
        blank=True,
        verbose_name="OPERATOR INTERVENȚIE",
    )

    nume = models.CharField(max_length=255, blank=True, null=True, verbose_name="Nume Beneficiar")
    prenume = models.CharField(max_length=255, blank=True, null=True, verbose_name="Prenume")
    telefon = models.CharField(max_length=20, blank=True, null=True, verbose_name="Telefon")

    judet = models.ForeignKey(
        "adrese.Judet",
        on_delete=models.SET_NULL,
        null=True,
        blank=True,
        related_name="solicitari_judet",
        verbose_name="Județ",
    )
    localitate = models.ForeignKey(
        "adrese.Localitate",
        on_delete=models.SET_NULL,
        null=True,
        blank=True,
        related_name="solicitari_localitate",
        verbose_name="Localitate",
    )
    strada = models.ForeignKey(
        "adrese.Strada",
        on_delete=models.SET_NULL,
        null=True,
        blank=True,
        related_name="solicitari_strada",
        verbose_name="Stradă",
    )

    nr = models.CharField(max_length=10, blank=True, null=True, verbose_name="Număr")
    bloc = models.CharField(max_length=10, blank=True, null=True, verbose_name="Bloc")
    sc = models.CharField(max_length=10, blank=True, null=True, verbose_name="Scară")
    ap = models.CharField(max_length=10, blank=True, null=True, verbose_name="Apartament")

    tip_interventie = models.CharField(max_length=100, verbose_name="Tip intervenție")
    producator = models.CharField(max_length=100, blank=True, null=True, verbose_name="Producător Centrală")
    model = models.CharField(max_length=100, blank=True, null=True, verbose_name="Model Centrală")
    
    data_program = models.DateField(verbose_name="Data programarii")
    ora_program = models.TimeField(verbose_name="Ora programării")
    observatii = models.TextField(blank=True, null=True, verbose_name="Observații")

    class Meta:
        verbose_name = "Solicitare"
        verbose_name_plural = "Solicitări"
        ordering = ["-data_solicit"]  # Sortează cele mai recente solicitări primele

    def __str__(self):
        return f"{self.nr_solicit} - {self.data_program_formatata}"

    @property
    def data_program_formatata(self):
        """Returnează data programării în format dd.mm.yyyy"""
        return self.data_program.strftime("%d.%m.%Y") if self.data_program else None
    
    @property
    def data_solicit_formatata(self):
        """Returnează data solicitării în format dd.mm.yyyy"""
        return self.data_solicit.strftime("%d.%m.%Y") if self.data_solicit else None

    def save(self, *args, **kwargs):
        """Transformă textul relevant în uppercase și generează numărul de solicitare"""
        self.nume = self.nume.upper() if self.nume else None
        self.tip_interventie = self.tip_interventie.upper() if self.tip_interventie else None
        self.producator = self.producator.upper() if self.producator else None
        self.model = self.model.upper() if self.model else None
        self.observatii = self.observatii.upper() if self.observatii else None

        # Generare nr_solicit
        if not self.nr_solicit:
            with transaction.atomic():
                last_solicitare = Solicitari.objects.select_for_update().order_by("-id").first()
                nr_solicit = (
                    int(last_solicitare.nr_solicit.split("-")[-1]) + 1
                    if last_solicitare and last_solicitare.nr_solicit.startswith("BB-")
                    else 1
                )
                self.nr_solicit = f"BB-{nr_solicit:06d}"

        super().save(*args, **kwargs)
