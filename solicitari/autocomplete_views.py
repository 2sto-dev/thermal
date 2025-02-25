from dal import autocomplete
from django.http import JsonResponse
from beneficiari.models import Beneficiar
from solicitari.models import Solicitari


class NumeAutocomplete(autocomplete.Select2QuerySetView):
    """
    Autocomplete pentru căutarea în tabelele Solicitari și Beneficiari.
    Se returnează numele și tip_client; dacă nu se găsește niciun rezultat,
    se returnează doar numele introdus (fără textul 'Adaugă ...').
    """

    def get_queryset(self):
        if not self.request.user.is_authenticated:
            return Beneficiar.objects.none()

        search_term = self.q or ""
        try:
            # Obține rezultatele cu câmpurile 'nume' și 'tip_client'
            qs_solicitari = list(
                Solicitari.objects.filter(nume__icontains=search_term).values("nume", "tip_client")
            )
            qs_beneficiari = list(
                Beneficiar.objects.filter(nume__icontains=search_term).values("nume", "tip_client")
            )

            # Combină rezultatele
            combined = qs_solicitari + qs_beneficiari

            # Elimină duplicatele pe baza numelui; dacă același nume apare, se păstrează primul tip_client întâlnit
            results_dict = {}
            for item in combined:
                if item["nume"] not in results_dict:
                    results_dict[item["nume"]] = item["tip_client"]

            results = [
                {"id": nume, "text": nume, "tip_client": tip_client}
                for nume, tip_client in results_dict.items()
            ]

            # Dacă nu s-au găsit rezultate, returnează doar numele introdus
            if not results and search_term:
                results.append({"id": search_term, "text": search_term, "tip_client": ""})

            return results

        except Exception as e:
            print(f"❌ Eroare în NumeAutocomplete: {e}")
            return []

    def render_to_response(self, context, **response_kwargs):
        return JsonResponse(
            {"results": self.get_queryset(), "pagination": {"more": False}}
        )
