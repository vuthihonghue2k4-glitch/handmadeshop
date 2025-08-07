
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>HandMade Shop</title>
        <link rel="stylesheet" href="css/sanpham.css">
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
    </head>
    <body>
       <header class="main-header">
    <div class="header-container">
    <a href="#" class="logo">HandMade Shop</a>

    <ul class="nav-menu">
        <li><a href="index.jsp">Giới thiệu</a></li>
        <li><a href="trangchu.jsp">Trang chủ</a></li>
      <li class="dropdown">
        <a href="sanpham.jsp">Sản phẩm <i class="fas fa-chevron-down"></i></a>
        <ul class="dropdown-content">
          <li><a href="phukien.jsp">Phụ Kiện</a></li>
          <li><a href="dotrangtri.jsp">Đồ Trang Trí</a></li>
         <li><a href="thoitrang.jsp">Thời Trang</a></li>
          <li><a href="quatang.jsp">Quà Tặng</a></li>
        </ul>
      </li>
      <li><a href="lienhe.jsp">Liên hệ</a></li>
    </ul>

    <div class="search-bar">
      <input type="text" placeholder="Tìm kiếm sản phẩm...">
    </div>

    <div class="header-icons">
      <a href="dangnhap.jsp"><i class="fas fa-user"></i></a>
       <a href="#"><i class="fas fa-heart"></i></a>
      <a href="#"><i class="fas fa-shopping-cart"></i><span class="cart-count">3</span></a>
    </div>
  </div>
</header>
    
    <section class="hero-banner">
        <div class="banner-image">
            <img src="anh/banner5.png" alt="">
            
        </div>
    </section>
    <main class="main-container">
    
       <div class="container">
        <h2 class="page-title">SẢN PHẨM</h2>

            
            
            
            
        <div class="products-grid">
            <!-- Product 1 -->
            <div class="product-card">
                <span class="product-badge">Bán chạy</span>
                <img src="anh/diavalamay.jpg" alt="Bộ đĩa và cành lá cói decor tường" class="product-image">
                <div class="product-info">
                    <h3 class="product-name">Bộ Đĩa Và Cành Lá Cói Decor Tường</h3>
                    <div class="product-price">
                        <span class="current-price">1.299.000 ₫</span>
                        <span class="original-price">1.499.000 ₫</span>
                    </div>
                    <div class="product-meta">
                        <span class="product-rating">★★★★★ (24)</span>
                        <a href="ctsp.jsp">
                        <button class="add-to-cart">ĐẶT HÀNG</button>
                        </a>
                    </div>
                </div>
            </div>
            
            <!-- Product 2 -->
            <div class="product-card">
                <img src="anh/xichdumay.png" alt="Xích Đu Mây" class="product-image">
                <div class="product-info">
                    <h3 class="product-name">Xích Đu Mây Decor Sân Vườn</h3>
                    <div class="product-price">
                        <span class="current-price">799.000 ₫</span>
                    </div>
                    <div class="product-meta">
                        <span class="product-rating">★★★★☆ (18)</span>
                        <a href="ctsp.jsp">
                        <button class="add-to-cart">ĐẶT HÀNG</button>
                        </a>
                    </div>
                </div>
            </div>
            
            <!-- Product 3 -->
            <div class="product-card">
                <span class="product-badge">Mới</span>
                <img src="anh/cocnenthom.png" alt="Cốc Nến Thơm" class="product-image">
                <div class="product-info">
                    <h3 class="product-name">Cốc Nến Thơm</h3>
                    <div class="product-price">
                        <span class="current-price">99.000 ₫</span>
                    </div>
                    <div class="product-meta">
                        <span class="product-rating">★★★★★ (12)</span>
                        <a href="ctsp.jsp">
                        <button class="add-to-cart">ĐẶT HÀNG</button>
                        </a>
                    </div>
                </div>
            </div>
            
            
            
            
            
            <!-- Product 7 -->
            <div class="product-card">
                <img src="anh/tuideocheocoi.png" alt="Túi Đeo Chéo Cói Hoa Cúc" class="product-image">
                <div class="product-info">
                    <h3 class="product-name">Túi Đeo Chéo Cói Hoa Cúc</h3>
                    <div class="product-price">
                        <span class="current-price">199.000 ₫</span>
                    </div>
                    <div class="product-meta">
                        <span class="product-rating">★★★★☆ (9)</span>
                        <a href="ctsp.jsp">
                        <button class="add-to-cart">ĐẶT HÀNG</button>
                        </a>
                    </div>
                </div>
            </div>
            
            <!-- Product 8 -->
            <div class="product-card">
                <img src="anh/tudaugiuongmanhmay.png" alt="Tủ Đầu Giường Mành Mây" class="product-image">
                <div class="product-info">
                    <h3 class="product-name">Tủ Đầu Giường Mành Mây</h3>
                    <div class="product-price">
                        <span class="current-price">299.000 ₫</span>
                    </div>
                    <div class="product-meta">
                        <span class="product-rating">★★★★★ (21)</span>
                        <a href="ctsp.jsp">
                        <button class="add-to-cart">ĐẶT HÀNG</button>
                        </a>
                    </div>
                </div>
            </div>
            
            <div class="product-card">
                <img src="anh/dentran.png" alt="Đèn MâyTreo Trần" class="product-image">
                <div class="product-info">
                    <h3 class="product-name">Đèn Mây Treo Trần</h3>
                    <div class="product-price">
                        <span class="current-price">359.000 ₫</span>
                    </div>
                    <div class="product-meta">
                        <span class="product-rating">★★★★★ (21)</span>
                         <a href="ctsp.jsp">
                        <button class="add-to-cart">ĐẶT HÀNG</button>
                        </a>
                    </div>
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


    <script src="js/sanpham.js"></script>
    </body>
</html>
