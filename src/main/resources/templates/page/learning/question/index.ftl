<!doctype html>
<html>
    <head>
        <title> 번호 ${id} 문제 </title>
        <meta charset="UTF-8">
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <script src="/js/boot.js"></script>
    </head>
    <body>
        <main id="query_page">
            <div class="container mt-5">
                <h1 class="mb-4">문제 풀기</h1>
                <div class="progress mb-3">
                    <div id="progress-bar" class="progress-bar" role="progressbar" style="width: 0%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">0/5</div>
                </div>
                <div id="questionCarousel" class="carousel slide" data-bs-interval="false">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">문제 1</h5>
                                    <p class="card-text">다음 한자의 뜻은 무엇인가요?</p>
                                    <h2 class="text-center mb-4">人</h2>
                                    <div class="d-grid gap-2">
                                        <button class="btn btn-outline-primary answer-btn" type="button" data-correct="true">사람</button>
                                        <button class="btn btn-outline-primary answer-btn" type="button">나무</button>
                                        <button class="btn btn-outline-primary answer-btn" type="button">하늘</button>
                                        <button class="btn btn-outline-primary answer-btn" type="button">강</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">문제 2</h5>
                                    <p class="card-text">다음 한자의 뜻은 무엇인가요?</p>
                                    <h2 class="text-center mb-4">山</h2>
                                    <div class="d-grid gap-2">
                                        <button class="btn btn-outline-primary answer-btn" type="button">바다</button>
                                        <button class="btn btn-outline-primary answer-btn" type="button" data-correct="true">산</button>
                                        <button class="btn btn-outline-primary answer-btn" type="button">들판</button>
                                        <button class="btn btn-outline-primary answer-btn" type="button">하늘</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="d-flex justify-content-between mt-3">
                    <button id="prevBtn" class="btn btn-secondary" disabled>이전</button>
                    <button id="nextBtn" class="btn btn-primary">다음</button>
                </div>
            </div>
        </main>
        <script src="/js/index.js"></script>
    </body>
</html>