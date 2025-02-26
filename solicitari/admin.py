from django.contrib import admin
from .models import Solicitari
from .forms import SolicitariForm

@admin.register(Solicitari)
class SolicitariAdmin(admin.ModelAdmin):
    form = SolicitariForm  # Folosește formularul personalizat

    list_display = [
        "nr_solicit",
        "nume",
        "prenume",
        "telefon",
        "tip_client",
        "judet",
        "localitate",
        "strada",
        "nr",
        "scara",
        "etaj",
        "data_program",
        "producator",
        "rezolvat",
    ]

    search_fields = ["nr_solicit", "nume", "prenume", "telefon"]
    list_filter = ["rezolvat", "data_program"]
    ordering = ["-data_solicit"]
    readonly_fields = ["nr_solicit", "data_solicit"]

    fieldsets = (
        ("INFORMAȚII GENERALE", {
            "fields": ("nr_solicit", "data_solicit", ("data_program", "ora_program")),
            "classes": ("form-row",),
        }),
        ("ALOCARE OPERATOR", {
            "fields": (("operator",),),
            "classes": ("form-row",),
        }),
        ("BENEFICIAR", {
            "fields": (("nume", "prenume"), ("telefon", "tip_client"), ("judet", "localitate", "strada", "nr"), ("bloc", "scara", "etaj")),
            "classes": ("form-row",),
        }),
        ("DETALII TEHNICE", {
            "fields": (("tip_interventie", "producator", "model"),),
            "classes": ("form-row",),
        }),
        ("ALTE DETALII", {
            "fields": ("observatii",),
            "classes": ("form-row",),
        }),
        ("STARE", {
            "fields": ("rezolvat",),
            "classes": ("form-row",),
        }),
    )

    def get_form(self, request, obj=None, **kwargs):
        """
        Asigură că formularul personalizat este folosit și în admin.
        """
        form = super().get_form(request, obj, **kwargs)
        return form