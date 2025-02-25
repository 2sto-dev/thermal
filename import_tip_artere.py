import os
import django
import xml.etree.ElementTree as ET

# Configurează Django
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "goGAS.settings")  # Schimbă cu numele corect al proiectului tău
django.setup()

from adrese.models import TipArtera  # Asigură-te că modelul este corect

def import_tip_artere_from_xml(file_path):
    tree = ET.parse(file_path)
    root = tree.getroot()

    for rand in root.findall('rand'):
        cod = rand.find('COD').text.strip()
        denumire = rand.find('DENUMIRE').text.strip()

        # Creează sau actualizează tipul de arteră
        tip_artera, created = TipArtera.objects.update_or_create(
            cod=cod,
            defaults={'denumire': denumire}
        )

        print(f"{'Creat' if created else 'Actualizat'}: {tip_artera}")

# Rulează importul

import_tip_artere_from_xml(r"C:\dev\aplicatii\goGAS\data\nomTipArtere.xml")