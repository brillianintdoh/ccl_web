<div class="app-container container-fluid">
    <div class="row g-5 g-xxl-10">
        <div class="col-xl-5 col-xxl-4 mb-xl-5 mb-xxl-10 d-inline-block">
            <div class="card card-flush h-xl-100">
                <div class="card-header pt-5">
                    <div class="card-title d-flex flex-column">   
                        <span class="text-gray-500 pt-1 fw-semibold fs-6">${username}</span>
                    </div>
                </div>
                <div class="card-body pt-2 pb-4 d-flex align-items-center">
                    <div class="d-flex flex-center me-5 pt-2">
                        <div id="kt_card_widget_4_chart" style="min-width: 125px; min-height: 125px" data-kt-size="125" data-kt-line="18">
                        </div>
                        <div class="d-flex flex-column content-justify-center w-100">
                            <div class="d-flex fs-6 fw-semibold align-items-center">
                                <div class="bullet w-8px h-6px rounded-2 bg-danger me-3"></div>
                                <div class="text-gray-500 flex-grow-1 me-4">점수</div>
                                <div class="fw-bolder text-gray-700 text-xxl-end">${score}점</div>
                            </div>
                            <div class="d-flex fs-6 fw-semibold align-items-center my-3">
                                <div class="bullet w-8px h-6px rounded-2 bg-primary me-3"></div>
                                <div class="text-gray-500 flex-grow-1 me-4">문제</div>
                                <div class="fw-bolder text-gray-700 text-xxl-end">10/${question}</div>
                            </div>
                            <div class="d-flex fs-6 fw-semibold align-items-center">
                                <div class="bullet w-8px h-6px rounded-2 me-3" style="background-color: #E4E6EF"></div>
                                <div class="text-gray-500 flex-grow-1 me-4">포인트</div>
                                <div class=" fw-bolder text-gray-700 text-xxl-end">$${points}</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-xl-7 col-xxl-8  mb-5 mb-xxl-10">
            <div class="card bgi-position-y-bottom bgi-position-x-end bgi-no-repeat bgi-size-cover min-h-250px h-xl-100 border-0 bg-gray-200i">
                <div class="card-body d-flex flex-column justify-content-center align-items-start ps-lg-15">  
                    <h3 class="text-gray-800 d-flex fs-2x fw-bolder mb-2 mb-lg-4">
                        문제 풀어보기
                    </h3>
                    <div class="pt-2 pt-lg-4 z-3">
                        <a href="/learning/menu" class="btn btn-danger fw-semibold">시작</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row g-5 g-xxl-10">
        <div class="col-auto">
            <h3>공부량</h3>
            <p class="text-body-tertiary lh-sm mb-0">요일마다 한번이라도 문제를 풀면 그래프에 값이 올라갑니다</p>
        </div>
         <div class="col-xl-5 col-xxl-4 mb-xl-5 mb-xxl-10 d-inline-block">
            <div class="card card-flush h-xl-100">
                <div class="card-title d-flex flex-column">   
                    <canvas id="chart" class="chart"></canvas>
                </div>
            </div>
        </div>
    </div>
</div>