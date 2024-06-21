import { registerables, Chart as Chart, Title, Tooltip, Legend, ArcElement, CategoryScale } from 'chart.js';
Chart.register(Title, Tooltip, Legend, ArcElement, CategoryScale, ...registerables);

export function learning() {
    const login_no = document.querySelector(".login_no") as HTMLElement;
    if(!login_no) {
        const chartStatus = Chart.getChart("chart");
        if(chartStatus) {
            chartStatus.destroy();
        }
        const ctx = document.getElementById("chart") as HTMLCanvasElement;
        const data = (window as any).data as String[];
        var chart_data = [0,0,0,0,0,0,0];
        for(let i = 0; i < 7; i++) {
            if(data[i]) {
                chart_data[new Date(data[i].toString()).getDay()] += 1;
            }
        }
        const w = new Chart(ctx, {
            type: "bar",
            data: {
                labels: ["일", "월", "화", "수", "목", "금", "토"],
                datasets: [{
                    label: "공부일",
                    data: chart_data,
                    borderColor: "rgb(75, 192, 192)",
                    borderWidth: 2
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    }
}