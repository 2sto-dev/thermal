(function waitForDjangoJQuery() {
    if (typeof django === 'undefined' || typeof django.jQuery === 'undefined') {
        console.log("Aștept jQuery de la Django...");
        setTimeout(waitForDjangoJQuery, 500);
        return;
    }

    (function($) {
        $(document).ready(function() {
            console.log("✅ Scriptul optimizat este încărcat.");

            let numeField = $('#id_nume');

            if (numeField.length === 0) {
                console.log("❌ Câmpul #id_nume nu a fost găsit.");
                return;
            }

            console.log("✅ Câmpul #id_nume a fost detectat.");

            numeField.off('change').on('change', function() {
                const selectedNume = $(this).val().toLowerCase().trim();

                if (!selectedNume) {
                    console.log("⚠️ Niciun nume selectat.");
                    return;
                }

                console.log("🔹 Nume selectat:", selectedNume);

                // Dacă este o opțiune nouă, deschide modalul, dar doar dacă nu e deja deschis
                if (selectedNume === 'adauga_nume' && $("#modal_adauga_manual").is(":hidden")) {
                    console.log("🚨 Se va deschide modalul pentru adăugare manuală.");

                    const numeReal = $(this).find("option:selected").text().replace(/^adauga\s+/i, '').trim();
                    $("#modal_nume").val(numeReal);
                    $("#modal_adauga_manual, #modal_overlay_manual").fadeIn();
                    return;
                }

                // Verificăm dacă modalul este deja deschis și evităm cereri duplicate
                if ($("#modal_adauga_manual").is(":visible")) {
                    console.log("⚠️ Modalul este deja deschis. Se evită cererea AJAX.");
                    return;
                }

                // AJAX pentru încărcarea detaliilor beneficiarului
                $.ajax({
                    url: "/solicitari/beneficiar-details/",
                    type: "GET",
                    data: { nume: selectedNume },
                    success: function(data) {
                        console.log("✅ Date primite din AJAX:", data);

                        if (data.nou) {
                            console.log("🚨 Numele NU există. Se va deschide pop-up-ul.");

                            if ($("#modal_adauga_manual").is(":hidden")) {
                                $("#modal_nume").val(selectedNume);
                                $("#modal_adauga_manual, #modal_overlay_manual").fadeIn();
                            }
                        } else if (Array.isArray(data) && data.length > 1) {
                            console.log("⚠️ Mai multe rezultate găsite. Afișăm selecția utilizatorului.");
                            afiseazaSelectieBeneficiar(data);
                        } else {
                            completeazaCampurile(data[0] || data);
                        }
                    },
                    error: function(xhr) {
                        console.error("❌ Eroare AJAX:", xhr.responseText);
                        alert('A apărut o eroare la încărcarea detaliilor beneficiarului.');
                    }
                });
            });

            function completeazaCampurile(beneficiar) {
                if (!beneficiar) {
                    console.error("❌ Eroare: Obiect beneficiar invalid.");
                    return;
                }

                console.log("✅ Completăm câmpurile cu:", beneficiar);

                $('#id_prenume').val(beneficiar.prenume || '');
                $('#id_telefon').val(beneficiar.telefon || '');
                $('#id_tip_client').val(beneficiar.tip_client || '');

                console.log("✅ Câmpurile au fost completate.");
            }

            $(".close-modal").click(function() {
                $("#modal_adauga_manual, #modal_overlay_manual").fadeOut(function() {
                    $("#modal_nume, #modal_prenume, #modal_telefon, #modal_tip_client").val('');
                });
            });

        });
    })(django.jQuery);
})();
