from django.contrib import admin
from .models import Solicitari
from .forms import SolicitariForm


@admin.register(Solicitari)
class SolicitariAdmin(admin.ModelAdmin):
    form = SolicitariForm
    list_display = [
        "nr_solicit",
        "nume",
        "prenume",
        "telefon",
        "data_program",
        "producator",
        "rezolvat",
    ]
    search_fields = ["nr_solicit", "nume", "prenume", "telefon"]
    list_filter = ["rezolvat", "data_program"]
    ordering = ["-data_solicit"]
    readonly_fields = ["nr_solicit", "data_solicit"]

    fieldsets = (
        ("INFORMAȚII GENERALE", {"fields": ("nr_solicit", "data_solicit", ("data_program", "ora_program")), "classes": ("form-row",)}),
        ("ALOCARE OPERATOR", {"fields": (("operator",),), "classes": ("form-row",)}),
        ("BENEFICIAR", {"fields": (("nume", "prenume"), "telefon"), "classes": ("form-row",)}),
        ("DETALII TEHNICE", {"fields": (("tip_interventie", "producator", "model"),), "classes": ("form-row",)}),
        ("ALTE DETALII", {"fields": ("observatii",), "classes": ("form-row",)}),
        ("STARE", {"fields": ("rezolvat",), "classes": ("form-row",)}),
    )
