from .base import *

DEBUG = False

# 📌 Bază de date MySQL (prod)
DATABASES = {
    "default": {
        "ENGINE": os.getenv("DJANGO_DB_ENGINE", "django.db.backends.mysql"),
        "NAME": os.getenv("DJANGO_DB_NAME", "stargas"),
        "USER": os.getenv("DJANGO_DB_USER", "root"),
        "PASSWORD": os.getenv("DJANGO_DB_PASSWORD", ""),
        "HOST": os.getenv("DJANGO_DB_HOST", "localhost"),
        "PORT": os.getenv("DJANGO_DB_PORT", "3306"),
        "OPTIONS": {"init_command": "SET sql_mode='STRICT_TRANS_TABLES'"},
    }
}

# 📌 Fișiere statice optimizate
STATICFILES_STORAGE = "whitenoise.storage.CompressedManifestStaticFilesStorage"

# 📌 Hosturi și CSRF
ALLOWED_HOSTS = ["bbinstall.ro", "www.bbinstall.ro"]
CSRF_TRUSTED_ORIGINS = ["https://bbinstall.ro", "https://www.bbinstall.ro"]

# 📌 Logging simplu (pentru debug)
LOGGING = {
    "version": 1,
    "disable_existing_loggers": False,
    "handlers": {"console": {"class": "logging.StreamHandler"}},
    "root": {"handlers": ["console"], "level": "WARNING"},
}
