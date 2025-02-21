from django.http import JsonResponse
from django.views.decorators.csrf import csrf_protect
from solicitari.models import Solicitari
from beneficiari.models import Beneficiar
from django.shortcuts import render
from django.views import View
from django.db import transaction
from .forms import AdaugaSolicitareForm
from solicitari.models import Beneficiar

class AdaugaBeneficiar(View):
    def post(self, request, *args, **kwargs):
        nume = request.POST.get("nume")
        prenume = request.POST.get("prenume")
        telefon = request.POST.get("telefon")
        tip_client = request.POST.get("tip_client")

        if Beneficiar.objects.filter(nume=nume).exists():
            return JsonResponse({"success": False, "message": "Numele există deja."})

        beneficiar = Beneficiar.objects.create(
            nume=nume, prenume=prenume, telefon=telefon, tip_client=tip_client
        )

        return JsonResponse({"success": True, "nume": beneficiar.nume})



def beneficiar_details(request):
    nume = request.GET.get("nume")
    if not nume:
        return JsonResponse({"error": "Numele este necesar"}, status=400)

    beneficiari = Beneficiar.objects.filter(nume__icontains=nume)
    solicitari = Solicitari.objects.filter(nume__icontains=nume)

    if not beneficiari.exists() and not solicitari.exists():
        return JsonResponse({"nou": True, "message": "Numele nu există. Adăugați manual."})

    rezultate = []
    for beneficiar in beneficiari:
        rezultate.append({
            "id": f"b_{beneficiar.id}",
            "nume": beneficiar.nume,
            "prenume": beneficiar.prenume,
            "telefon": beneficiar.telefon,
            "tip_client": beneficiar.tip_client,
            "sursa": "beneficiar",
        })

    for solicitare in solicitari:
        rezultate.append({
            "id": f"s_{solicitare.id}",
            "nume": solicitare.nume,
            "prenume": solicitare.prenume,
            "telefon": solicitare.telefon,
            "tip_client": solicitare.tip_client,
            "sursa": "solicitare",
        })

    return JsonResponse(rezultate, safe=False)


@csrf_protect
def adauga_solicitare(request):
    if request.method == "POST":
        form = AdaugaSolicitareForm(request.POST)
        if form.is_valid():
            form.save()
            return JsonResponse({"success": True, "message": "Solicitarea a fost adăugată cu succes!"})
        return JsonResponse({"error": form.errors}, status=400)
    return JsonResponse({"error": "Metoda trebuie să fie POST!"}, status=405)
