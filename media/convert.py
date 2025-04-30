from PIL import Image
import os
from pathlib import Path

# Asigură-te că ai instalat pluginul AVIF:
# pip install pillow pillow-avif-plugin

# Importă pluginul explicit
import pillow_avif  # trebuie doar să fie importat

# Setează folderul unde sunt imaginile .avif
input_folder = "C:\dev\aplicatii\goGAS\media"  # exemplu: "C:/Users/Tu/Desktop/imagini"
output_folder = os.path.join(input_folder, "png_output")
os.makedirs(output_folder, exist_ok=True)

# Parcurge toate fișierele .avif din folder
for file in os.listdir(input_folder):
    if file.lower().endswith(".avif"):
        input_path = os.path.join(input_folder, file)
        output_path = os.path.join(output_folder, Path(file).stem + ".png")

        try:
            with Image.open(input_path) as img:
                img.convert("RGB").save(output_path, "PNG")
                print(f"[✔] Convertit: {file} → {output_path}")
        except Exception as e:
            print(f"[✘] Eroare la {file}: {e}")
