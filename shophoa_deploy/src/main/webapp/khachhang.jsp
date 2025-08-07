

<%@page import="Entities.khachhang"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                    <li><a href="dashboard.jsp"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
                    <li ><a href="Home1"><i class="fas fa-tshirt"></i> Sản phẩm</a></li>
                    <li><a href="donhang.jsp"><i class="fas fa-shopping-cart"></i> Đơn hàng</a></li>
                    <li class="active"><a  href="KhachhangServlet?action=list"><i class="fas fa-users"></i> Khách hàng</a></li>
                    <li><a href="khuyenmai.jsp"><i class="fas fa-tag"></i> Khuyến mãi</a></li>
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
                        <h2>Quản lý Khách hàng</h2>
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#customerModal">
                            <i class="fas fa-plus"></i> Thêm khách hàng
                        </button>
                    </div>

                    <!-- Hiển thị thông báo -->
                    <% if (request.getSession().getAttribute("message") != null) { %>
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <%= request.getSession().getAttribute("message") %>
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                        <% request.getSession().removeAttribute("message"); %>
                    <% } %>
                    
                    <% if (request.getSession().getAttribute("error") != null) { %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            <%= request.getSession().getAttribute("error") %>
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                        <% request.getSession().removeAttribute("error"); %>
                    <% } %>

                    <div class="card">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Tên khách hàng</th>
                                            <th>Email</th>
                                            <th>Số điện thoại</th>
                                            <th>Địa chỉ</th>
                                            <th>Vai trò</th>
                                            <th>Ngày đăng ký</th>
                                            <th>Hành động</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% 
                                            List<khachhang> listKhachHang = (List<khachhang>) request.getAttribute("listKhachHang");
                                            if (listKhachHang != null) {
                                                for (khachhang kh : listKhachHang) {
                                        %>
                                        <tr>
                                            <td><%= kh.getId_khach_hang() %></td>
                                            <td><%= kh.getHoten() %></td>
                                            <td><%= kh.getEmail() %></td>
                                            <td><%= kh.getDien_thoai() %></td>
                                            <td><%= kh.getDia_chi() %></td>
                                            <td>
                                                <span class="badge <%= kh.getVai_tro().equals("admin") ? "bg-danger" : "bg-success" %>">
                                                    <%= kh.getVai_tro().equals("admin") ? "Quản trị" : "Người dùng" %>
                                                </span>
                                            </td>
                                            <td><%= kh.getNgay_tao() %></td>
                                            <td>
                                                <a href="KhachhangServlet?action=edit&id=<%= kh.getId_khach_hang() %>" class="btn btn-sm btn-warning">
                                                    <i class="fas fa-edit"></i>
                                                </a>
                                                <a href="KhachhangServlet?action=delete&id=<%= kh.getId_khach_hang() %>" 
                                                   class="btn btn-sm btn-danger" 
                                                   onclick="return confirm('Bạn có chắc chắn muốn xóa khách hàng này?')">
                                                    <i class="fas fa-trash"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <% 
                                                }
                                            }
                                        %>
                                    </tbody>
                                </table>
                            </div>

                            <nav aria-label="Page navigation">
                                <ul class="pagination justify-content-center">
                                    <li class="page-item disabled">
                                        <a class="page-link" href="#" tabindex="-1">Trước</a>
                                    </li>
                                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">Tiếp</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Thêm Khách hàng -->
        <div class="modal fade" id="customerModal" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Thêm khách hàng mới</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="KhachhangServlet" method="POST">
                        <div class="modal-body">
                            <input type="hidden" name="action" value="add">
                            <div class="mb-3">
                                <label for="hoten" class="form-label">Họ tên</label>
                                <input type="text" class="form-control" id="hoten" name="hoten" required>
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control" id="email" name="email" required>
                            </div>
                            <div class="mb-3">
                                <label for="mat_khau" class="form-label">Mật khẩu</label>
                                <input type="password" class="form-control" id="mat_khau" name="mat_khau" required>
                            </div>
                            <div class="mb-3">
                                <label for="dien_thoai" class="form-label">Số điện thoại</label>
                                <input type="tel" class="form-control" id="dien_thoai" name="dien_thoai">
                            </div>
                            <div class="mb-3">
                                <label for="dia_chi" class="form-label">Địa chỉ</label>
                                <textarea class="form-control" id="dia_chi" name="dia_chi" rows="2"></textarea>
                            </div>
                            <div class="mb-3">
                                <label for="vai_tro" class="form-label">Vai trò</label>
                                <select class="form-select" id="vai_tro" name="vai_tro">
                                    <option value="user">Người dùng</option>
                                    <option value="admin">Quản trị viên</option>
                                </select>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                            <button type="submit" class="btn btn-primary">Lưu</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script >
        document.addEventListener('DOMContentLoaded', function() {
    // Khởi tạo modal
    const customerModal = new bootstrap.Modal(document.getElementById('customerModal'));
    
    // Nút thêm khách hàng
    document.getElementById('addCustomerBtn').addEventListener('click', function() {
        document.getElementById('modalTitle').textContent = 'Thêm khách hàng mới';
        document.getElementById('customerForm').reset();
        customerModal.show();
    });
    
    // Lưu thông tin khách hàng
    document.getElementById('saveCustomerBtn').addEventListener('click', function() {
        // Validate form
        const form = document.getElementById('customerForm');
        if (!form.checkValidity()) {
            form.classList.add('was-validated');
            return;
        }
        
        // Lấy dữ liệu từ form
        const customerData = {
            name: document.getElementById('customerName').value,
            email: document.getElementById('customerEmail').value,
            phone: document.getElementById('customerPhone').value,
            address: document.getElementById('customerAddress').value,
            status: document.getElementById('customerStatus').value
        };
        
        // Ở đây bạn có thể thêm code để gửi dữ liệu lên server
        console.log('Dữ liệu khách hàng:', customerData);
        
        // Hiển thị thông báo thành công
        alert('Lưu thông tin khách hàng thành công!');
        
        // Đóng modal
        customerModal.hide();
    });
    
    // Xử lý các nút hành động trong bảng
    document.querySelectorAll('.table .btn-info').forEach(btn => {
        btn.addEventListener('click', function() {
            // Xem chi tiết khách hàng
            alert('Xem chi tiết khách hàng');
        });
    });
    
    document.querySelectorAll('.table .btn-warning').forEach(btn => {
        btn.addEventListener('click', function() {
            // Sửa thông tin khách hàng
            const row = this.closest('tr');
            document.getElementById('modalTitle').textContent = 'Sửa thông tin khách hàng';
            
            // Điền dữ liệu vào form (giả lập)
            document.getElementById('customerName').value = row.cells[1].textContent;
            document.getElementById('customerEmail').value = row.cells[2].textContent;
            document.getElementById('customerPhone').value = row.cells[3].textContent;
            document.getElementById('customerAddress').value = row.cells[4].textContent;
            
            customerModal.show();
        });
    });
    
    document.querySelectorAll('.table .btn-danger').forEach(btn => {
        btn.addEventListener('click', function() {
            // Xóa khách hàng
            if (confirm('Bạn có chắc chắn muốn xóa khách hàng này?')) {
                const row = this.closest('tr');
                row.remove();
                alert('Đã xóa khách hàng thành công!');
            }
        });
    });
});
</script>
    </body>
</html>
