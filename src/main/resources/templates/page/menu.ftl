<header class="container d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
    <div class="col-md-3 mb-2 mb-md-0">
        <button class="d-inline-flex link-body-emphasis text-decoration-none nav-link" onclick="location.href='https://ccl.ourgram.co.kr'">
            <i class="bi bi-globe2 h1"></i>
        </button>
    </div>
    
    <div class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0 ">
    </div>
    
    <div class="col-md-3 text-end">
        <#if username?exists>
            <input type='hidden' name='username' value="${username}">
            <i class="button_click bi bi-person h2" data-bs-toggle="dropdown" aria-expanded="false"></i>
            <ul class="dropdown-menu">
                <li><p class="dropdown-item-text h5">${username}</p></li>
                <li><a class="dropdown-item button_click">내 계정</a></li>
                <li><a class="dropdown-item button_click" hx-post="/sing_out" hx-include="[name=username]" hx-trigger="click" hx-swap="afterend">로그아웃</a></li>
            </ul>
        <#else/>
            <button class="btn btn-outline-primary me-2" id="login_button" data-bs-toggle="modal" data-bs-target="#modal_btu">Login</button>
            <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modal_sing">Sign-up</button>
        </#if>
    </div>
</header>

<div class="modal fade" id="modal_btu" data-bs-backdrop="static" data-bs-keyboard="false" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">LOGIN</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="login_form" hx-include="[name=username],[name=password]" hx-post="/login" hx-target="#login">
                <div class="modal-body">
                    <input name="username" type="text" class="form-control rounded-3" placeholder="이름">
                    <br>
                    <input name="password" type="password" class="form-control rounded-3" placeholder="비밀번호">
                </div>
                <div id="login" class="modal-footer">
                    <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary">Login</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="modal_sing" data-bs-backdrop="static" data-bs-keyboard="false" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Sing-up</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id='sing_form' hx-post="/tom/sing" hx-target="#sing_btn" hx-include="[name=class_name],[name=email]">
                <div class="modal-body">
                    <p class="text-body-secondary h6"> 학번과 이름을 쓰고 승인을 받으면 이메일로 알려줍니다 </p>
                    <input name="class_name" type="text" class="form-control rounded-3" placeholder="학번 && 이름">
                    <br>
                    <input name="email" type="email" class="form-control rounded-3" placeholder="이메일">
                </div>
                <div class="modal-footer" id="sing_btn">
                    <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary">보내기</button>
                </div>
            </form>
        </div>
    </div>
</div>