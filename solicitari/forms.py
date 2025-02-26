from django import forms
from dal import autocomplete
from .models import Solicitari, Beneficiar

class AdaugaSolicitareForm(forms.ModelForm):
    class Meta:
        model = Solicitari
        fields = ["nume", "prenume", "telefon", "tip_client"]


class SolicitariForm(forms.ModelForm):
    class Meta:
        model = Solicitari
        fields = "__all__"

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        if self.instance.pk:
            # 🔹 Dacă este în Change, facem `nume` editabil ca TextInput
            self.fields["nume"] = forms.CharField(
                widget=forms.TextInput(attrs={"class": "form-control"}),
                required=True,
            )
        else:
            # 🔹 Dacă este în Add, facem `nume` autocomplete
            self.fields["nume"] = forms.CharField(
                widget=autocomplete.ListSelect2(
                    url="nume-autocomplete",
                    attrs={"data-allow-clear": "true", "data-placeholder": "Selectează sau introdu un nume"},
                ),
                required=True,
            )


class BeneficiarForm(forms.ModelForm):
    class Meta:
        model = Beneficiar
        fields = ["nume", "prenume", "telefon", "tip_client"]
