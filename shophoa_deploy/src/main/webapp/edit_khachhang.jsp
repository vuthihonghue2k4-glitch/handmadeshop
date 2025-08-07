<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Entities.khachhang"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sửa thông tin khách hàng</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/donhang.css">
    </head>
    <body>
        <div class="admin-container">
            <!-- Sidebar Navigation -->
           <div class="sidebar">
             <div class="sidebar-header">
                <h3>Admin Panel</h3>
            </div>
            <nav class="admin-menu">
                <ul>
                    <li><a href="#"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
                    <li  ><a href="Home1"><i class="fas fa-tshirt"></i> Sản phẩm</a></li>
                    <li><a href="#"><i class="fas fa-shopping-cart"></i> Đơn hàng</a></li>
                    <li  class="active"><a href="KhachhangServlet?action=list"><i class="fas fa-users"></i> Khách hàng</a></li>
                    <li><a href="#"><i class="fas fa-tag"></i> Khuyến mãi</a></li>
                    <li><a href="#"><i class="fas fa-chart-bar"></i> Báo cáo</a></li>
                </ul>
            </nav>
        </div>

            <!-- Main Content -->
            <div class="main-content">
                <div class="header">
                    <div class="search-bar">
                        <input type="text" placeholder="Tìm kiếm khách hàng...">
                        <button><i class="fas fa-search"></i></button>
                    </div>
                    <div class="user-info">
                        <span>Xin chào, Admin</span>
                        <div class="avatar">
                            <i class="fas fa-user-circle"></i>
                        </div>
                    </div>
                </div>

                <div class="content">
                    <div class="page-header">
                        <h2>Sửa thông tin khách hàng</h2>
                        <a href="KhachhangServlet?action=list" class="btn btn-secondary">
                            <i class="fas fa-arrow-left"></i> Quay lại
                        </a>
                    </div>

                    <div class="card">
                        <div class="card-body">
                            <form action="KhachhangServlet" method="POST">
                                <input type="hidden" name="action" value="update">
                                <input type="hidden" name="id" value="${khachhang.id_khach_hang}">
                                
                                <div class="mb-3">
                                    <label for="hoten" class="form-label">Họ tên</label>
                                    <input type="text" class="form-control" id="hoten" name="hoten" 
                                           value="${khachhang.hoten}" required>
                                </div>
                                <div class="mb-3">
                                    <label for="email" class="form-label">Email</label>
                                    <input type="email" class="form-control" id="email" name="email" 
                                           value="${khachhang.email}" required>
                                </div>
                                <div class="mb-3">
                                    <label for="dien_thoai" class="form-label">Số điện thoại</label>
                                    <input type="tel" class="form-control" id="dien_thoai" name="dien_thoai" 
                                           value="${khachhang.dien_thoai}">
                                </div>
                                <div class="mb-3">
                                    <label for="dia_chi" class="form-label">Địa chỉ</label>
                                    <textarea class="form-control" id="dia_chi" name="dia_chi" rows="2">${khachhang.dia_chi}</textarea>
                                </div>
                                <div class="mb-3">
                                    <label for="vai_tro" class="form-label">Vai trò</label>
                                    <select class="form-select" id="vai_tro" name="vai_tro">
                                        <option value="user" ${khachhang.vai_tro == 'user' ? 'selected' : ''}>Người dùng</option>
                                        <option value="admin" ${khachhang.vai_tro == 'admin' ? 'selected' : ''}>Quản trị viên</option>
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-primary">Cập nhật</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>