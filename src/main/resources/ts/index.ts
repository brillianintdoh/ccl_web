import "./htmx";
import { main } from "./page/main";
const main_page = document.getElementById("main_page") as HTMLElement;

document.addEventListener("DOMContentLoaded", () => {
    if(main_page) {
        main();
    }
});

document.addEventListener("htmx:afterOnLoad", (evt:any) => {
    const evt_document = evt.detail.elt as HTMLElement;
    const sing_ok = document.getElementById("sing_ok") as HTMLElement;
    const login_from = document.getElementById("login_form") as HTMLFormElement;
    if(sing_ok) {
        location.reload();
    }else if(evt_document == login_from) {
        const login_ok = document.getElementById("login_ok") as HTMLButtonElement;
        if(login_ok) {
            setTimeout(() => location.reload(), 500);
        }else {
            const login_btn = document.getElementById("login") as HTMLButtonElement;
            setTimeout(() => login_btn.innerHTML = "<button class='w-100 mb-2 btn btn-lg rounded-3 btn-primary'>Login</button>", 1500);
        }
    }
});