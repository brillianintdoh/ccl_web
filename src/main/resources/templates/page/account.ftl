<!doctype html>
<html>
    <head>
        <title> ${username}님의 계정 </title>
        <meta charset="UTF-8">
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link rel="stylesheet" href="/css/main.css">
        <link rel="icon" href="/img/setting_icon.png">
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
                        <a class="nav-link active button_click" hx-on:click="menu_button(event)" id="active-menu-button" page="1"> 
                            <span class="bi pe-none"><i class="bi bi-house"></i></span>
                            홈
                        </a>
                    </li>
                    <li>
                        <a class="nav-link link-body-emphasis button_click" hx-on:click="menu_button(event)" page="2">
                            <span class="bi pe-none"><i class="bi bi-person-circle"></i></span>
                            설정
                        </a>
                    </li>
                </ul>
                <hr>
                <div class="dropdown">
                    <input type='hidden' name='username' value="${username}">
                    <a class="d-flex align-items-center link-body-emphasis text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        <strong>${username}</strong>
                    </a>
                    <ul class="dropdown-menu text-small shadow">
                        <li><a class="dropdown-item" href="/">홈으로 가기</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" hx-post="/sing_out" hx-include="[name=username]" hx-trigger="click" hx-swap="afterend">로그아웃</a></li>
                    </ul>
                </div>
            </div>

            <div class="d-flex flex-column flex-shrink-0 p-3 bg-body-tertiary menu_page" id="menu_1">
            </div>

            <div class="d-flex flex-column flex-shrink-0 p-3 bg-body-tertiary menu_page d-none" id="menu_2">
                 <div class="col-md-10 mx-auto col-lg-5 w-75">
                    <form class="p-4 p-md-5 border rounded-3 bg-body-tertiary" hx-post="/password_change" hx-target="#pass_btn">
                        <small class="text-body-secondary h3">비밀번호 변경</small>
                        <hr class="my-4">
                        <div class="form-floating mb-3">
                            <input type="password" class="form-control" name="password_1" id="password_1">
                            <label for="password_1">현재 비밀번호</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="password" class="form-control" name="password_2" id="password_2">
                            <label for="password_2">현재 비밀번호 재입력</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="password" class="form-control" name="new_password" id="new_password">
                            <label for="new_password">새로운 비밀번호</label>
                        </div>
                        <div class="checkbox mb-3">
                        </div>
                        <button class="w-100 btn btn-lg btn-primary" type="submit" id="pass_btn">변경</button>
                        
                        <hr class="my-4">
                        <small class="text-body-secondary">비번을 잃어버리면 2128최도휘 찾아오셈</small>
                    </form>
                </div>
            </div>
        </div>
        <script src="/js/index.js"></script>
    </body>
</html>