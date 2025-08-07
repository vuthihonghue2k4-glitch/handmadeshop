 
    const menuBtn = document.getElementById('menu-bars');
    const navbar = document.querySelector('.navbar');
    const dropdownLinks = document.querySelectorAll('.dropdown > a');


document.addEventListener('DOMContentLoaded', function() {
  const mobileMenuToggle = document.getElementById('mobile-menu-toggle');
  const mainNav = document.getElementById('main-nav');
  const headerRight = document.querySelector('.header-right');
  const dropdowns = document.querySelectorAll('.dropdown');
  
  // Toggle mobile menu
  mobileMenuToggle.addEventListener('click', function() {
    mainNav.classList.toggle('active');
    headerRight.classList.toggle('active');
    this.classList.toggle('active');
  });
  
  // Toggle dropdowns on mobile
  dropdowns.forEach(dropdown => {
    const link = dropdown.querySelector('a');
    
    link.addEventListener('click', function(e) {
      if (window.innerWidth <= 768) {
        e.preventDefault();
        dropdown.classList.toggle('active');
      }
    });
  });
  
  // Close menu when clicking outside
  document.addEventListener('click', function(e) {
    if (!e.target.closest('.header-container') && window.innerWidth <= 768) {
      mainNav.classList.remove('active');
      headerRight.classList.remove('active');
      mobileMenuToggle.classList.remove('active');
      dropdowns.forEach(dropdown => dropdown.classList.remove('active'));
    }
  });
});




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
 
 
 document.querySelectorAll('.add-to-cart').forEach(button => {
            button.addEventListener('click', function() {
                const productCard = this.closest('.product-card');
                const productName = productCard.querySelector('.product-name').textContent;
                const productPrice = productCard.querySelector('.current-price').textContent;
                
                // Hiệu ứng khi thêm vào giỏ
                this.innerHTML = '<i>✓</i> Đã thêm';
                this.style.backgroundColor = '#2ecc71';
                
                // Reset sau 1.5 giây
                setTimeout(() => {
                    this.innerHTML = '<i>🛒</i> Thêm giỏ';
                    this.style.backgroundColor = '#ff6b81';
                }, 1500);
                
                // Thông báo (có thể thay bằng logic thêm vào giỏ hàng thực tế)
                alert(`Đã thêm "${productName}" (${productPrice}) vào giỏ hàng`);
                
                // Ở đây bạn có thể thêm code AJAX để gửi dữ liệu đến server
                // hoặc cập nhật localStorage/state management
            });
        });
