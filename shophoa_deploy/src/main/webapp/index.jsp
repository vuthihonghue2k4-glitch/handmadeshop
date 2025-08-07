<%-- 
    Document   : index
    Created on : Jun 21, 2025, 8:00:48 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/index.css">
    </head>
    <body>
      


         
    
            <div class="admin-container">
        <!-- Sidebar -->
        <div class="sidebar">
            <div class="sidebar-header">
                <h3>Admin Panel</h3>
            </div>
            <nav class="admin-menu">
                <ul>
                    <li >
                        <a href="dashboard.html">
                            <i class="fas fa-tachometer-alt"></i>
                            <span>Bảng điều khiển</span>
                        </a>
                    </li>
                    <li>
                        <a href="sanpham.jsp">
                            <i class="fas fa-tshirt"></i>
                            <span>Sản phẩm</span>
                        </a>
                    </li>
                    <li>
                        <a href="Donhang.html">
                            <i class="fas fa-shopping-cart"></i>
                            <span>Đơn hàng</span>
                            <span class="badge">15</span>
                        </a>
                    </li>
                    <li class="active">
                        <a href="index.jsp">
                            <i class="fas fa-users"></i>
                            <span>Khách hàng</span>
                        </a>
                    </li>
                    <li>
                        <a href="Khyenmai.html">
                            <i class="fas fa-percentage"></i>
                            <span>Khuyến mãi</span>
                        </a>
                    </li>
                    <li>
                        <a href="#reports">
                            <i class="fas fa-chart-bar"></i>
                            <span>Báo cáo</span>
                        </a>
                    </li>
                    <li>
                        <a href="#settings">
                            <i class="fas fa-cog"></i>
                            <span>Cài đặt</span>
                        </a>
                    </li>
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
                    <button class="btn btn-primary" id="addCustomerBtn">
                        <i class="fas fa-plus"></i> Thêm khách hàng
                    </button>
                </div>

                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Tên khách hàng</th>
                                        <th>Email</th>
                                        <th>Matkhau</th>
                                        <th>SĐT</th>
                                        <th>Địa chỉ</th>
                                        <th>Mã vận đơn</th>
                                        <th>Hành động</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                               <c:forEach items="${listP}" var="o">
                                <tr>
                                    <td>${o.id_khach_hang}</td>
                                    <td>${o.hoten}</td>
                                    <td>${o.email}</td>
                                    <td>${o.mat_khau}</td>
                                    <td>${o.dien_thoai}</td> <!-- Đổi từ SDT thành sdt -->
                                    <td>${o.dia_chi}</td>
                                    <td>${o.ma_van_don}</td>
                                    <td>
                                        <button class="btn btn-sm btn-info"><i class="fas fa-eye"></i></button>
                                        <button class="btn btn-sm btn-warning"><i class="fas fa-edit"></i></button>
                                        <button class="btn btn-sm btn-danger"><i class="fas fa-trash"></i></button>
                                    </td>
                                </tr>
                            </c:forEach>

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

    <!-- Modal Thêm/Sửa Khách hàng -->
    <div class="modal fade" id="customerModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalTitle">Thêm khách hàng mới</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="customerForm">
                        <div class="mb-3">
                            <label for="customerName" class="form-label">Tên khách hàng</label>
                            <input type="text" class="form-control" id="customerName" required>
                        </div>
                        <div class="mb-3">
                            <label for="customerEmail" class="form-label">Email</label>
                            <input type="email" class="form-control" id="customerEmail" required>
                        </div>
                        <div class="mb-3">
                            <label for="customerPhone" class="form-label">Số điện thoại</label>
                            <input type="tel" class="form-control" id="customerPhone">
                        </div>
                        <div class="mb-3">
                            <label for="customerAddress" class="form-label">Địa chỉ</label>
                            <textarea class="form-control" id="customerAddress" rows="2"></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="customerStatus" class="form-label">Trạng thái</label>
                            <select class="form-select" id="customerStatus">
                                <option value="active">Hoạt động</option>
                                <option value="inactive">Không hoạt động</option>
                                <option value="banned">Bị cấm</option>
                            </select>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                    <button type="button" class="btn btn-primary" id="saveCustomerBtn">Lưu</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script >document.addEventListener('DOMContentLoaded', function() {
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
