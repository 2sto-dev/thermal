from django.contrib import admin
from raportare.models.anexa3 import Anexa3


@admin.register(Anexa3)
class Anexa3Admin(admin.ModelAdmin):
    list_display = ["titlu", "data_creare"]
    search_fields = ["titlu"]
