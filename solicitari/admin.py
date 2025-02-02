from django.contrib import admin
from .models import Solicitari

@admin.register(Solicitari)
class SolicitariAdmin(admin.ModelAdmin):
    """
    Configurarea modelului Solicitari în Django Admin.
    """
    # Câmpuri doar pentru citire
    readonly_fields = ("nr_solicit", "data_solicit")

    # Câmpuri afișate în lista de obiecte (doar cele care există în modelul Solicitari)
    list_display = (
        "rezolvat",
        "nr_solicit",
        "dataS",
        "dataP",
        "get_ora_program",  # Metodă definită mai jos
        "get_operator",      # Metodă definită mai jos
        "get_nume",
        "get_prenume",
        "get_telefon",
        "get_judet",
        "get_localitate",
        "get_strada",
        "nr",
        "bloc",
        "sc",
        "ap",
        "tip_interventie",
        "producator",
        "model",
    )

    # Câmpuri cu funcționalitate de completare automată
    autocomplete_fields = ["operator", "judet", "localitate", "strada"]

    # Număr de rânduri afișate pe pagină
    list_per_page = 10

    # Organizarea câmpurilor în secțiuni
    fieldsets = (
        (
            "INFORMAȚII GENERALE",
            {
                "fields": (
                    "nr_solicit",
                    "data_solicit",
                    ("data_program", "ora_program"),
                ),
                "classes": ("form-row",),
            },
        ),
        (
            "ALOCARE OPERATOR",
            {
                "fields": ("operator",),
                "classes": ("form-row",),
            },
        ),
        (
            "BENEFICIAR",
            {
                "fields": (
                    ("nume", "prenume"),
                    "telefon",
                ),
                "classes": ("form-row",),
            },
        ),
        (
            "ADRESĂ",
            {
                "fields": (
                    ("judet", "localitate"),
                    ("strada", "nr", "bloc"),
                    ("sc", "ap"),
                ),
                "classes": ("form-row",),
            },
        ),
        (
            "DETALII TEHNICE",
            {
                "fields": (
                    ("tip_interventie", "producator", "model"),
                ),
                "classes": ("form-row",),
            },
        ),
        (
            "ALTE DETALII",
            {
                "fields": ("observatii",),
                "classes": ("form-row",),
            },
        ),
        (
            "STARE",
            {
                "fields": ("rezolvat",),
                "classes": ("form-row",),
            },
        ),
    )

    def get_queryset(self, request):
        """
        Personalizează queryset-ul pentru a afișa doar solicitările relevante pentru utilizatorul autentificat.
        """
        qs = super().get_queryset(request)
        if request.user.is_superuser:
            return qs
        return qs.filter(operator=request.user)

    # ✅ Funcții pentru afișarea corectă a câmpurilor în Admin

    def get_ora_program(self, obj):
        return obj.ora_program.strftime("%H:%M") if obj.ora_program else "-"
    get_ora_program.short_description = "Ora Programării"

    def get_operator(self, obj):
        return obj.operator.username if obj.operator else "-"
    get_operator.short_description = "Operator"

    def get_nume(self, obj):
        return obj.nume if obj.nume else "-"
    get_nume.short_description = "Nume"

    def get_prenume(self, obj):
        return obj.prenume if obj.prenume else "-"
    get_prenume.short_description = "Prenume"

    def get_telefon(self, obj):
        return obj.telefon if obj.telefon else "-"
    get_telefon.short_description = "Telefon"

    def get_judet(self, obj):
        return obj.judet.nume if obj.judet else "-"
    get_judet.short_description = "Județ"

    def get_localitate(self, obj):
        return obj.localitate.nume if obj.localitate else "-"
    get_localitate.short_description = "Localitate"

    def get_strada(self, obj):
        return obj.strada.nume if obj.strada else "-"
    get_strada.short_description = "Stradă"

    def dataP(self, obj):
        """
        Formatează data programării ca dd.mm.yyyy și o afișează în Admin sub numele 'DataP'.
        """
        return obj.data_program.strftime("%d.%m.%Y") if obj.data_program else "-"
    dataP.short_description = "Data Programării"

    def dataS(self, obj):
        """
        Formatează data solicitării ca dd.mm.yyyy și o afișează în Admin sub numele 'DataS'.
        """
        return obj.data_solicit.strftime("%d.%m.%Y") if obj.data_solicit else "-"
    dataS.short_description = "Data Solicitării"

