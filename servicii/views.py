from django.shortcuts import render, get_object_or_404
from .models import Serviciu


def servicii_home(request):
    """Pagina principală servicii, grupează pe categorii."""
    return render(request, "servicii/index.html", {
        "termice": Serviciu.objects.filter(categorie="termice", activ=True),
        "clima": Serviciu.objects.filter(categorie="clima", activ=True),
    })


def centrale_termice_view(request):
    """Pagina centrală pentru centrale termice (sidebar + serviciu selectat)."""
    servicii_termice = Serviciu.objects.filter(categorie="termice", activ=True)

    # Selectăm un serviciu implicit
    serviciu_selectat = Serviciu.objects.filter(slug="test", activ=True).first()
    if not serviciu_selectat and servicii_termice.exists():
        serviciu_selectat = servicii_termice.first()

    preturi_standard = preturi_suplimentare = None
    if serviciu_selectat:
        preturi_standard = serviciu_selectat.preturi.filter(categorie="standard")
        preturi_suplimentare = serviciu_selectat.preturi.filter(categorie="suplimentar")

    return render(request, "partials/centrale_termice.html", {
        "servicii_termice": servicii_termice,
        "serviciu_selectat": serviciu_selectat,
        "preturi_standard": preturi_standard,
        "preturi_suplimentare": preturi_suplimentare,
        "template_content": f"servicii/continut/{serviciu_selectat.slug}.html" if serviciu_selectat else None,
    })


def serviciu_detail_view(request, slug):
    """Detaliu pentru un serviciu termic după slug (include fișier HTML + prețuri din DB)."""
    servicii_termice = Serviciu.objects.filter(categorie="termice", activ=True)
    serviciu_selectat = get_object_or_404(Serviciu, slug=slug, activ=True)

    preturi_standard = serviciu_selectat.preturi.filter(categorie="standard")
    preturi_suplimentare = serviciu_selectat.preturi.filter(categorie="suplimentar")

    return render(request, "partials/centrale_termice.html", {
        "servicii_termice": servicii_termice,
        "serviciu_selectat": serviciu_selectat,
        "preturi_standard": preturi_standard,
        "preturi_suplimentare": preturi_suplimentare,
        "template_content": f"servicii/continut/{slug}.html",
    })


def serviciu_detail_clima_view(request, slug):
    """Detaliu pentru un serviciu de aer condiționat după slug."""
    servicii_clima = Serviciu.objects.filter(categorie="clima", activ=True)
    serviciu_selectat = get_object_or_404(Serviciu, slug=slug, activ=True)

    preturi_standard = serviciu_selectat.preturi.filter(categorie="standard")
    preturi_suplimentare = serviciu_selectat.preturi.filter(categorie="suplimentar")

    return render(request, "partials/aer_conditionat.html", {
        "servicii_clima": servicii_clima,
        "serviciu_selectat": serviciu_selectat,
        "preturi_standard": preturi_standard,
        "preturi_suplimentare": preturi_suplimentare,
        "template_content": f"servicii/continut/{slug}.html",
    })


def aer_conditionat_view(request):
    """Pagina centrală pentru aer condiționat (sidebar + serviciu selectat)."""
    servicii_clima = Serviciu.objects.filter(categorie="clima", activ=True)

    serviciu_selectat = Serviciu.objects.filter(slug="test-clima", activ=True).first()
    if not serviciu_selectat and servicii_clima.exists():
        serviciu_selectat = servicii_clima.first()

    preturi_standard = preturi_suplimentare = None
    if serviciu_selectat:
        preturi_standard = serviciu_selectat.preturi.filter(categorie="standard")
        preturi_suplimentare = serviciu_selectat.preturi.filter(categorie="suplimentar")

    return render(request, "partials/aer_conditionat.html", {
        "servicii_clima": servicii_clima,
        "serviciu_selectat": serviciu_selectat,
        "preturi_standard": preturi_standard,
        "preturi_suplimentare": preturi_suplimentare,
        "template_content": f"servicii/continut/{serviciu_selectat.slug}.html" if serviciu_selectat else None,
    })
