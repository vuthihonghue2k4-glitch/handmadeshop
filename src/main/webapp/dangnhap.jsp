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
        <%-- Hiển thị thông báo lỗi nếu có --%>
        <% if (request.getAttribute("error") != null) { %>
            <p style="color: red;"><%= request.getAttribute("error") %></p>
        <% } %>
        <form action="${pageContext.request.contextPath}/LoginServlet" method="post">
            <input type="email" name="email" placeholder="Email" required><br>
            <input type="password" name="password" placeholder="Mật khẩu" required><br>
            <input type="submit" value="Đăng nhập">
        </form>
        <p>Bạn chưa có tài khoản? <a href="dangky.jsp">Đăng ký ngay</a></p>
    </div>
    </body>
</html>
