export function main() {
}

export function main_htmx(evt_document:HTMLElement) {
    const login_from = document.getElementById("login_form") as HTMLFormElement;
    if(evt_document == login_from) {
        const login_ok = document.getElementById("login_ok") as HTMLButtonElement;
        if(login_ok) {
            setTimeout(() => location.reload(), 500);
        }else {
            const login_btn = document.getElementById("login") as HTMLButtonElement;
            setTimeout(() => login_btn.innerHTML = "<button class='w-100 mb-2 btn btn-lg rounded-3 btn-primary'>Login</button>", 1500);
        }
    }
}