from django.contrib.sitemaps import Sitemap
from django.urls import reverse
from servicii.models import Serviciu


class StaticViewSitemap(Sitemap):
    priority = 0.8
    changefreq = "weekly"

    def items(self):
        return [
            "home",
        ]

    def location(self, item):
        if item == "home":
            return reverse("home")
        return reverse(item)


class ServiceSitemap(Sitemap):
    priority = 0.7
    changefreq = "monthly"

    def items(self):
        # doar serviciile active
        return Serviciu.objects.filter(activ=True)

    def location(self, obj: Serviciu):
        if obj.categorie == "termice":
            return f"/centrale-termice/{obj.slug}/"
        # implicit categoria "clima"
        return f"/aer-conditionat/{obj.slug}/"
