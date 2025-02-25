from django import forms
from dal import autocomplete
from .models import Solicitari, Beneficiar

class AdaugaSolicitareForm(forms.ModelForm):
    class Meta:
        model = Solicitari
        fields = ["nume", "prenume", "telefon", "tip_client"]


class SolicitariForm(forms.ModelForm):
    nume = forms.CharField(
        widget=autocomplete.ListSelect2(
            url="nume-autocomplete",
            attrs={"data-allow-clear": "true", "data-placeholder": "Selectează sau introdu un nume"},
        ),
        required=True,
    )

    data_solicitare = forms.DateField(required=False, widget=forms.DateInput(attrs={"type": "date"}))

    status_solicitare = forms.CharField(required=False, widget=forms.TextInput(attrs={"readonly": "readonly"}))

    class Meta:
        model = Solicitari
        fields = "__all__"

    def clean_nume(self):
        nume = self.cleaned_data.get("nume").strip()

        # 🔹 Elimină prefixul `adauga_nume_` dacă există
        if nume.startswith("adauga_nume_"):
            nume = nume.replace("adauga_nume_", "").strip()

        # 🔹 NU mai creăm beneficiar aici, doar verificăm dacă există
        if not Beneficiar.objects.filter(nume__iexact=nume).exists():
            print(f"⚠️ Numele {nume} NU există în Beneficiari!")  # Debugging
        else:
            print(f"✅ Numele {nume} există deja în Beneficiari.")  # Debugging

        return nume


class BeneficiarForm(forms.ModelForm):
    class Meta:
        model = Beneficiar
        fields = ["nume", "prenume", "telefon", "tip_client"]
