<%-- 
    Document   : dangky
    Created on : Jun 3, 2025, 4:15:06 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HandMade Shop</title>
        <link rel="stylesheet" href="css/dangnhap.css">
    </head>
    <body>
       <div class="container">
        <h2>Đăng Ký Tài Khoản</h2>
        <form action="DangKyServlet" method="post">
            <input type="text" name="username" placeholder="Tên đăng nhập" required><br>
            <input type="password" name="password" placeholder="Mật khẩu" required><br>
            <input type="email" name="email" placeholder="Email" required><br>
            <input type="submit" value="Đăng ký">
        </form>
        <p>Đã có tài khoản? <a href="dangnhap.jsp">Đăng nhập</a></p>
    </div>
    </body>
</html>
