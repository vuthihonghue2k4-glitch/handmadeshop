<%-- 
    Document   : giohang
    Created on : Jun 25, 2025, 10:37:09 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="css/giohang.css">
    <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
     <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
    </head>
    <body>
        <header class="main-header">
  <div class="header-container">
    <div class="header-left">
      <a href="#" class="logo">HandMade Shop</a>
      <button class="mobile-menu-toggle" id="mobile-menu-toggle">
        <i class="fas fa-bars"></i>
      </button>
    </div>

    <nav class="main-nav" id="main-nav">
      <ul class="nav-menu">
        <li><a href="Giới thiệu.html">Giới thiệu</a></li>
        <li><a href="#">Trang chủ</a></li>
        <li class="dropdown">
          <a href="sanpham.html">Sản phẩm <i class="fas fa-chevron-down"></i></a>
          <ul class="dropdown-content">
            <li><a href="#">Phụ Kiện</a></li>
            <li><a href="#">Đồ Trang Trí</a></li>
            <li><a href="#">Thời Trang</a></li>
            <li><a href="#">Quà Tặng</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="Loaihoa.html">Loại hoa <i class="fas fa-chevron-down"></i></a>
          <ul class="dropdown-content">
            <li><a href="#">Hoa hồng</a></li>
            <li><a href="#">Hoa cẩm chướng</a></li>
            <li><a href="#">Hoa hướng dương</a></li>
            <li><a href="#">Hoa cẩm tú cầu</a></li>
            <li><a href="#">Hoa tulip</a></li>
            <li><a href="#">Hoa Lavender</a></li>
            <li><a href="#">Các loại hoa khác</a></li>
          </ul>
        </li>
        <li><a href="#">Hoa tốt nghiệp</a></li>
        <li><a href="#">Hoa sáp</a></li>
      </ul>
    </nav>

    <div class="header-right">
      <div class="search-bar">
        <input type="text" placeholder="Tìm kiếm sản phẩm...">
        <button class="search-btn"><i class="fas fa-search"></i></button>
      </div>

      <div class="header-icons">
        <a href="#"><i class="fas fa-user"></i></a>
        <a href="#"><i class="fas fa-heart"></i></a>
        <a href="#" class="cart-icon">
          <i class="fas fa-shopping-cart"></i>
          <span class="cart-count">3</span>
        </a>
      </div>
    </div>
  </div>
</header>
    
   
   <!-- Nội dung giỏ hàng -->
    <main class="cart-container">
        <h1 class="cart-title">Giỏ hàng của bạn</h1>
        
        <div class="cart-content">
            <div class="cart-items">
                <table class="cart-table">
                    <thead>
                        <tr>
                            <th>Sản phẩm</th>
                            <th>Giá</th>
                            <th>Số lượng</th>
                            <th>Tổng</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td data-label="Sản phẩm">
                                <div class="cart-item">
                                    <img src="https://via.placeholder.com/100x100" alt="Hoa hồng đỏ" class="cart-item-img">
                                    <div class="cart-item-info">
                                        <h3>Bó Hoa Hồng Đỏ 99 Bông</h3>
                                        <p>Mã: HOA001</p>
                                    </div>
                                </div>
                            </td>
                            <td data-label="Giá" class="price">1.990.000₫</td>
                            <td data-label="Số lượng">
                                <div class="quantity-control">
                                    <button class="quantity-btn" onclick="decreaseQuantity(this)">-</button>
                                    <input type="number" value="1" min="1" class="quantity-input">
                                    <button class="quantity-btn" onclick="increaseQuantity(this)">+</button>
                                </div>
                            </td>
                            <td data-label="Tổng" class="subtotal">1.990.000₫</td>
                            <td data-label="">
                                <i class="fas fa-trash remove-item" onclick="removeItem(this)"></i>
                            </td>
                        </tr>
                        <tr>
                            <td data-label="Sản phẩm">
                                <div class="cart-item">
                                    <img src="https://via.placeholder.com/100x100/cccccc" alt="Hoa hướng dương" class="cart-item-img">
                                    <div class="cart-item-info">
                                        <h3>Bó Hoa Hướng Dương</h3>
                                        <p>Mã: HOA002</p>
                                    </div>
                                </div>
                            </td>
                            <td data-label="Giá" class="price">850.000₫</td>
                            <td data-label="Số lượng">
                                <div class="quantity-control">
                                    <button class="quantity-btn" onclick="decreaseQuantity(this)">-</button>
                                    <input type="number" value="2" min="1" class="quantity-input">
                                    <button class="quantity-btn" onclick="increaseQuantity(this)">+</button>
                                </div>
                            </td>
                            <td data-label="Tổng" class="subtotal">1.700.000₫</td>
                            <td data-label="">
                                <i class="fas fa-trash remove-item" onclick="removeItem(this)"></i>
                            </td>
                        </tr>
                        <tr>
                            <td data-label="Sản phẩm">
                                <div class="cart-item">
                                    <img src="https://via.placeholder.com/100x100/999999" alt="Hoa cẩm tú cầu" class="cart-item-img">
                                    <div class="cart-item-info">
                                        <h3>Bó Hoa Cẩm Tú Cầu</h3>
                                        <p>Mã: HOA003</p>
                                    </div>
                                </div>
                            </td>
                            <td data-label="Giá" class="price">750.000₫</td>
                            <td data-label="Số lượng">
                                <div class="quantity-control">
                                    <button class="quantity-btn" onclick="decreaseQuantity(this)">-</button>
                                    <input type="number" value="1" min="1" class="quantity-input">
                                    <button class="quantity-btn" onclick="increaseQuantity(this)">+</button>
                                </div>
                            </td>
                            <td data-label="Tổng" class="subtotal">750.000₫</td>
                            <td data-label="">
                                <i class="fas fa-trash remove-item" onclick="removeItem(this)"></i>
                            </td>
                        </tr>
                    </tbody>
                </table>
                
                <div class="cart-actions">
                    <button class="continue-shopping">
                        <i class="fas fa-arrow-left"></i> Tiếp tục mua hàng
                    </button>
                    <button class="update-cart">
                        <i class="fas fa-sync-alt"></i> Cập nhật giỏ hàng
                    </button>
                </div>
            </div>
            
            <div class="cart-summary">
                <div class="summary-card">
                    <h2 class="summary-title">Tóm tắt đơn hàng</h2>
                    
                    <div class="summary-row">
                        <span class="summary-label">Tạm tính:</span>
                        <span class="summary-value">4.440.000₫</span>
                    </div>
                    
                    <div class="summary-row">
                        <span class="summary-label">Giảm giá:</span>
                        <span class="summary-value">-200.000₫</span>
                    </div>
                    
                    <div class="summary-row">
                        <span class="summary-label">Phí vận chuyển:</span>
                        <span class="summary-value">30.000₫</span>
                    </div>
                    
                    <div class="summary-row total-row">
                        <span class="total-label">Tổng cộng:</span>
                        <span class="total-value">4.270.000₫</span>
                    </div>
                    
                    <button class="checkout-btn">
                        <i class="fas fa-credit-card"></i> Thanh toán
                    </button>
                </div>
                
                <div class="summary-card">
                    <h2 class="summary-title">Mã giảm giá</h2>
                    <p>Nhập mã giảm giá nếu bạn có</p>
                    
                    <form class="coupon-form">
                        <input type="text" placeholder="Mã giảm giá" class="coupon-input">
                        <button type="submit" class="coupon-btn">Áp dụng</button>
                    </form>
                </div>
            </div>
        </div>
    </main>


<!-- Footer -->
<footer>
  <div class="footer-container">
      <div class="footer-column">
          <h3>VỀ CHÚNG TÔI</h3>
          <ul>
              <li><a href="#">Giới thiệu</a></li>
              <li><a href="#">Tuyển dụng</a></li>
              <li><a href="#">Hệ thống cửa hàng</a></li>
              <li><a href="#">Liên hệ</a></li>
          </ul>
      </div>
      
      <div class="footer-column">
          <h3>CHÍNH SÁCH</h3>
          <ul>
              <li><a href="#">Chính sách đổi trả</a></li>
              <li><a href="#">Chính sách bảo mật</a></li>
              <li><a href="#">Chính sách vận chuyển</a></li>
              <li><a href="#">Điều khoản dịch vụ</a></li>
          </ul>
      </div>
      
      <div class="footer-column">
          <h3>HỖ TRỢ</h3>
          <ul>
              <li><a href="#">Hỏi đáp</a></li>
              <li><a href="#">Hướng dẫn mua hàng</a></li>
              <li><a href="#">Hướng dẫn thanh toán</a></li>
              <li><a href="#">Chăm sóc khách hàng</a></li>
          </ul>
      </div>
      
      <div class="footer-column">
          <h3>KẾT NỐI VỚI CHÚNG TÔI</h3>
          <p>Theo dõi chúng tôi trên mạng xã hội</p>
          <div class="social-icons">
              <div class="social-icon"><i class="fab fa-facebook-f"></i></div>
              <div class="social-icon"><i class="fab fa-instagram"></i></div>
              <div class="social-icon"><i class="fab fa-youtube"></i></div>
              <div class="social-icon"><i class="fab fa-tiktok"></i></div>
          </div>
      </div>
  </div>
  
  <div class="copyright">
      <p>© 2023 HandMade Shop. All rights reserved.</p>
  </div>
</footer>

   <script>
        // JavaScript cho giỏ hàng
        function increaseQuantity(btn) {
            const input = btn.parentElement.querySelector('.quantity-input');
            input.value = parseInt(input.value) + 1;
            updateSubtotal(input.closest('tr'));
        }
        
        function decreaseQuantity(btn) {
            const input = btn.parentElement.querySelector('.quantity-input');
            if (parseInt(input.value) > 1) {
                input.value = parseInt(input.value) - 1;
                updateSubtotal(input.closest('tr'));
            }
        }
        
        function removeItem(icon) {
            if (confirm('Bạn có chắc muốn xóa sản phẩm này khỏi giỏ hàng?')) {
                const row = icon.closest('tr');
                row.remove();
                updateCartSummary();
            }
        }
        
        function updateSubtotal(row) {
            const price = parseFloat(row.querySelector('.price').textContent.replace(/[^\d]/g, ''));
            const quantity = parseInt(row.querySelector('.quantity-input').value);
            const subtotal = price * quantity;
            row.querySelector('.subtotal').textContent = subtotal.toLocaleString('vi-VN') + '₫';
            updateCartSummary();
        }
        
        function updateCartSummary() {
            let subtotal = 0;
            document.querySelectorAll('.subtotal').forEach(item => {
                subtotal += parseFloat(item.textContent.replace(/[^\d]/g, ''));
            });
            
            // Giả sử có giảm giá 200.000đ và phí vận chuyển 30.000đ
            const discount = 200000;
            const shipping = 30000;
            const total = subtotal - discount + shipping;
            
            document.querySelector('.summary-value:nth-of-type(1)').textContent = subtotal.toLocaleString('vi-VN') + '₫';
            document.querySelector('.total-value').textContent = total.toLocaleString('vi-VN') + '₫';
            
            // Cập nhật số lượng sản phẩm trong giỏ hàng (icon header)
            const itemCount = document.querySelectorAll('tbody tr').length;
            document.querySelector('.cart-count').textContent = itemCount;
        }
        
        // Xử lý nút cập nhật giỏ hàng
        document.querySelector('.update-cart').addEventListener('click', function() {
            alert('Giỏ hàng đã được cập nhật!');
        });
        
        // Xử lý nút thanh toán
        document.querySelector('.checkout-btn').addEventListener('click', function() {
            alert('Chuyển đến trang thanh toán!');
        });
        
        // JavaScript cho header (giống như trang chủ)
        document.addEventListener('DOMContentLoaded', function() {
            const mobileMenuToggle = document.getElementById('mobile-menu-toggle');
            const mainNav = document.getElementById('main-nav');
            const headerRight = document.querySelector('.header-right');
            
            mobileMenuToggle.addEventListener('click', function() {
                mainNav.classList.toggle('active');
                headerRight.classList.toggle('active');
                mobileMenuToggle.innerHTML = mainNav.classList.contains('active') ? 
                    '<i class="fas fa-times"></i>' : '<i class="fas fa-bars"></i>';
            });
            
            // Dropdown menu
            document.querySelectorAll('.dropdown > a').forEach(dropdown => {
                dropdown.addEventListener('click', function(e) {
                    if (window.innerWidth <= 768) {
                        e.preventDefault();
                        const parent = this.parentElement;
                        parent.classList.toggle('active');
                    }
                });
            });
            
            // Khởi tạo giỏ hàng
            updateCartSummary();
        });
    </script>
    </body>
</html>
