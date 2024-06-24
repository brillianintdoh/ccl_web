<!doctype html>
<html>
    <head>
        <title> ${username}님의 계정 </title>
        <meta charset="UTF-8">
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link rel="stylesheet" href="/css/main.css">
        <link rel="stylesheet" href="/css/account.css">
        <script src="/js/boot.js"></script>
    </head>
    <body>
        <div class="d-flex flex-nowrap main_account" id="account_page">
            <div class="d-flex flex-column flex-shrink-0 p-3 bg-body-tertiary" style="width: 280px;">
                <div class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none"></div>
                <hr>
                <ul class="nav nav-pills flex-column mb-auto">
                    <li class="nav-item">
                        <a class="nav-link active" hx-on:click="menu_button(event)" id="active-menu-button">
                            <span class="bi pe-none"><i class="bi bi-house"></i></span>
                            홈
                        </a>
                    </li>
                    <li>
                        <a class="nav-link link-body-emphasis" hx-on:click="menu_button(event)">
                            <span class="bi pe-none"><i class="bi bi-person-circle"></i></span>
                            설정
                        </a>
                    </li>
                    <li>
                        <a class="nav-link link-body-emphasis" hx-on:click="menu_button(event)">
                            <span class="bi pe-none"><i class="bi bi-card-checklist"></i></span>
                            문제 확인
                        </a>
                    </li>
                </ul>
                <hr>
                <div class="dropdown">
                    <input type='hidden' name='username' value="${username}">
                    <a href="#" class="d-flex align-items-center link-body-emphasis text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        <strong>${username}</strong>
                    </a>
                    <ul class="dropdown-menu text-small shadow">
                        <li><a class="dropdown-item" href="/">홈으로 가기</a></li>
                        <li><a class="dropdown-item" href="#">Settings</a></li>
                        <li><a class="dropdown-item" href="#">Profile</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" hx-post="/sing_out" hx-include="[name=username]" hx-trigger="click" hx-swap="afterend">로그아웃</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <script src="/js/index.js"></script>
    </body>
</html>