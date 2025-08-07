<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Đồ Trang Trí</title>
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
          <img src="anh/banner6.jpg" alt="">
        </div>
    </section>
    <section class="featured-products">
    <h2 class="section-title">ĐỒ TRANG TRÍ</h2>
    
    <div class="product-container">
    <div class="product-card">
        <div class="discount">GIẢM 7%</div>
        <img src="anh/pompom.jpg" alt="Pom-Pom Treo Tường Hình Đám Mây">
        <h3>Pom-Pom Treo Tường Hình Đám Mây</h3>
        <p><span class="price">110,000VND</span> <del>119,000VND</del></p>
        <a href="chitietsp.jsp?id=9">
        <button>ĐẶT HÀNG</button>
        </a>
    </div>

    <div class="product-card">
        <img src="anh/dentuthianhua.jpg" alt="Chụp Đèn Từ Thìa Nhựa">
        <h3>Chụp Đèn Từ Thìa Nhựa</h3>
        <p><span class="price">50,000VND</span></p>
        <a href="chitietsp.jsp?id=10">
        <button>ĐẶT HÀNG</button>
        </a>
    </div>

    <div class="product-card">
        <img src="anh/chaucaygia.jpg" alt="Chậu Cây Giả Từ Chai Nhựa">
        <h3>Chậu Cây Giả Từ Chai Nhựa</h3>
        <p><span class="price">89,000VND</span> </p>
        <a href="chitietsp.jsp?id=11">
        <button>ĐẶT HÀNG</button>
        </a>
    </div>

    <div class="product-card">
        <img src="anh/chauhoathuytinh.jpg" alt="Bình Hoa Treo Tường Thủy Tinh">
        <h3>Bình Hoa Treo Tường Thủy Tinh</h3>
        <p><span class="price">55,000VND</span> </p>
        <a href="chitietsp.jsp?id=12">
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
