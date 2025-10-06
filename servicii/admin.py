from django.contrib import admin
from .models import Serviciu, PretServiciu


class PretServiciuInline(admin.TabularInline):
    model = PretServiciu
    extra = 1  # câte rânduri goale să apară implicit
    fields = ("denumire", "pret")
    ordering = ("denumire",)


@admin.register(Serviciu)
class ServiciuAdmin(admin.ModelAdmin):
    list_display = ("titlu", "categorie", "activ")
    search_fields = ("titlu", "slug")
    prepopulated_fields = {"slug": ("titlu",)}
    ordering = ("categorie", "titlu")

    fieldsets = (
        ("Informații generale", {
            "fields": ("titlu", "slug", "categorie", "activ"),
            "description": "Detalii de bază despre serviciu."
        }),
    )

    inlines = [PretServiciuInline]


@admin.register(PretServiciu)
class PretServiciuAdmin(admin.ModelAdmin):
    list_display = ("denumire", "pret", "serviciu")
    list_filter = ("serviciu",)
    search_fields = ("denumire",)
    ordering = ("serviciu", "denumire")
