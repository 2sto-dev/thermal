import os
import django
import xml.etree.ElementTree as ET

# Configurează Django
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "goGAS.settings")  # Schimbă cu numele corect al proiectului tău
django.setup()

from adrese.models import Judet, TipLocalitate, Localitate  # Asigură-te că modelul este corect

def import_localitati_from_xml(file_path):
    tree = ET.parse(file_path)
    root = tree.getroot()

    for rand in root.findall('rand'):
        try:
            cod = int(rand.find('COD').text)
            jud_cod = int(rand.find('JUD_COD').text)
            denumire = rand.find('DENUMIRE').text.strip()
            cod_politie = rand.find('Cod_POLITIE').text
            tip_cod = rand.find('TPL_COD').text.strip()
            cod_postal = rand.find('COD_POSTAL').text
            loc_jud_cod = rand.find('LOC_JUD_COD').text
            loc_cod = rand.find('LOC_COD').text
            are_primarie = rand.find('ARE_PRIMARIE').text.strip() == 'A'
            cod_fiscal_primarie = rand.find('COD_FISCAL_PRIMARIE').text
            cod_politie_tata = rand.find('COD_POLITIE_TATA').text
            sar_cod_mf = rand.find('SAR_COD_MF').text

            # Găsim județul
            judet = Judet.objects.get(cod=jud_cod)

            # Găsim tipul de localitate
            tip_localitate = TipLocalitate.objects.filter(cod=tip_cod).first()

            # Găsim localitatea părinte (dacă există)
            loc_jud_cod_obj = None
            if loc_jud_cod and loc_jud_cod != "0":
                loc_jud_cod_obj = Localitate.objects.filter(cod=int(loc_jud_cod)).first()

            localitate, created = Localitate.objects.update_or_create(
                cod=cod,
                defaults={
                    'judet': judet,
                    'denumire': denumire,
                    'cod_politie': int(cod_politie) if cod_politie else None,
                    'tip_localitate': tip_localitate,
                    'cod_postal': cod_postal if cod_postal and cod_postal != "0" else None,
                    'loc_jud_cod': loc_jud_cod_obj,
                    'loc_cod': int(loc_cod) if loc_cod and loc_cod != "0" else None,
                    'are_primarie': are_primarie,
                    'cod_fiscal_primarie': cod_fiscal_primarie if cod_fiscal_primarie and cod_fiscal_primarie != "0" else None,
                    'cod_politie_tata': int(cod_politie_tata) if cod_politie_tata and cod_politie_tata != "0" else None,
                    'sar_cod_mf': sar_cod_mf if sar_cod_mf else None,
                }
            )

            print(f"{'Creat' if created else 'Actualizat'}: {localitate}")

        except Exception as e:
            print(f"Eroare la importul localității cu cod {rand.find('COD').text}: {e}")

# Rulează importul
import_localitati_from_xml(r"C:\dev\aplicatii\goGAS\data\nomLocalitati.xml")

