window.numeVerificat = false;
(function waitForDjangoJQuery() {
    if (typeof django === 'undefined' || typeof django.jQuery === 'undefined') {
        console.log("Aștept jQuery de la Django...");
        setTimeout(waitForDjangoJQuery, 200);
        return;
    }

    (function($) {
        $(document).ready(function() {
            console.log("✅ Scriptul `autofill_solicitare.js` este încărcat.");

            const numeField = $('#id_nume');

            if (numeField.length === 0) {
                console.log("❌ Câmpul #id_nume nu este disponibil. Aștept...");
                setTimeout(arguments.callee, 200);
                return;
            }

            console.log("✅ Câmpul #id_nume a fost găsit. Adaug evenimentul `change`...");

            numeField.on('change', function() {
                const selectedNume = $(this).val();
                console.log("🔹 Nume selectat:", selectedNume);

                if (selectedNume) {
                    console.log("📡 Trimit cererea AJAX pentru numele selectat...");

                    function getCookie(name) {
                        let cookieValue = null;
                        if (document.cookie && document.cookie !== '') {
                            const cookies = document.cookie.split(';');
                            for (let i = 0; i < cookies.length; i++) {
                                const cookie = cookies[i].trim();
                                if (cookie.substring(0, name.length + 1) === (name + '=')) {
                                    cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                                    break;
                                }
                            }
                        }
                        return cookieValue;
                    }

                    const csrftoken = getCookie('csrftoken');

                    $.ajax({
                        url: numeField.data('url') || '/solicitari/beneficiar-details/',
                        method: 'GET',
                        headers: {
                            'X-CSRFToken': csrftoken,
                        },
                        data: { nume: selectedNume },
                        success: function(data) {
                            console.log("✅ Date primite:", data);

                            if (data.nou) {
                                console.log("🚨 Numele NU există. Se va deschide pop-up-ul pentru introducerea manuală.");
                                
                                // Completează numele în pop-up
                                $("#modal_nume").val(selectedNume);

                                // Afișează pop-up-ul pentru adăugare manuală
                                $("#modal_adauga_manual, #modal_overlay_manual").fadeIn();

                            } else if (Array.isArray(data) && data.length > 1) {
                                console.log("⚠️ Mai multe rezultate găsite. Afișăm selecția utilizatorului...");
                                afiseazaSelectieBeneficiar(data);
                            } else {
                                completeazaCampurile(data[0] || data);
                            }
                        },
                        error: function(xhr) {
                            console.error("❌ Eroare AJAX la beneficiar-details:", xhr.responseText);
                            alert('A apărut o eroare la încărcarea detaliilor beneficiarului.');
                        }
                    });
                } else {
                    console.log("⚠️ Niciun nume nu a fost selectat.");
                }
            });

            function completeazaCampurile(beneficiar) {
                $('#id_prenume').val(beneficiar.prenume || '');
                $('#id_telefon').val(beneficiar.telefon || '');
                $('#id_tip_client').val(beneficiar.tip_client || '');
                $('#id_data_solicitare').val(beneficiar.data_solicitare || '');
                $('#id_status_solicitare').val(beneficiar.status_solicitare || '');
                console.log("✅ Câmpurile au fost completate.");
                window.numeVerificat = true;
                console.log("🔒 numeVerificat a fost setat pe true.");
            }

            function afiseazaSelectieBeneficiar(listaBeneficiari) {
                console.log("⚠️ Afișăm selecția utilizatorului pentru mai mulți beneficiari...");

                // Șterge orice modal anterior
                $('#modal_select_beneficiar').remove();

                let modalHtml = `
                    <div id="modal_select_beneficiar" style="
                        position:fixed; top:50%; left:50%;
                        transform:translate(-50%, -50%);
                        background:white; padding:20px;
                        border:1px solid black; z-index:1000;
                        box-shadow: 0px 0px 10px rgba(0,0,0,0.3);
                        width: 300px; text-align: center;
                    ">
                        <h3>Alege beneficiarul</h3>
                        <select id="beneficiar_select" style="display:block; margin:10px auto; padding:5px; width: 80%;">
                `;

                listaBeneficiari.forEach((beneficiar, index) => {
                    modalHtml += `<option value="${index}">${beneficiar.nume} ${beneficiar.prenume} - ${beneficiar.telefon}</option>`;
                });

                modalHtml += `
                        </select>
                        <button id="confirm_beneficiar" style="margin-top:10px; padding:5px 10px;">Confirmă</button>
                        <button id="close_modal" style="margin-top:10px; padding:5px 10px; background: black; color: white;">Închide</button>
                    </div>
                `;

                $('body').append(modalHtml);

                // Eveniment pentru confirmare selecție beneficiar
                $('#confirm_beneficiar').on('click', function() {
                    const selectedIndex = $('#beneficiar_select').val();
                    if (selectedIndex !== null) {
                        completeazaCampurile(listaBeneficiari[selectedIndex]);
                        $('#modal_select_beneficiar').remove();
                        window.numeVerificat = true;
                        console.log("🔒 numeVerificat a fost setat pe true (după selecția utilizatorului).");

                    }
                });

                // Eveniment pentru închidere modal
                $('#close_modal').on('click', function() {
                    $('#modal_select_beneficiar').remove();
                });
            }

            // Închide pop-up-ul manual
            $("#inchide_modal_manual, #modal_overlay_manual").click(function() {
                console.log("🔹 Închide pop-up-ul.");
                $("#modal_adauga_manual, #modal_overlay_manual").fadeOut();
            });

            // Salvare manuală a numelui nou
            $("#salveaza_nume_manual").click(function() {
                var nume = $("#modal_nume").val().trim();
                var prenume = $("#modal_prenume").val().trim();
                var telefon = $("#modal_telefon").val().trim();
                var tip_client = $("#modal_tip_client").val();

                if (!nume || !prenume || !telefon || !tip_client) {
                    alert("⚠️ Toate câmpurile sunt obligatorii!");
                    return;
                }

                $.ajax({
                    url: "/solicitari/adauga-solicitare/",
                    type: "POST",
                    data: {
                        nume: nume,
                        prenume: prenume,
                        telefon: telefon,
                        tip_client: tip_client,
                        csrfmiddlewaretoken: $("input[name=csrfmiddlewaretoken]").val()
                    },
                    success: function(response) {
                        alert(response.message);
                        $("#modal_adauga_manual, #modal_overlay_manual").fadeOut();

                        // Adaugă noul nume în Select2 și selectează-l
                        var newOption = new Option(nume, nume, true, true);
                        $("#id_nume").append(newOption).trigger("change");
                    },
                    error: function(xhr) {
                        alert("❌ Eroare: " + (xhr.responseJSON?.error || "Nu s-a putut adăuga numele."));
                    }
                });
            });

        });
    })(django.jQuery);
})();