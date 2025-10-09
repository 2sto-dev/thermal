from django.db import migrations, models

class Migration(migrations.Migration):

    dependencies = [
        ("servicii", "0006_pretserviciu_um"),
    ]

    operations = [
        migrations.AddField(
            model_name="serviciu",
            name="meta_title",
            field=models.CharField(verbose_name="Meta Title", max_length=160, blank=True, null=True),
        ),
        migrations.AddField(
            model_name="serviciu",
            name="meta_description",
            field=models.CharField(verbose_name="Meta Description", max_length=180, blank=True, null=True),
        ),
        migrations.AddField(
            model_name="serviciu",
            name="meta_keywords",
            field=models.CharField(verbose_name="Meta Keywords", max_length=255, blank=True, null=True),
        ),
    ]
