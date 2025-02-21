(function waitForDjangoJQuery() {
    if (typeof django === 'undefined' || typeof django.jQuery === 'undefined') {
        console.log("Aștept jQuery de la Django...");
        setTimeout(waitForDjangoJQuery, 500);
        return;
    }

    (function($) {
        $(document).ready(function() {
            console.log("✅ Scriptul `adauga_beneficiar.js` este încărcat.");

            let retryCount = 0;
            const maxRetries = 10;

            function initNumeField() {
                let numeField = $('#id_nume');
                if (numeField.length === 0) {
                    if (retryCount++ < maxRetries) {
                        console.log("❌ Câmpul #id_nume nu este disponibil. Aștept...");
                        setTimeout(initNumeField, 500);
                    } else {
                        console.log("❌ Eroare: Câmpul #id_nume nu a fost găsit.");
                    }
                    return;
                }

                console.log("✅ Câmpul #id_nume a fost găsit. Adaug evenimente...");

                numeField.on('change', function() {
                    const selectedNume = $(this).val().toLowerCase().trim();
                    if (selectedNume === 'adauga_nume') {
                        console.log("🚨 Opțiunea `adauga_nume` a fost selectată.");

                        const numeReal = $(this).find("option:selected").text().replace(/^adauga\s+/i, '').trim();
                        console.log("🔹 Numele extras:", numeReal);

                        $("#modal_nume").val(numeReal);
                        $("#modal_adauga_manual, #modal_overlay_manual").fadeIn();
                    }
                });
            }

            initNumeField();

            $(".close-modal").click(function() {
                console.log("🔹 Închide pop-up-ul.");
                $("#modal_adauga_manual, #modal_overlay_manual").fadeOut(function() {
                    $("#modal_nume, #modal_prenume, #modal_telefon, #modal_tip_client").val('');
                });
            });

            $("#salveaza_nume_manual").click(function() {
                var nume = $("#modal_nume").val().trim(),
                    prenume = $("#modal_prenume").val().trim(),
                    telefon = $("#modal_telefon").val().trim(),
                    tip_client = $("#modal_tip_client").val();

                if (!nume || !prenume || !telefon || !tip_client) {
                    alert("⚠️ Toate câmpurile sunt obligatorii!");
                    return;
                }

                console.log("📡 Trimit cererea AJAX pentru salvarea beneficiarului...");

                $.ajax({
                    url: "/solicitari/adauga-beneficiar/",
                    type: "POST",
                    data: {
                        nume, prenume, telefon, tip_client,
                        csrfmiddlewaretoken: $("input[name=csrfmiddlewaretoken]").val()
                    },
                    success: function(response) {
                        alert(response.message);

                        // Elimină orice opțiune duplicată înainte de a adăuga una nouă
                        $("#id_nume option[value='" + nume + "']").remove();

                        // Adaugă noul nume în Select2 și selectează-l
                        $("#id_nume").append(new Option(nume, nume, true, true)).trigger("change");

                        // Închide modalul
                        $("#modal_adauga_manual, #modal_overlay_manual").fadeOut();
                    },
                    error: function(xhr) {
                        alert("❌ Eroare: " + (xhr.responseJSON?.error || "Nu s-a putut adăuga beneficiarul."));
                    }
                });
            });

            $(document).ajaxStart(() => $("#loader").fadeIn());
            $(document).ajaxStop(() => $("#loader").fadeOut());
        });
    })(django.jQuery);
})();
