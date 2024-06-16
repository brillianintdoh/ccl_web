<!doctype html>
<html>
    <head>
        <title> 한문 학습 </title>
        <meta charset="UTF-8">
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link rel="icon" href="/img/icon.png">
        <link rel="stylesheet" href="/css/main.css">
        <script src="/js/boot.js"></script>
    </head>
    <body>
        <#include "/page/menu.ftl" encoding="UTF-8"/>

        <main class="main">
            <#if username?exists>
                <#include "main.ftl" encoding="UTF-8"/>
            <#else/>
                <div class="login_no">
                    <h1> 로그인이 필요합니다. </h1>
                    <button class="btn btn-outline-primary me-2" data-bs-toggle="modal" data-bs-target="#modal_btu">Login</button>
                </div>
            </#if>
        </main>

        <script src="/js/index.js"></script>
    </body>
</html>