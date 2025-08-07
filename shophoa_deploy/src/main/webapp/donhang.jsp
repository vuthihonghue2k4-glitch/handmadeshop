
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
        <!-- Sidebar -->
        <div class="sidebar">
              <div class="sidebar-header">
                <h3>Admin Panel</h3>
            </div>
            <nav class="admin-menu">
                <ul>
                    <li><a href="dashboard.jsp"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
                    <li ><a href="Home1"><i class="fas fa-tshirt"></i> Sản phẩm</a></li>
                    <li class="active"><a href="donhang.jsp"><i class="fas fa-shopping-cart"></i> Đơn hàng</a></li>
                    <li><a href="khachhang.jsp"><i class="fas fa-users"></i> Khách hàng</a></li>
                    <li><a href="khuyenmai.jsp"><i class="fas fa-tag"></i> Khuyến mãi</a></li>
                    <li><a href="#"><i class="fas fa-chart-bar"></i> Báo cáo</a></li>
                </ul>
            </nav>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <div class="header">
                <div class="search-bar">
                    <input type="text" placeholder="Tìm kiếm đơn hàng...">
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
                    <h2>Quản lý Đơn hàng</h2>
                    <div class="filter-group">
                        <select class="form-select" id="statusFilter">
                            <option value="">Tất cả trạng thái</option>
                            <option value="pending">Chờ xử lý</option>
                            <option value="processing">Đang xử lý</option>
                            <option value="shipped">Đang giao</option>
                            <option value="delivered">Đã giao</option>
                            <option value="cancelled">Đã hủy</option>
                        </select>
                        <input type="date" class="form-control" id="dateFilter">
                    </div>
                </div>

                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>Mã đơn</th>
                                        <th>Khách hàng</th>
                                        <th>Ngày đặt</th>
                                        <th>Tổng tiền</th>
                                        <th>Phương thức</th>
                                        <th>Trạng thái</th>
                                        <th>Hành động</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>#ORD-20230001</td>
                                        <td>Nguyễn Văn A</td>
                                        <td>15/05/2023</td>
                                        <td>1,250,000₫</td>
                                        <td>COD</td>
                                        <td><span class="badge bg-warning">Chờ xử lý</span></td>
                                        <td>
                                            <button class="btn btn-sm btn-info view-order-btn"><i class="fas fa-eye"></i></button>
                                            <button class="btn btn-sm btn-primary update-status-btn"><i class="fas fa-sync-alt"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#ORD-20230002</td>
                                        <td>Trần Thị B</td>
                                        <td>20/06/2023</td>
                                        <td>2,500,000₫</td>
                                        <td>Chuyển khoản</td>
                                        <td><span class="badge bg-info">Đang xử lý</span></td>
                                        <td>
                                            <button class="btn btn-sm btn-info view-order-btn"><i class="fas fa-eye"></i></button>
                                            <button class="btn btn-sm btn-primary update-status-btn"><i class="fas fa-sync-alt"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#ORD-20230003</td>
                                        <td>Lê Văn C</td>
                                        <td>25/06/2023</td>
                                        <td>3,750,000₫</td>
                                        <td>Thẻ tín dụng</td>
                                        <td><span class="badge bg-primary">Đang giao</span></td>
                                        <td>
                                            <button class="btn btn-sm btn-info view-order-btn"><i class="fas fa-eye"></i></button>
                                            <button class="btn btn-sm btn-primary update-status-btn"><i class="fas fa-sync-alt"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#ORD-20230004</td>
                                        <td>Phạm Thị D</td>
                                        <td>30/06/2023</td>
                                        <td>1,000,000₫</td>
                                        <td>COD</td>
                                        <td><span class="badge bg-success">Đã giao</span></td>
                                        <td>
                                            <button class="btn btn-sm btn-info view-order-btn"><i class="fas fa-eye"></i></button>
                                            <button class="btn btn-sm btn-primary update-status-btn"><i class="fas fa-sync-alt"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#ORD-20230005</td>
                                        <td>Hoàng Văn E</td>
                                        <td>05/07/2023</td>
                                        <td>5,200,000₫</td>
                                        <td>Chuyển khoản</td>
                                        <td><span class="badge bg-danger">Đã hủy</span></td>
                                        <td>
                                            <button class="btn btn-sm btn-info view-order-btn"><i class="fas fa-eye"></i></button>
                                            <button class="btn btn-sm btn-primary update-status-btn"><i class="fas fa-sync-alt"></i></button>
                                        </td>
                                    </tr>
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
    <!-- Modal Chi tiết đơn hàng -->
    <div class="modal fade" id="orderDetailModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Chi tiết đơn hàng <span id="orderId"></span></h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <h6>Thông tin khách hàng</h6>
                            <ul class="list-unstyled">
                                <li><strong>Họ tên:</strong> <span id="customerName">Nguyễn Văn A</span></li>
                                <li><strong>Email:</strong> <span id="customerEmail">nguyenvana@example.com</span></li>
                                <li><strong>SĐT:</strong> <span id="customerPhone">0912345678</span></li>
                                <li><strong>Địa chỉ:</strong> <span id="customerAddress">123 Đường ABC, Quận 1, TP.HCM</span></li>
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <h6>Thông tin đơn hàng</h6>
                            <ul class="list-unstyled">
                                <li><strong>Ngày đặt:</strong> <span id="orderDate">15/05/2023</span></li>
                                <li><strong>Phương thức:</strong> <span id="paymentMethod">COD</span></li>
                                <li><strong>Trạng thái:</strong> <span id="orderStatus" class="badge bg-warning">Chờ xử lý</span></li>
                                <li><strong>Ghi chú:</strong> <span id="orderNotes">Giao hàng giờ hành chính</span></li>
                            </ul>
                        </div>
                    </div>

                    <hr>

                    <h6>Danh sách sản phẩm</h6>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Sản phẩm</th>
                                    <th>Đơn giá</th>
                                    <th>Số lượng</th>
                                    <th>Thành tiền</th>
                                </tr>
                            </thead>
                            <tbody id="orderItems">
                                <tr>
                                    <td>1</td>
                                    <td>iPhone 13 Pro Max</td>
                                    <td>25,000,000₫</td>
                                    <td>1</td>
                                    <td>25,000,000₫</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>AirPods Pro</td>
                                    <td>5,000,000₫</td>
                                    <td>2</td>
                                    <td>10,000,000₫</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="4" class="text-end"><strong>Tạm tính:</strong></td>
                                    <td>35,000,000₫</td>
                                </tr>
                                <tr>
                                    <td colspan="4" class="text-end"><strong>Phí vận chuyển:</strong></td>
                                    <td>30,000₫</td>
                                </tr>
                                <tr>
                                    <td colspan="4" class="text-end"><strong>Tổng cộng:</strong></td>
                                    <td>35,030,000₫</td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                    <button type="button" class="btn btn-primary" id="printOrderBtn"><i class="fas fa-print"></i> In đơn hàng</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal Cập nhật trạng thái -->
    <div class="modal fade" id="statusModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Cập nhật trạng thái đơn hàng</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="statusForm">
                        <div class="mb-3">
                            <label for="currentStatus" class="form-label">Trạng thái hiện tại</label>
                            <input type="text" class="form-control" id="currentStatus" readonly>
                        </div>
                        <div class="mb-3">
                            <label for="newStatus" class="form-label">Trạng thái mới</label>
                            <select class="form-select" id="newStatus" required>
                                <option value="">-- Chọn trạng thái --</option>
                                <option value="pending">Chờ xử lý</option>
                                <option value="processing">Đang xử lý</option>
                                <option value="shipped">Đang giao</option>
                                <option value="delivered">Đã giao</option>
                                <option value="cancelled">Đã hủy</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="statusNote" class="form-label">Ghi chú (nếu có)</label>
                            <textarea class="form-control" id="statusNote" rows="3"></textarea>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                    <button type="button" class="btn btn-primary" id="saveStatusBtn">Lưu thay đổi</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script >document.addEventListener('DOMContentLoaded', function() {
    // Khởi tạo modal
    const orderDetailModal = new bootstrap.Modal(document.getElementById('orderDetailModal'));
    const statusModal = new bootstrap.Modal(document.getElementById('statusModal'));
    
    // Lưu trữ thông tin đơn hàng được chọn
    let selectedOrder = null;
    
    // Xem chi tiết đơn hàng
    document.querySelectorAll('.view-order-btn').forEach(btn => {
        btn.addEventListener('click', function() {
            const row = this.closest('tr');
            selectedOrder = {
                id: row.cells[0].textContent,
                customer: row.cells[1].textContent,
                date: row.cells[2].textContent,
                total: row.cells[3].textContent,
                payment: row.cells[4].textContent,
                status: row.cells[5].querySelector('.badge').textContent
            };
            
            // Hiển thị thông tin đơn hàng (trong thực tế sẽ gọi API để lấy chi tiết)
            displayOrderDetails(selectedOrder);
            orderDetailModal.show();
        });
    });
    
    // Cập nhật trạng thái đơn hàng
    document.querySelectorAll('.update-status-btn').forEach(btn => {
        btn.addEventListener('click', function() {
            const row = this.closest('tr');
            selectedOrder = {
                id: row.cells[0].textContent,
                status: row.cells[5].querySelector('.badge').textContent
            };
            
            document.getElementById('currentStatus').value = selectedOrder.status;
            document.getElementById('statusForm').reset();
            statusModal.show();
        });
    });
    
    // Lưu trạng thái mới
    document.getElementById('saveStatusBtn').addEventListener('click', function() {
        const form = document.getElementById('statusForm');
        if (!form.checkValidity()) {
            form.classList.add('was-validated');
            return;
        }
        
        const newStatus = document.getElementById('newStatus').value;
        const note = document.getElementById('statusNote').value;
        
        // Ở đây bạn có thể thêm code để gửi dữ liệu cập nhật lên server
        console.log('Cập nhật trạng thái:', {
            orderId: selectedOrder.id,
            newStatus: newStatus,
            note: note
        });
        
        // Hiển thị thông báo thành công
        alert('Cập nhật trạng thái đơn hàng thành công!');
        
        // Đóng modal
        statusModal.hide();
        
        // Làm mới trang hoặc cập nhật UI (trong thực tế sẽ cập nhật từ response của API)
        location.reload();
    });
    
    // In đơn hàng
    document.getElementById('printOrderBtn').addEventListener('click', function() {
        window.print();
    });
    
    // Lọc đơn hàng
    document.getElementById('statusFilter').addEventListener('change', function() {
        filterOrders();
    });
    
    document.getElementById('dateFilter').addEventListener('change', function() {
        filterOrders();
    });
    
    // Hàm hiển thị chi tiết đơn hàng
    function displayOrderDetails(order) {
        document.getElementById('orderId').textContent = order.id;
        document.getElementById('orderDate').textContent = order.date;
        document.getElementById('paymentMethod').textContent = order.payment;
        
        const statusBadge = document.getElementById('orderStatus');
        statusBadge.textContent = order.status;
        
        // Cập nhật màu badge theo trạng thái
        statusBadge.className = 'badge ' + getStatusClass(order.status);
    }
    
    // Hàm lấy class CSS theo trạng thái
    function getStatusClass(status) {
        switch(status) {
            case 'Chờ xử lý': return 'bg-warning';
            case 'Đang xử lý': return 'bg-info';
            case 'Đang giao': return 'bg-primary';
            case 'Đã giao': return 'bg-success';
            case 'Đã hủy': return 'bg-danger';
            default: return 'bg-secondary';
        }
    }
    
    // Hàm lọc đơn hàng
    function filterOrders() {
        const statusFilter = document.getElementById('statusFilter').value;
        const dateFilter = document.getElementById('dateFilter').value;
        
        // Ở đây bạn có thể thêm code để gọi API lọc hoặc lọc dữ liệu trên client
        console.log('Lọc đơn hàng theo:', {
            status: statusFilter,
            date: dateFilter
        });
        
        // Trong thực tế sẽ cập nhật bảng dữ liệu dựa trên kết quả lọc
    }
});</script>
    </body>
</html>
