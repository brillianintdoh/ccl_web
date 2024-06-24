var document_html:HTMLElement|null = null;

export function account() {
    (window as any).menu_button = menu_button;
    document_html = document.getElementById("active-menu-button");
}

function menu_button(evt:any) {
    const evt_document = evt.target as HTMLElement;

    if(document_html != evt_document) {
        document_html?.classList.toggle("active");
        document_html?.classList.toggle("link-body-emphasis");

        evt_document.classList.toggle("active");
        evt_document.classList.toggle("link-body-emphasis");
        document_html = evt_document;
    }
}
