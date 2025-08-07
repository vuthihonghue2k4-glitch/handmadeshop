
    const menuBtn = document.getElementById('menu-bars');
    const navbar = document.querySelector('.navbar');
    const dropdownLinks = document.querySelectorAll('.dropdown > a');

    menuBtn.onclick = () => {
        navbar.classList.toggle('show');
    };

    dropdownLinks.forEach(link => {
        link.onclick = (e) => {
            if (window.innerWidth <= 768) {
                e.preventDefault();
                link.parentElement.classList.toggle('open');
            }
        };
    });

// Banner Slider
        const slides = document.querySelectorAll('.slide');
        const dots = document.querySelectorAll('.slider-dot');
        let currentSlide = 0;
        
        function showSlide(n) {
            slides.forEach(slide => slide.classList.remove('active'));
            dots.forEach(dot => dot.classList.remove('active'));
            
            currentSlide = (n + slides.length) % slides.length;
            
            slides[currentSlide].classList.add('active');
            dots[currentSlide].classList.add('active');
        }
        
        function nextSlide() {
            showSlide(currentSlide + 1);
        }
        
        // Auto slide change every 5 seconds
        setInterval(nextSlide, 5000);
        
        // Click on dots to change slide
        dots.forEach((dot, index) => {
            dot.addEventListener('click', () => {
                showSlide(index);
            });
        });
        // Arrow navigation
        document.querySelector('.arrow.prev').addEventListener('click', () => {
            showSlide(currentSlide - 1);
        });
        document.querySelector('.arrow.next').addEventListener('click', () => {
            showSlide(currentSlide + 1);
        });

        // Add to cart button animation
        const addToCartButtons = document.querySelectorAll('.add-to-cart');
        addToCartButtons.forEach(button => {
            button.addEventListener('click', function() {
                this.textContent = 'Đã thêm!';
                this.style.backgroundColor = '#28a745';
                setTimeout(() => {
                    this.textContent = 'THÊM VÀO GIỎ';
                    this.style.backgroundColor = '#e83e8c';
                }, 2000);
            });
        });



