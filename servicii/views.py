from django.shortcuts import render, get_object_or_404
from django.templatetags.static import static
from .models import Serviciu


def _ensure_seo_context(request, context, default_desc: str):
    """Completează contextul cu seo_title, seo_description și og_image dacă lipsesc."""
    if "seo_title" not in context:
        serviciu = context.get("serviciu_selectat")
        if serviciu:
            title = getattr(serviciu, "meta_title", None) or getattr(serviciu, "titlu", "Serviciu")
            desc = getattr(serviciu, "meta_description", None) or default_desc
            context.update({
                "seo_title": f"{title} - BBINSTALL",
                "seo_description": desc,
                "og_image": request.build_absolute_uri(static("img/og-default.jpg")),
            })
        else:
            context.update({
                "seo_title": "BBINSTALL – Servicii termice și climatizare",
                "seo_description": default_desc,
                "og_image": request.build_absolute_uri(static("img/og-default.jpg")),
            })
    return context



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

    context = {
        "servicii_termice": servicii_termice,
        "serviciu_selectat": serviciu_selectat,
        "preturi_standard": preturi_standard,
        "preturi_suplimentare": preturi_suplimentare,
        "template_content": f"servicii/continut/{serviciu_selectat.slug}.html" if serviciu_selectat else None,
    }
    if serviciu_selectat:
        context.update({
            "page_title": serviciu_selectat.meta_title or serviciu_selectat.titlu,
            "meta_description": serviciu_selectat.meta_description,
            "meta_keywords": serviciu_selectat.meta_keywords,
        })

    context = _ensure_seo_context(request, context, "Servicii centrale termice în Drobeta-Turnu Severin. Prețuri și detalii.")
    return render(request, "partials/centrale-termice.html", context)





def serviciu_detail_view(request, slug):
    """Detaliu pentru un serviciu termic după slug (include fișier HTML + prețuri din DB)."""
    servicii_termice = Serviciu.objects.filter(categorie="termice", activ=True)
    serviciu_selectat = get_object_or_404(Serviciu, slug=slug, activ=True)

    preturi_standard = serviciu_selectat.preturi.filter(categorie="standard")
    preturi_suplimentare = serviciu_selectat.preturi.filter(categorie="suplimentar")

    context = {
        "servicii_termice": servicii_termice,
        "serviciu_selectat": serviciu_selectat,
        "preturi_standard": preturi_standard,
        "preturi_suplimentare": preturi_suplimentare,
        "template_content": f"servicii/continut/{slug}.html",
    }
    context.update({
        "page_title": serviciu_selectat.meta_title or serviciu_selectat.titlu,
        "meta_description": serviciu_selectat.meta_description,
        "meta_keywords": serviciu_selectat.meta_keywords,
    })
    context = _ensure_seo_context(request, context, "Servicii centrale termice în Drobeta-Turnu Severin. Prețuri și detalii.")
    return render(request, "partials/centrale-termice.html", context)





def serviciu_detail_clima_view(request, slug):
    """Detaliu pentru un serviciu de aer condiționat după slug."""
    servicii_clima = Serviciu.objects.filter(categorie="clima", activ=True)
    serviciu_selectat = get_object_or_404(Serviciu, slug=slug, activ=True)

    preturi_standard = serviciu_selectat.preturi.filter(categorie="standard")
    preturi_suplimentare = serviciu_selectat.preturi.filter(categorie="suplimentar")

    context = {
        "servicii_clima": servicii_clima,
        "serviciu_selectat": serviciu_selectat,
        "preturi_standard": preturi_standard,
        "preturi_suplimentare": preturi_suplimentare,
        "template_content": f"servicii/continut/{slug}.html",
    }
    context.update({
        "page_title": serviciu_selectat.meta_title or serviciu_selectat.titlu,
        "meta_description": serviciu_selectat.meta_description,
        "meta_keywords": serviciu_selectat.meta_keywords,
    })
    context = _ensure_seo_context(request, context, "Servicii aer condiționat în Drobeta-Turnu Severin. Prețuri și detalii.")
    return render(request, "partials/aer-conditionat.html", context)





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

    context = {
        "servicii_clima": servicii_clima,
        "serviciu_selectat": serviciu_selectat,
        "preturi_standard": preturi_standard,
        "preturi_suplimentare": preturi_suplimentare,
        "template_content": f"servicii/continut/{serviciu_selectat.slug}.html" if serviciu_selectat else None,
    }
    if serviciu_selectat:
        context.update({
            "page_title": serviciu_selectat.meta_title or serviciu_selectat.titlu,
            "meta_description": serviciu_selectat.meta_description,
            "meta_keywords": serviciu_selectat.meta_keywords,
        })

    context = _ensure_seo_context(request, context, "Servicii aer condiționat în Drobeta-Turnu Severin. Prețuri și detalii.")
    return render(request, "partials/aer-conditionat.html", context)



