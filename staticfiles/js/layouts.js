ClassicEditor
    .create(document.querySelector('#id_continut_html'), {
        toolbar: [
            'heading', '|', 'bold', 'italic', 'underline', '|',
            'link', 'insertImage', 'insertTable', '|',
            'Layouts', '|',
            'undo', 'redo'
        ],
        extraPlugins: [ LayoutsPlugin ]
    })
    .catch(error => {
        console.error(error);
    });

function LayoutsPlugin(editor) {
    editor.ui.componentFactory.add('Layouts', locale => {
        const view = new editor.ui.button.ButtonView(locale);

        view.set({
            label: 'Layouts',
            tooltip: true
        });

        view.on('execute', () => {
            const html = prompt(
                "Alege layout:\n1 - 2 coloane\n2 - 3 coloane\n3 - Imagine + tabel",
                "1"
            );

            let layoutHTML = "";
            if (html === "1") {
                layoutHTML = `
<div style="display: flex; gap: 20px;">
    <div style="flex: 1; border: 1px solid #000; padding: 10px;">Coloana 1</div>
    <div style="flex: 1; border: 1px solid #000; padding: 10px;">Coloana 2</div>
</div>`;
            } else if (html === "2") {
                layoutHTML = `
<div style="display: flex; gap: 20px;">
    <div style="flex: 1; border: 1px solid #000; padding: 10px;">Coloana 1</div>
    <div style="flex: 1; border: 1px solid #000; padding: 10px;">Coloana 2</div>
    <div style="flex: 1; border: 1px solid #000; padding: 10px;">Coloana 3</div>
</div>`;
            } else if (html === "3") {
                layoutHTML = `
<div style="display: flex; gap: 20px; align-items: flex-start;">
    <img src="https://via.placeholder.com/200" alt="Imagine" style="width:200px; height:auto; border:1px solid #000;">
    <table style="border-collapse: collapse; border: 2px solid #000;">
        <tr>
            <td style="border: 1px solid #000; padding: 10px;">Celula 1</td>
            <td style="border: 1px solid #000; padding: 10px;">Celula 2</td>
        </tr>
        <tr>
            <td style="border: 1px solid #000; padding: 10px;">Celula 3</td>
            <td style="border: 1px solid #000; padding: 10px;">Celula 4</td>
        </tr>
    </table>
</div>`;
            }

            editor.model.change(writer => {
                const viewFragment = editor.data.processor.toView(layoutHTML);
                const modelFragment = editor.data.toModel(viewFragment);
                editor.model.insertContent(modelFragment);
            });
        });

        return view;
    });
}
