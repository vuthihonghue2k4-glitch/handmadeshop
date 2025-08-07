<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Thời Trang</title>
    <link rel="stylesheet" href="css/bohoa.css">
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
          <img src="anh/banner4.jpg" alt="">
        </div>
    </section>
<section class="featured-products">
    <h2 class="section-title">THỜI TRANG</h2>
<div class="product-container">
    <div class="product-card">
        <img src="anh/vayonghut.jpg" alt="Váy Ngắn Từ Ống Hút">
        <h3>Váy Ngắn Từ Ống Hút</h3>
        <p><span class="price">380,000VND</span> </p>
        <a href="chitietsp.jsp?id=5">
        <button>ĐẶT HÀNG</button>
        </a>
    </div>

    <div class="product-card">
        <img src="anh/aojean.jpg" alt="Áo Gile Denim ">
        <h3>Áo Gile Denim</h3>
        <p><span class="price">250,000VND</span></p>
        <a href="chitietsp.jsp?id=6">
        <button>ĐẶT HÀNG</button>
        </a>
    </div>

    <div class="product-card">
        <img src="anh/aochoang.jpg" alt="Áo Choàng Jean">
        <h3>Áo Choàng Jean</h3>
        <p><span class="price">250,000VND</span> </p>
        <a href="chitietsp.jsp?id=7">
        <button>ĐẶT HÀNG</button>
        </a>
    </div>

    <div class="product-card">
        <img src="anh/vaychobe.jpg" alt="Váy Cho Bé Từ NiLong">
        <h3>Váy Cho Bé Từ NiLong</h3>
        <p><span class="price">90,000VND</span> </p>
       <a href="chitietsp.jsp?id=8">
        <button>ĐẶT HÀNG</button>
        </a>
    </div>
</div>
</section>
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
</body>
</html>
