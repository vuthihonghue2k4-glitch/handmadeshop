<%-- 
    Document   : ctsp
    Created on : Jun 25, 2025, 10:14:58 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/ctsp.css">
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

    <ul class="nav-menu">
        <li><a href="index.jsp">Giới thiệu</a></li>
        <li><a href="trangchu.jsp">Trang chủ</a></li>
      <li class="dropdown">
        <a href="sanpham.jsp">Sản phẩm <i class="fas fa-chevron-down"></i></a>
        <ul class="dropdown-content">
          <li><a href="phukien.jsp">Phụ kiện</a></li>
          <li><a href="dotrangtri.jsp">Đồ Trang Trí</a></li>
          <li><a href="thoitrang.jsp">Thời Trang</a></li>
          <li><a href="quatang.jsp">Quà Tặng</a></li>
        </ul>
      </li>
      <li><a href="lienhe.jsp">Liên hệ</a></li>
    </ul>

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
    
   
 <!-- Nội dung chi tiết sản phẩm -->
    <main class="product-detail">
        <div class="product-images">
            <img src="anh/bo11.jpg" alt="Hoa hồng đỏ" class="main-image" id="main-image">
            <div class="thumbnail-container">
                <img src="anh/bo12.jpg" alt="Hoa hồng đỏ 1" class="thumbnail" onclick="changeImage(this)">
                <img src="anh/bo13.jpg" alt="Hoa hồng đỏ 2" class="thumbnail" onclick="changeImage(this)">
                <img src="anh/bo14.jpg" alt="Hoa hồng đỏ 3" class="thumbnail" onclick="changeImage(this)">
                <img src="anh/bo15.jpg" alt="Hoa hồng đỏ 4" class="thumbnail" onclick="changeImage(this)">
            </div>
        </div>
        
        <div class="product-info">
            <h1 class="product-title">Bó Hoa Hồng Đỏ 99 Bông</h1>
            <div class="product-price">1.990.000₫</div>
            
            <div class="product-description">
                <p>Bó hoa hồng đỏ 99 bông là món quà tuyệt vời để thể hiện tình yêu chân thành và mãnh liệt. Với 99 bông hồng đỏ thắm tươi tắn, bó hoa này sẽ là món quà hoàn hảo cho ngày kỷ niệm, ngày cưới hoặc bất kỳ dịp đặc biệt nào.</p>
            </div>
            
            <div class="product-meta">
                <div class="meta-item">
                    <span class="meta-label">Mã sản phẩm:</span>
                    <span class="meta-value">HOA001</span>
                </div>
                <div class="meta-item">
                    <span class="meta-label">Tình trạng:</span>
                    <span class="meta-value">Còn hàng</span>
                </div>
                <div class="meta-item">
                    <span class="meta-label">Loại hoa:</span>
                    <span class="meta-value">Hoa hồng</span>
                </div>
                <div class="meta-item">
                    <span class="meta-label">Phân loại:</span>
                    <span class="meta-value">Bó hoa</span>
                </div>
            </div>
            
            <div class="quantity-selector">
                <button class="quantity-btn" onclick="decreaseQuantity()">-</button>
                <input type="number" value="1" min="1" class="quantity-input" id="quantity">
                <button class="quantity-btn" onclick="increaseQuantity()">+</button>
            </div>
            
            <div class="product-actions">
               <a href="giohang.jsp"><button class="add-to-cart"><i class="fas fa-shopping-cart"></i> Thêm vào giỏ hàng</button></a>
                <button class="wishlist-btn"><i class="far fa-heart"></i> Yêu thích</button>
            </div>
        </div>
        
        <div class="product-tabs">
            <div class="tabs-header">
                <button class="tab-btn active" onclick="openTab(event, 'tab1')">Mô tả sản phẩm</button>
                <button class="tab-btn" onclick="openTab(event, 'tab2')">Chính sách giao hàng</button>
                <button class="tab-btn" onclick="openTab(event, 'tab3')">Đánh giá</button>
            </div>
            
            <div id="tab1" class="tab-content active">
                <h3>Chi tiết sản phẩm</h3>
                <p>Bó hoa hồng đỏ 99 bông được thiết kế tỉ mỉ với những bông hồng đỏ tươi được nhập khẩu từ Ecuador - nơi có những bông hồng đẹp nhất thế giới. Mỗi bông hoa được chọn lọc kỹ càng, cánh hoa dày, màu sắc đậm đà và lâu tàn.</p>
                <p>Bó hoa được bó bằng kỹ thuật chuyên nghiệp, kèm theo lá phụ trang trí và được bọc bằng giấy gói cao cấp, phối màu hài hòa với hoa. Kích thước bó hoa khoảng 60-70cm.</p>
                <p>Đi kèm với bó hoa là thiệp chúc mừng và phong bì đựng thiệp sang trọng.</p>
            </div>
            
            <div id="tab2" class="tab-content">
                <h3>Chính sách giao hàng</h3>
                <p>1. Miễn phí giao hàng trong nội thành Hà Nội và TP.HCM cho đơn hàng từ 500.000đ trở lên.</p>
                <p>2. Phí giao hàng ngoại thành: 50.000đ - 100.000đ tùy khu vực.</p>
                <p>3. Thời gian giao hàng: 2-4 tiếng sau khi đặt hàng (trong giờ hành chính).</p>
                <p>4. Giao hàng ngoài giờ: Phụ thu 20% giá trị đơn hàng.</p>
            </div>
            
            <div id="tab3" class="tab-content">
                <h3>Đánh giá sản phẩm</h3>
                <p>Chưa có đánh giá nào. Hãy là người đầu tiên đánh giá sản phẩm này!</p>
            </div>
        </div>
        
        <div class="related-products">
            <h2 class="section-title">Sản phẩm liên quan</h2>
            <div class="related-grid">
                <div class="product-card">
                    <img src="anh/bo14.jpg" alt="Hoa hồng 50 bông" class="product-card-img">
                    <div class="product-card-body">
                        <h3 class="product-card-title">Bó Hoa Hồng Đỏ 50 Bông</h3>
                        <div class="product-card-price">1.200.000₫</div>
                    </div>
                </div>
                
                <div class="product-card">
                    <img src="anh/bo17.jpg" alt="Hoa hồng mix" class="product-card-img">
                    <div class="product-card-body">
                        <h3 class="product-card-title">Bó Hoa Hồng Mix Màu</h3>
                        <div class="product-card-price">850.000₫</div>
                    </div>
                </div>
                
                <div class="product-card">
                    <img src="anh/bo15.jpg" alt="Hoa hồng và hướng dương" class="product-card-img">
                    <div class="product-card-body">
                        <h3 class="product-card-title">Bó Hoa Hồng Và Hướng Dương</h3>
                        <div class="product-card-price">750.000₫</div>
                    </div>
                </div>
                
                <div class="product-card">
                    <img src="anh/bo16.jpg" alt="Hộp hoa hồng" class="product-card-img">
                    <div class="product-card-body">
                        <h3 class="product-card-title">Hộp Hoa Hồng Sang Trọng</h3>
                        <div class="product-card-price">1.500.000₫</div>
                    </div>
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
        // JavaScript cho trang chi tiết sản phẩm
        function changeImage(element) {
            const mainImage = document.getElementById('main-image');
            mainImage.src = element.src.replace('100x100', '600x400');
            
            // Loại bỏ border-active từ tất cả các thumbnail
            document.querySelectorAll('.thumbnail').forEach(thumb => {
                thumb.style.border = '1px solid #ddd';
            });
            
            // Thêm border-active cho thumbnail được click
            element.style.border = '2px solid #6dbb98';
        }
        
        function increaseQuantity() {
            const quantityInput = document.getElementById('quantity');
            quantityInput.value = parseInt(quantityInput.value) + 1;
        }
        
        function decreaseQuantity() {
            const quantityInput = document.getElementById('quantity');
            if (parseInt(quantityInput.value) > 1) {
                quantityInput.value = parseInt(quantityInput.value) - 1;
            }
        }
        
        function openTab(evt, tabName) {
            // Ẩn tất cả các tab content
            document.querySelectorAll('.tab-content').forEach(tab => {
                tab.classList.remove('active');
            });
            
            // Xóa active class từ tất cả các tab button
            document.querySelectorAll('.tab-btn').forEach(btn => {
                btn.classList.remove('active');
            });
            
            // Hiển thị tab hiện tại và thêm active class vào button
            document.getElementById(tabName).classList.add('active');
            evt.currentTarget.classList.add('active');
        }
        
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
        });
    </script>
    </body>
</html>
