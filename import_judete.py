import os
import django
import xml.etree.ElementTree as ET

# Configurează Django
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "goGAS.settings")  # Schimbă cu numele corect al proiectului tău
django.setup()

from adrese.models import Judet  # Schimbă 'adrese' cu numele corect al aplicației unde ai modelul Judet

def import_judete_from_xml(file_path):
    tree = ET.parse(file_path)
    root = tree.getroot()

    for rand in root.findall('rand'):
        cod = int(rand.find('COD').text)
        denumire = rand.find('DENUMIRE').text
        auto = rand.find('AUTO').text
        ordine = int(rand.find('ORDINE').text)

        # Creează sau actualizează județul în baza de date
        judet, created = Judet.objects.update_or_create(
            cod=cod,
            defaults={'denumire': denumire, 'auto': auto, 'ordine': ordine}
        )

        print(f"{'Creat' if created else 'Actualizat'}: {judet}")

# Rulează importul cu calea exactă a fișierului XML
import_judete_from_xml(r"C:\dev\aplicatii\goGAS\data\nomJudete.xml")
