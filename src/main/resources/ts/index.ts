import "./htmx";
import { main_htmx } from "./page/main";
const main_page = document.getElementById("main_page") as HTMLElement;

document.addEventListener("DOMContentLoaded", () => {
    if(main_page) {
    }
});

document.addEventListener("htmx:afterOnLoad", (evt:any) => {
    const evt_document = evt.detail.elt as HTMLElement;
    const sing_ok = document.getElementById("sing_ok") as HTMLElement;
    if(sing_ok) {
        location.reload();
    }else if(main_page) {
        main_htmx(evt_document);
    }
});