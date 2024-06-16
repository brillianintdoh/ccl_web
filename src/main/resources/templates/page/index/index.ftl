<!doctype html>
<html>
    <head>
        <title> 한문 공부 사이트 </title>
        <meta charset="UTF-8">
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link rel="stylesheet" href="/css/main.css">
        <link rel="stylesheet" href="/css/index.css">
        <link rel="icon" href="/img/icon.png">
        <script src="/js/boot.js"></script>
    </head>
    <body>
        <#include "/page/menu.ftl" encoding="UTF-8"/>
        <main id="main_page" class="main">
            <div id="myCarousel" class="meun_car carousel slide mb-6" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" class="active" aria-current="true" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="/img/main_1.jpg">
                        <div class="container">
                            <div class="carousel-caption text-start">
                                <h1 class="text-black font_ccl">한문 수업 복습</h1>
                                <p class="opacity-75 text-black font_ccl">학교 수업에서 나온 한문 수업을 복습해 봅시다</p>
                                <p><a class="btn btn-lg btn-primary" href="/learning">복습하러 가기</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="https://via.placeholder.com/800x400" alt="Slide 2">
                        <div class="container">
                            <div class="carousel-caption">
                                <h1>test</h1>
                                <p>test</p>
                                <p><a class="btn btn-lg btn-primary" href="#">test</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="https://via.placeholder.com/800x400" alt="Slide 3">
                        <div class="container">
                            <div class="carousel-caption text-end">
                                <h1>test</h1>
                                <p>test</p>
                                <p><a class="btn btn-lg btn-primary" href="#">test</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                </button>
            </div>
        </main>

        <div class='border_end py-2'></div>
        <div class='end'>
            <ul class="nav justify-content-center border-bottom pb-3 mb-3">
                <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Home</a></li>
                <li class="nav-item"><a href="https://school.cbe.go.kr/cbnu-h" class="nav-link px-2 text-body-secondary">Homepage</a></li>
                <li class="nav-item"><a href="https://github.com/brillianintdoh" class="nav-link px-2 text-body-secondary">Developer</a></li>
            </ul>
            <p class="text-center text-body-secondary">palanghwi@gmail.com</p>
        </div>
        <script src="/js/index.js"></script>
    </body>
</html>