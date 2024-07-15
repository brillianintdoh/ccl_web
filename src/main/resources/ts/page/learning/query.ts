interface BootstrapCarousel {
    next(): void;
    prev(): void;
}

export default class query {
    private carousel: BootstrapCarousel;
    private totalQuestions: number;
    private currentQuestion: number = 1;

    constructor() {
        const carouselElement = document.getElementById('questionCarousel') as HTMLElement;
        this.carousel = new (window as any).bootstrap.Carousel(carouselElement, {
            interval: false,
            wrap: false
        }) as BootstrapCarousel;

        this.totalQuestions = document.querySelectorAll('.carousel-item').length;

        this.initEventListeners();
        this.updateProgressBar();
        this.updateButtons();
    }

    private updateProgressBar(): void {
        const progress = (this.currentQuestion / this.totalQuestions) * 100;
        const progressBar = document.getElementById('progress-bar') as HTMLElement;
        progressBar.style.width = `${progress}%`;
        progressBar.setAttribute('aria-valuenow', progress.toString());
        progressBar.textContent = `${this.currentQuestion}/${this.totalQuestions}`;
    }

    private updateButtons(): void {
        const prevBtn = document.getElementById('prevBtn') as HTMLButtonElement;
        const nextBtn = document.getElementById('nextBtn') as HTMLButtonElement;
        prevBtn.disabled = this.currentQuestion === 1;
        nextBtn.textContent = this.currentQuestion === this.totalQuestions ? '완료' : '다음';
    }

    private initEventListeners(): void {
        const nextBtn = document.getElementById('nextBtn') as HTMLButtonElement;
        const prevBtn = document.getElementById('prevBtn') as HTMLButtonElement;

        nextBtn.addEventListener('click', this.handleNextClick.bind(this));
        prevBtn.addEventListener('click', this.handlePrevClick.bind(this));

        document.querySelectorAll('.answer-btn').forEach(button => {
            button.addEventListener('click', this.handleAnswerClick.bind(this));
        });
    }

    private handleNextClick(): void {
        if (this.currentQuestion < this.totalQuestions) {
            this.carousel.next();
            this.currentQuestion++;
            this.updateProgressBar();
            this.updateButtons();
        } else {
            alert('모든 문제를 완료했습니다!');
        }
    }

    private handlePrevClick(): void {
        if (this.currentQuestion > 1) {
            this.carousel.prev();
            this.currentQuestion--;
            this.updateProgressBar();
            this.updateButtons();
        }
    }

    private handleAnswerClick(event: Event): void {
        const clickedButton = event.currentTarget as HTMLButtonElement;
        const answerButtons = document.querySelectorAll('.answer-btn') as NodeListOf<HTMLButtonElement>;

        answerButtons.forEach(btn => btn.disabled = true);

        if (clickedButton.getAttribute('data-correct') === 'true') {
            clickedButton.classList.remove('btn-outline-primary');
            clickedButton.classList.add('btn-success');
        } else {
            clickedButton.classList.remove('btn-outline-primary');
            clickedButton.classList.add('btn-danger');
            const correctButton = document.querySelector('.answer-btn[data-correct="true"]') as HTMLButtonElement;
            correctButton.classList.remove('btn-outline-primary');
            correctButton.classList.add('btn-success');
        }
    }
}