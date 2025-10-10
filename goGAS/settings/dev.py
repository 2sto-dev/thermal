from .base import *

DEBUG = True
ALLOWED_HOSTS = ["127.0.0.1", "localhost"]

# 📌 Bază de date MySQL - ia toate valorile din .env
DATABASES = {
    "default": {
        "ENGINE": os.getenv("DJANGO_DB_ENGINE", "django.db.backends.mysql"),
        "NAME": os.getenv("DJANGO_DB_NAME", "stargas"),
        "USER": os.getenv("DJANGO_DB_USER", "root"),
        "PASSWORD": os.getenv("DJANGO_DB_PASSWORD", ""),
        "HOST": os.getenv("DJANGO_DB_HOST", "localhost"),
        "PORT": os.getenv("DJANGO_DB_PORT", "3306"),
        "OPTIONS": {
            "init_command": "SET sql_mode='STRICT_TRANS_TABLES'",
        },
    }
}

# 📌 Fișiere statice simple (fără whitenoise compresie)
STATICFILES_STORAGE = "django.contrib.staticfiles.storage.StaticFilesStorage"
