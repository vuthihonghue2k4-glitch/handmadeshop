<%-- 
    Document   : trangchu
    Created on : Jun 3, 2025, 11:40:07 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>HandMade Shop</title>
        <link rel="stylesheet" href="css/trangchu.css">
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



<main class="main-content">
 <section class="banner-slider">
  <div class="slide active" style="background-image: url('anh/Banner1.jpg');">
    <div class="slide-content">
      <!-- <h2>Chào mừng đến với cửa hàng của chúng tôi!</h2>
      <p>Khám phá những sản phẩm nổi bật với ưu đãi đặc biệt hôm nay.</p>
      <a href="#" class="btn">Mua ngay</a> -->
    </div>
  </div>
  <div class="slide" style="background-image: url('anh/banner3.jpg');">
    <div class="slide-content">
      <h2>Sản phẩm chất lượng</h2>
      <p>Chúng tôi cung cấp các sản phẩm thân thiện với môi trường.</p>
      <a href="#" class="btn">Xem thêm</a>
    </div>
  </div>
  <div class="slide" style="background-image: url('anh/banner4.jpg');">
    <div class="slide-content">
      <h2>Giao hàng nhanh chóng</h2>
      <p>Giao hàng tận nơi nhanh chóng, tiện lợi, an toàn.</p>
      <a href="#" class="btn">Tìm hiểu thêm</a>
    </div>
  </div>

  <!-- Mũi tên điều hướng -->
  <div class="slider-arrows">
    <div class="arrow prev">&#10094;</div>
    <div class="arrow next">&#10095;</div>
  </div>

  <!-- Dots điều hướng -->
  <div class="slider-nav">
    <div class="slider-dot active"></div>
    <div class="slider-dot"></div>
    <div class="slider-dot"></div>
  </div>
</section>


  
  <!-- Categories -->
  <section class="categories">
      <h2 class="section-title">DANH MỤC SẢN PHẨM</h2>
      <div class="category-grid">
          <div class="category-card">
              <img src="anh/chauhoathuytinh.jpg" alt="Đồ Trang Trí">
              <div class="category-overlay">
                  <h3>Đồ Trang Trí</h3>
                  <p>Khám phá ngay</p>
              </div>
          </div>
          <div class="category-card">
              <img src="anh/tuideocheocoi.png" alt="Phụ Kiện">
              <div class="category-overlay">
                  <h3>Phụ Kiện</h3>
                  <p>Khám phá ngay</p>
              </div>
          </div>
          <div class="category-card">
              <img src="anh/vayonghut.jpg" alt="Thời Trang">
              <div class="category-overlay">
                  <h3>Thời Trang</h3>
                  <p>Khám phá ngay</p>
              </div>
          </div>
          <div class="category-card">
              <img src="anh/xaphong.png" alt="Quà Tặng">
              <div class="category-overlay">
                  <h3>Quà Tặng</h3>
                  <p>Khám phá ngay</p>
              </div>
          </div>
      </div>
  </section>
  
  <!-- Featured Products -->
 <section class="featured-products">
    <h2 class="section-title">SẢN PHẨM NỔI BẬT</h2>
    
    <div class="product-grid">
        <div class="product-card">
            <div class="product-image">
                <img src="anh/diavalamay.jpg" alt="Đồ Trang Trí" />
            </div>
            <div class="product-info">
                
                
                <button class="add-to-cart">THÊM VÀO GIỎ</button>
            </div>
        </div>

        <div class="product-card">
            <div class="product-image">
                <img src="anh/hopqua.jpg" alt="Quà Tặng " />
            </div>
            <div class="product-info">
                <button class="add-to-cart">THÊM VÀO GIỎ</button>
            </div>
        </div>

        <div class="product-card">
            <div class="product-image">
                <img src="anh/aochoang.jpg" alt="Thời Trang" />
            </div>
            <div class="product-info">
                <button class="add-to-cart">THÊM VÀO GIỎ</button>
            </div>
        </div>
        
        <div class="product-card">
            <div class="product-image">
                <img src="anh/bongtai1.jpg" alt="Phụ Kiện" />
            </div>
            <div class="product-info">
                
                <button class="add-to-cart">THÊM VÀO GIỎ</button>
            </div>
        </div>

        
</section>
  
  <!-- Newsletter -->
  <section class="newsletter">
      <div class="newsletter-container">
          <h2>ĐĂNG KÝ NHẬN TIN</h2>
          <p>Nhận thông tin khuyến mãi và cập nhật sản phẩm mới nhất từ chúng tôi</p>
          <form class="newsletter-form">
              <input type="email" placeholder="Nhập email của bạn">
              <button type="submit">ĐĂNG KÝ</button>
          </form>
      </div>
  </section>
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

        <script src="js/trangchu.js"></script>
    </body>
</html>
