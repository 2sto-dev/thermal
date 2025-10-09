
from django.contrib import admin
from django.urls import path, include
from goGAS import views
from goGAS.views import custom_login
from servicii.views import centrale_termice_view  # ✅ Import 
from servicii.views import aer_conditionat_view, serviciu_detail_clima_view
from django.urls import include
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.sitemaps.views import sitemap
from goGAS.sitemaps import StaticViewSitemap, ServiceSitemap
from django.views.generic import TemplateView

sitemaps = {
    "static": StaticViewSitemap,
    "servicii": ServiceSitemap,
}

urlpatterns = [


    path("admin/", admin.site.urls),
    path('i18n/', include('django.conf.urls.i18n')),
    path("admin/login/", custom_login, name="custom_login"),
    path("", include("solicitari.urls")),
    path("adrese/", include("adrese.urls")),
    path("api/", include("raportare.api.urls")),
    path("formular/", views.formular_view, name="formular"),
    path("servicii/", include("servicii.urls")),
    path("solicitari/", include("solicitari.urls")),
        path("centrale-termice/", centrale_termice_view, name="centrale_termice"),  
    path("aer-conditionat/", aer_conditionat_view, name="aer_conditionat"),
    path("aer-conditionat/<slug:slug>/", serviciu_detail_clima_view, name="serviciu_detail_clima"),


 
        path("sitemap.xml", sitemap, {"sitemaps": sitemaps}, name="django.contrib.sitemaps.views.sitemap"),
    path("robots.txt", TemplateView.as_view(template_name="robots.txt", content_type="text/plain")),
]


if settings.DEBUG:

    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)