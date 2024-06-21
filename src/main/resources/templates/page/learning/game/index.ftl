<!doctype html>
<html>
    <head>
        <title> 학습 </title>
        <meta charset="UTF-8">
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link rel="icon" href="/img/icon.png">
        <link rel="stylesheet" href="/css/main.css">
        <script src="/js/boot.js"></script>
    </head>
    <body>
        <div class="main">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    <span class="glyphicon glyphicon-list-alt"></span>
                                    학습 목록
                                </h3>
                            </div>
                            <div class="panel-body">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>제목</th>
                                            <th>해결한 학생들</th>
                                            <th>자기의 해결여부</th>
                                            <td>버튼</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <#list question as title>
                                            <tr>
                                                <td>${title?index+1}</td>
                                                <td>${title[0]}</td>
                                                <td>${title[1]}</td>
                                                <td>${title[2]}</td>
                                                 <td>
                                                    <button type="button" class="btn btn-success btn-xs" onclick="location.href='/learning/game/question/${title[3]}'">
                                                        문제 풀기
                                                    </button>
                                                    <button type="button" class="btn btn-danger btn-xs" onclick="location.href='/learning/game/question/${title[3]}?re=1'">
                                                        다시풀기
                                                    </button>
                                                    <button type="button" class="btn btn-info btn-xs" onclick="location.href='/edit/${title[0]}'">
                                                        수정사항 제안
                                                    </button>
                                                 </td>
                                            </tr>
                                        </#list>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="/js/index.js"></script>
    </body>
</html>