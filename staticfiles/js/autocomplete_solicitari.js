(function waitForDjangoJQuery() {
    if (typeof django === 'undefined' || typeof django.jQuery === 'undefined') {
        console.log("Aștept jQuery de la Django...");
        setTimeout(waitForDjangoJQuery, 200);
        return;
    }

    (function($) {
        $(document).ready(function() {
            console.log("✅ Scriptul optimizat `autocomplete_solicitare.js` este încărcat.");

            let numeField = $('#id_nume');

            if (numeField.length === 0) {
                console.log("❌ Câmpul #id_nume nu a fost găsit.");
                return;
            }

            function getCookie(name) {
                let cookieValue = null;
                if (document.cookie && document.cookie !== '') {
                    document.cookie.split(';').forEach(cookie => {
                        cookie = cookie.trim();
                        if (cookie.startsWith(name + '=')) {
                            cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                        }
                    });
                }
                return cookieValue;
            }

            const csrftoken = getCookie('csrftoken');

            numeField.off('change').on('change', function() {
                const selectedNume = $(this).val().trim();

                if (!selectedNume) {
                    console.log("⚠️ Niciun nume selectat.");
                    return;
                }

                console.log("🔹 Nume selectat:", selectedNume);

                $.ajax({
                    url: "/solicitari/beneficiar-details/",
                    type: "GET",
                    data: { nume: selectedNume },
                    headers: { "X-CSRFToken": csrftoken },
                    success: function(data) {
                        console.log("✅ Date primite de la AJAX:", data);

                        if (data.nou) {
                            console.log("🚨 Numele NU există. Se va deschide pop-up-ul.");
                            $("#modal_nume").val(selectedNume.replace(/^adauga_nume_/, '').trim());
                            $("#modal_adauga_manual, #modal_overlay_manual").fadeIn();
                        } else if (data.multiple) {
                            console.log("⚠️ Mai multe rezultate găsite. Se va afișa modalul de selecție.");
                            afiseazaSelectieBeneficiar(data.rezultate);
                        } else {
                            completeazaCampurile(data);
                        }
                    },
                    error: function(xhr) {
                        console.error("❌ Eroare AJAX:", xhr.responseText);
                        alert('A apărut o eroare la încărcarea detaliilor beneficiarului.');
                    }
                });
            });

            function completeazaCampurile(beneficiar) {
                $('#id_prenume').val(beneficiar.prenume || '');
                $('#id_telefon').val(beneficiar.telefon || '');
                $('#id_tip_client').val(beneficiar.tip_client || '');
                console.log("✅ Câmpurile au fost completate.");
            }

            function inchideModal() {
                $("#modal_adauga_manual, #modal_overlay_manual").fadeOut(function() {
                    $("#modal_nume, #modal_prenume, #modal_telefon, #modal_tip_client").val('');
                });
            }

            function afiseazaSelectieBeneficiar(listaBeneficiari) {
                console.log("⚠️ Afișăm selecția utilizatorului pentru mai mulți beneficiari...");
                $('#modal_select_beneficiar').remove();

                let modalHtml = `
                    <div id="modal_select_beneficiar" style="position:fixed; top:50%; left:50%;
                        transform:translate(-50%, -50%); background:white; padding:20px;
                        border:1px solid black; z-index:1000; box-shadow: 0px 0px 10px rgba(0,0,0,0.3);
                        width: 300px; text-align: center;">
                        <h3>Alege beneficiarul</h3>
                        <select id="beneficiar_select" style="display:block; margin:10px auto; padding:5px; width: 80%;">
                `;

                listaBeneficiari.forEach((beneficiar, index) => {
                    modalHtml += `<option value="${index}" data-id="${beneficiar.id}" data-nume="${beneficiar.nume}"
                                  data-prenume="${beneficiar.prenume}" data-telefon="${beneficiar.telefon}"
                                  data-tip_client="${beneficiar.tip_client}">
                                  ${beneficiar.nume} ${beneficiar.prenume} - ${beneficiar.telefon}
                                  </option>`;
                });

                modalHtml += `</select>
                        <button id="confirm_beneficiar">Confirmă</button>
                        <button id="close_modal">Închide</button>
                    </div>
                `;

                $('body').append(modalHtml);

                $('#confirm_beneficiar').on('click', function() {
                    const selectedOption = $('#beneficiar_select option:selected');
                    if (selectedOption.length > 0) {
                        completeazaCampurile({
                            nume: selectedOption.data("nume"),
                            prenume: selectedOption.data("prenume"),
                            telefon: selectedOption.data("telefon"),
                            tip_client: selectedOption.data("tip_client")
                        });
                        $('#modal_select_beneficiar').remove();
                    }
                });

                $('#close_modal').on('click', function() {
                    $('#modal_select_beneficiar').remove();
                });
            }

            $(document).on('click', '#salveaza_nume_manual', function() {
                console.log("🔹 [DEBUG] Butonul 'Adaugă' apăsat!");

                let nume = $("#modal_nume").val().trim();
                if (!nume) return console.warn("⚠️ [JS] Nume gol, ieșire.");

                let tip_client = $("#modal_tip_client").val().trim().toLowerCase();
                let djangoTipClient = tip_client.includes("fizic") ? "fizic" : tip_client.includes("juridic") ? "juridic" : '';

                console.log("✅ [JS] Tip Client procesat:", djangoTipClient);

                $("#id_nume").val(nume);
                $("#id_prenume").val($("#modal_prenume").val().trim());
                $("#id_telefon").val($("#modal_telefon").val().trim());

                if ($("#id_tip_client").length > 0 && $("#id_tip_client option[value='" + djangoTipClient + "']").length > 0) {
                    $("#id_tip_client").val(djangoTipClient).trigger('change');
                } else {
                    console.warn("⚠️ Valoarea pentru Tip Client nu există.");
                }

                inchideModal();
            });

            $(".close-modal, #inchide_modal_manual, #modal_overlay_manual").on('click', inchideModal);
        });
    })(django.jQuery);
})();
