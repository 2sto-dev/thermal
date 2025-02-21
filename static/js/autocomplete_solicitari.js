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

            // Eveniment unic pentru schimbarea numelui
            numeField.off('change').on('change', function() {
                const selectedNume = $(this).val().toLowerCase().trim();

                if (!selectedNume) {
                    console.log("⚠️ Niciun nume selectat.");
                    return;
                }

                console.log("🔹 Nume selectat:", selectedNume);

                // Dacă este o opțiune nouă, deschide modalul
                if (selectedNume === 'adauga_nume') {
                    console.log("🚨 Se va deschide modalul pentru adăugare manuală.");

                    const numeReal = $(this).find("option:selected").text().replace(/^adauga\s+/i, '').trim();
                    $("#modal_nume").val(numeReal);
                    $("#modal_adauga_manual, #modal_overlay_manual").fadeIn();
                    return;
                }

                // AJAX pentru încărcarea detaliilor beneficiarului
                $.ajax({
                    url: "/solicitari/beneficiar-details/",
                    type: "GET",
                    data: { nume: selectedNume },
                    success: function(data) {
                        console.log("✅ Date primite:", data);

                        if (data.nou) {
                            console.log("🚨 Numele NU există. Se va deschide pop-up-ul.");
                            $("#modal_nume").val(selectedNume);
                            $("#modal_adauga_manual, #modal_overlay_manual").fadeIn();
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
                $('#id_prenume').val(beneficiar.prenume || '');
                $('#id_telefon').val(beneficiar.telefon || '');
                $('#id_tip_client').val(beneficiar.tip_client || '');
                console.log("✅ Câmpurile au fost completate.");
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
                    modalHtml += `<option value="${index}">${beneficiar.nume} ${beneficiar.prenume} - ${beneficiar.telefon}</option>`;
                });

                modalHtml += `
                        </select>
                        <button id="confirm_beneficiar" style="margin-top:10px; padding:5px 10px;">Confirmă</button>
                        <button id="close_modal" style="margin-top:10px; padding:5px 10px; background: black; color: white;">Închide</button>
                    </div>
                `;

                $('body').append(modalHtml);

                $('#confirm_beneficiar').on('click', function() {
                    const selectedIndex = $('#beneficiar_select').val();
                    if (selectedIndex !== null) {
                        completeazaCampurile(listaBeneficiari[selectedIndex]);
                        $('#modal_select_beneficiar').remove();
                    }
                });

                $('#close_modal').on('click', function() {
                    $('#modal_select_beneficiar').remove();
                });
            }

            $("#salveaza_nume_manual").click(function() {
                var nume = $("#modal_nume").val().trim(),
                    prenume = $("#modal_prenume").val().trim(),
                    telefon = $("#modal_telefon").val().trim(),
                    tip_client = $("#modal_tip_client").val();

                if (!nume || !prenume || !telefon || !tip_client) {
                    alert("⚠️ Toate câmpurile sunt obligatorii!");
                    return;
                }

                $.ajax({
                    url: "/solicitari/adauga-beneficiar/",
                    type: "POST",
                    data: {
                        nume, prenume, telefon, tip_client,
                        csrfmiddlewaretoken: $("input[name=csrfmiddlewaretoken]").val()
                    },
                    success: function(response) {
                        alert(response.message);

                        $("#id_nume option[value='" + nume + "']").remove();

                        $("#id_nume").append(new Option(nume, nume, true, true)).trigger("change");

                        $("#modal_adauga_manual, #modal_overlay_manual").fadeOut();
                    },
                    error: function(xhr) {
                        alert("❌ Eroare: " + (xhr.responseJSON?.error || "Nu s-a putut adăuga beneficiarul."));
                    }
                });
            });

            $(".close-modal").click(function() {
                $("#modal_adauga_manual, #modal_overlay_manual").fadeOut(function() {
                    $("#modal_nume, #modal_prenume, #modal_telefon, #modal_tip_client").val('');
                });
            });

        });
    })(django.jQuery);
})();
