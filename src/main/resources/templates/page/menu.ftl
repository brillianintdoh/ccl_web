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