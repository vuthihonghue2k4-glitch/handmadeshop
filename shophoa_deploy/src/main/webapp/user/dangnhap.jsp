<%-- 
    Document   : dangnhap
    Created on : Jun 3, 2025, 4:14:50 PM
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
        <h2>Đăng Nhập</h2>
        <form action="expend/login.jsp" method="post">
            <input type="text" name="username" placeholder="Tên đăng nhập" required><br>
            <input type="password" name="password" placeholder="Mật khẩu" required><br>
            <input type="submit" value="Đăng nhập">
        </form>
        <p>Bạn chưa có tài khoản? <a href="dangky.jsp">Đăng ký ngay</a></p>
    </div>
    </body>
</html>
