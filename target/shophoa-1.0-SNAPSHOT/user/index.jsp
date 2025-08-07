
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>HandMade Shop</title>
        <link rel="stylesheet" href="css/gioithieu.css">
        <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
    </head>
    
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
    
    <!-- Hero Section -->
   <section class="hero-banner">
  <div class="banner-image">
    <img src="anh/Banner2.jpg" alt="Banner thời trang">
    <a href="trangchu.jsp" class="shop-now-btn">Shop now</a>
  </div>
</section>
    
    <!-- Main Content -->
    <main class="main-container">
      
        
        <!-- Mission Section -->
        <section class="section">
            <h2 class="section-title">Sứ mệnh & Tầm nhìn</h2>
            <div class="section-content">
                <div class="section-image">
                    <img src="https://misswood.eu/cdn/shop/articles/7-marcas-handmade-que-te-van-a-chiflar-285653.jpg?v=1596548782" alt="Sứ mệnh">
                </div>
                <div class="section-text">
                    <h2>Sứ mệnh</h2>
                    <h4>Mang đến những bông hoa tươi đẹp nhất, truyền tải thông điệp yêu thương và góp phần làm cuộc sống tươi đẹp hơn thông qua ngôn ngữ của hoa.</h4>
                    
                    <h2>Tầm nhìn</h2>
                    <h4>Trở thành thương hiệu cung cấp hoa tươi và dịch vụ liên quan hàng đầu Việt Nam, mở rộng thị trường ra khu vực Đông Nam Á trong 5 năm tới.</h4>
                    
                    <h2>Giá trị cốt lõi</h2>
                    <h4>Chất lượng - Sáng tạo - Tận tâm - Bền vững</h4>
                </div>
            </div>
        </section>
        
        <!-- Team Section -->
        <section class="section">
            <h2 class="section-title">Đội ngũ của chúng tôi</h2>
            <div class="team-grid">
                <div class="team-member">
                    <div class="member-image">
                        <img src="https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80" alt="Trần Thùy Nhung">
                    </div>
                    <div class="member-info">
                        <h4 class="member-name">Trần Thùy Nhung</h4>
                        <p class="member-position">Nhà sáng lập</p>
                        <p>Với 15 năm kinh nghiệm trong ngành </p>
                    </div>
                </div>
                
  
                <div class="team-member">
                    <div class="member-image">
                        <img src="https://images.unsplash.com/photo-1551836022-d5d88e9218df?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80" alt="Vũ Thùy Mây">
                    </div>
                    <div class="member-info">
                        <h4 class="member-name">Vũ Thùy Mây</h4>
                        <p class="member-position">Nhà thiết kế sản phẩm</p>
                        <p>Chuyên gia thiết kế đồ dùng nghệ thuật</p>
                    </div>
                </div>
                
                
                <div class="team-member">
                    <div class="member-image">
                        <img src="https://cdn2.fptshop.com.vn/unsafe/800x0/avatar_nu_22_a14fdc7472.jpg" alt="Đặng Thu Trang">
                    </div>
                    <div class="member-info">
                        <h4 class="member-name">Đặng Thu Trang</h4>
                        <p class="member-position">Nhà thiết kế sản phẩm</p>
                        <p>Chuyên gia thiết kế đồ dùng sáng tạo</p>
                    </div>
                </div>
            </div>
        </section>
        
        <!-- Values Section -->
        <section class="section">
            <h2 class="section-title">Điều làm nên HandMade Shop</h2>
            <div class="values-grid">
                <div class="value-card">
                    <div class="value-icon">
                        <i class="fas fa-seedling"></i>
                    </div>
                    <h3 class="value-title">Đồ dùng chất lượng</h3>
                    <p>Chúng tôi chỉ sử dụng những chất liệu chất lượng cao, đảm bảo chất lượng.</p>
                </div>
                
                <div class="value-card">
                    <div class="value-icon">
                        <i class="fas fa-heart"></i>
                    </div>
                    <h3 class="value-title">Thiết kế tận tâm</h3>
                    <p>Mỗi sản phẩm được thiết kế tỉ mỉ, mang đậm dấu ấn cá nhân và thông điệp của khách hàng.</p>
                </div>
                
                <div class="value-card">
                    <div class="value-icon">
                        <i class="fas fa-truck"></i>
                    </div>
                    <h3 class="value-title">Giao hàng nhanh chóng</h3>
                    <p>Hệ thống giao hàng chuyên nghiệp, đảm bảo sản phẩm nguyên vẹn đến tay khách hàng.</p>
                </div>
            </div>
        </section>
        
        <!-- CTA Section -->
        <section class="cta-section">
            <h2 class="cta-title">Sẵn sàng mang sản phẩm đến với bạn</h2>
            <p class="cta-text">Hãy khám phá bộ sưu tập sản phẩm handmade đẹp nhất của chúng tôi hoặc liên hệ để được tư vấn thiết kế sản phẩm theo yêu cầu.</p>
            <a href="#" class="cta-button">Xem sản phẩm ngay</a>
        </section>
    </main>
    
    <!-- Footer -->
    <footer class="footer">
        <div class="footer-container">
            <div class="footer-col">
                <h3>HandMade Shop</h3>
                <p>Cửa hàng sản phẩm chất lượng cao với nhiều năm kinh nghiệm trong ngành.</p>
                <div class="social-links">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-youtube"></i></a>
                    <a href="#"><i class="fab fa-tiktok"></i></a>
                </div>
            </div>
            
            <div class="footer-col">
                <h3>Liên kết nhanh</h3>
                <ul class="footer-links">
                    <li><a href="#">Trang chủ</a></li>
                    <li><a href="#">Sản phẩm</a></li>
                    <li><a href="#">Giới thiệu</a></li>
                    <li><a href="#">Liên hệ</a></li>
                </ul>
            </div>
            
            <div class="footer-col">
                <h3>Danh mục</h3>
                <ul class="footer-links">
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                </ul>
            </div>
            
            <div class="footer-col">
                <h3>Liên hệ</h3>
                <ul class="footer-links">
                    <li><a href="#">123 Đường Mây, Quận 1, TP.HCM</a></li>
                    <li><a href="#">0123 456 789</a></li>
                    <li><a href="#">info@handmadeshop.com</a></li>
                </ul>
            </div>
        </div>
        
        <div class="copyright">
            <p>&copy; 2023 HandMade Shop. All rights reserved.</p>
        </div>
    </footer>
    <script src="Trangchu.js"></script>
   
    
</html>
