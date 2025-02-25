import os
import django
import xml.etree.ElementTree as ET

# 🔧 Configurează Django
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "goGAS.settings")
django.setup()

from adrese.models import Artera, Judet, Localitate, StareArtera, TipArtera

def get_text(element, field_name):
    """ Returnează textul unui element XML sau None dacă nu există. """
    if element is None or element.text is None:
        print(f"⚠️ Câmpul lipsă: {field_name}")
        return None
    return element.text.strip()

def import_artere_from_xml(file_path):
    """Importă artere dintr-un fișier XML, evitând dublurile și gestionând date lipsă."""
    if not os.path.exists(file_path):
        print(f"❌ Fișierul nu există: {file_path}")
        return

    tree = ET.parse(file_path)
    root = tree.getroot()
    imported_count = 0
    skipped_count = 0
    updated_count = 0

    for rand in root.findall("rand"):
        try:
            cod = get_text(rand.find("COD"), "COD")
            loc_jud_cod = get_text(rand.find("LOC_JUD_COD"), "LOC_JUD_COD")
            loc_cod = get_text(rand.find("LOC_COD"), "LOC_COD")
            denumire = get_text(rand.find("DENUMIRE"), "DENUMIRE")
            cod_politie = get_text(rand.find("COD_POLITIE"), "COD_POLITIE")
            cod_postal = get_text(rand.find("COD_POSTAL"), "COD_POSTAL")
            stare_cod = get_text(rand.find("SAR_COD"), "SAR_COD")
            tip_cod = get_text(rand.find("TAT_COD"), "TAT_COD")

            # 🔎 Verifică dacă datele esențiale lipsesc
            if cod is None or loc_jud_cod is None or loc_cod is None or denumire is None:
                print(f"⚠️ Skipping: Date esențiale lipsă pentru artera COD {cod or 'N/A'}")
                continue

            # 🔎 Obține obiectele aferente cheilor externe
            judet = Judet.objects.filter(cod=int(loc_jud_cod)).first()
            localitate = Localitate.objects.filter(cod=int(loc_cod)).first()
            stare = StareArtera.objects.filter(cod=stare_cod).first() if stare_cod else None
            tip_artera = TipArtera.objects.filter(cod=tip_cod).first() if tip_cod else None

            if judet is None:
                print(f"❌ Eroare: Județul cu cod {loc_jud_cod} NU există în DB! Verifică XML-ul sau baza de date.")
                continue  # Sari peste înregistrare

            if localitate is None:
                print(f"❌ Eroare: Localitatea cu cod {loc_cod} NU există în DB! Verifică XML-ul sau baza de date.")
                continue  # Sari peste înregistrare

            # 🔍 Verifică dacă artera există deja cu aceleași date
            artera_existenta = Artera.objects.filter(cod=int(cod)).first()
            if artera_existenta:
                if (
                    artera_existenta.denumire == denumire
                    and artera_existenta.loc_cod_id == localitate.cod  # ✅ Folosim cod, nu id
                    and artera_existenta.loc_jud_cod_id == judet.cod  # ✅ Folosim cod, nu id
                    and artera_existenta.stare_id == (stare.cod if stare else None)
                    and artera_existenta.tip_artera_id == (tip_artera.cod if tip_artera else None)
                    and artera_existenta.cod_postal == cod_postal
                    and artera_existenta.cod_politie == (int(cod_politie) if cod_politie else None)
                ):
                    print(f"🔄 Skipping (fără schimbări): {denumire}")
                    skipped_count += 1
                    continue  

            # 🏗️ Creează sau actualizează înregistrarea
            artera, created = Artera.objects.update_or_create(
                cod=int(cod),
                defaults={
                    "loc_jud_cod_id": judet.cod,  # ✅ Folosim cod, nu id
                    "loc_cod_id": localitate.cod,  # ✅ Folosim cod, nu id
                    "cod_politie": int(cod_politie) if cod_politie else None,
                    "denumire": denumire if denumire else f"Fără denumire (cod: {cod})",
                    "stare_id": stare.cod if stare else None,  # ✅ Folosim cod, nu id
                    "tip_artera_id": tip_artera.cod if tip_artera else None,  # ✅ Folosim cod, nu id
                    "cod_postal": cod_postal
                }
            )

            if created:
                print(f"✅ Adăugat: {artera}")
                imported_count += 1
            else:
                print(f"♻️ Actualizat: {artera}")
                updated_count += 1

        except Exception as e:
            print(f"❌ Eroare la importul arterei cu cod {cod or 'N/A'}: {e}")

    print(f"\n📊 Rezumat import:\n - Adăugate: {imported_count}\n - Actualizate: {updated_count}\n - Ignorate (fără schimbări): {skipped_count}")

# 🏃‍♂️ Rulează importul cu calea absolută
import_artere_from_xml(r"C:\dev\aplicatii\goGAS\data\nomArtereMF.xml")

