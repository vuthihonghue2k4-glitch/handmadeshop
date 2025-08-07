<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Liên Hệ | Shop đồ HandMade</title>
    <link rel="stylesheet" href="css/lienhe.css">
        <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
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



<div class="contact-container">
    <h2>Liên Hệ Với Chúng Tôi</h2>
    <form class="contact-form" method="post" action="send-contact.jsp">
        <label for="name">Họ và tên:</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="message">Nội dung:</label>
        <textarea id="message" name="message" rows="5" required></textarea>

        <button type="submit">Gửi Liên Hệ</button>
    </form>

    <div class="contact-info">
        <p><i class="fa fa-map-marker"></i> Địa chỉ: 123 Đường Mây, Quận 1, TP HCM</p>
        <p><i class="fa fa-phone"></i> Điện thoại: 0123456789</p>
        <p><i class="fa fa-envelope"></i> Email: lienhe@handmadeshop.vn</p>
        <p><i class="fa fa-facebook"></i> Facebook: fb.com/handmadeshop</p>
    </div>
</div>

<footer>
    📞 Hotline: 0123456789 | Zalo | Facebook | Email
</footer>

</body>
</html>
