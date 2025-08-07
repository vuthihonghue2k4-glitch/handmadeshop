<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/khuyenmai.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<div class="admin-container">
    <div class="sidebar">
              <div class="sidebar-header">
                <h3>Admin Panel</h3>
            </div>
            <nav class="admin-menu">
                <ul>
                    <li><a href="dashboard.jsp"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
                    <li ><a href="Home1"><i class="fas fa-tshirt"></i> Sản phẩm</a></li>
                    <li><a href="donhang.jsp"><i class="fas fa-shopping-cart"></i> Đơn hàng</a></li>
                    <li><a href="khachhang.jsp"><i class="fas fa-users"></i> Khách hàng</a></li>
                    <li a class="active"><a href="khuyenmai.jsp"><i class="fas fa-tag"></i> Khuyến mãi</a></li>
                    <li ><a href="#"><i class="fas fa-chart-bar"></i> Báo cáo</a></li>
                </ul>
            </nav>
        </div>

    <!-- Main Content -->
    <div class="main-content">
        <!-- Header -->
        <div class="header">
            <h2>Quản Lý Khuyến Mãi</h2>
            <div class="header-actions">
                <button class="btn btn-promo" id="addPromotionBtn">
                    <i class="fas fa-plus"></i>
                    Thêm khuyến mãi
                </button>
            </div>
        </div>

        <!-- Search and Filter -->
        <div class="search-filter">
            <div class="search-box">
                <i class="fas fa-search"></i>
                <input type="text" placeholder="Tìm kiếm chương trình khuyến mãi...">
            </div>
            <div class="filter-group">
                <select id="promoTypeFilter">
                    <option value="">Tất cả loại</option>
                    <option value="percent">Giảm giá %</option>
                    <option value="fixed">Giảm giá tiền mặt</option>
                    <option value="free-ship">Miễn phí vận chuyển</option>
                    <option value="gift">Quà tặng</option>
                </select>
                <select id="statusFilter">
                    <option value="">Tất cả trạng thái</option>
                    <option value="active">Đang diễn ra</option>
                    <option value="upcoming">Sắp diễn ra</option>
                    <option value="expired">Đã kết thúc</option>
                </select>
            </div>
        </div>

        <!-- Promotion Cards View -->
        <div class="promotion-cards">
            <!-- Promotion Card 1 -->
            <div class="promo-card">
                <div class="promo-header">
                    <div class="promo-title">Giảm 30% mùa hè</div>
                    <span class="promo-code">SUMMER30</span>
                </div>
                <div class="promo-body">
                    <div class="promo-detail">
                        <span class="promo-detail-label">Loại khuyến mãi:</span>
                        <span class="promo-detail-value">Giảm giá %</span>
                    </div>
                    <div class="promo-detail">
                        <span class="promo-detail-label">Giá trị:</span>
                        <span class="discount-value">30%</span>
                    </div>
                    <div class="promo-detail">
                        <span class="promo-detail-label">Áp dụng:</span>
                        <span class="promo-detail-value">Tất cả sản phẩm</span>
                    </div>
                    <div class="promo-detail">
                        <span class="promo-detail-label">Thời gian:</span>
                        <span class="promo-detail-value">01/06 - 30/06/2023</span>
                    </div>
                    <div class="promo-detail">
                        <span class="promo-detail-label">Đã sử dụng:</span>
                        <span class="promo-detail-value">245 lượt</span>
                    </div>
                </div>
                <div class="promo-footer">
                    <span class="promo-status status-active">Đang diễn ra</span>
                    <div class="promo-actions">
                        <button class="promo-action-btn edit" title="Sửa">
                            <i class="fas fa-edit"></i>
                        </button>
                        <button class="promo-action-btn delete" title="Xóa">
                            <i class="fas fa-trash"></i>
                        </button>
                    </div>
                </div>
            </div>

            <!-- Promotion Card 2 -->
            <div class="promo-card">
                <div class="promo-header">
                    <div class="promo-title">Giảm 500K đơn từ 3 triệu</div>
                    <span class="promo-code">SALE500</span>
                </div>
                <div class="promo-body">
                    <div class="promo-detail">
                        <span class="promo-detail-label">Loại khuyến mãi:</span>
                        <span class="promo-detail-value">Giảm giá tiền mặt</span>
                    </div>
                    <div class="promo-detail">
                        <span class="promo-detail-label">Giá trị:</span>
                        <span class="discount-value">500.000₫</span>
                    </div>
                    <div class="promo-detail">
                        <span class="promo-detail-label">Áp dụng:</span>
                        <span class="promo-detail-value">Đơn từ 3.000.000₫</span>
                    </div>
                    <div class="promo-detail">
                        <span class="promo-detail-label">Thời gian:</span>
                        <span class="promo-detail-value">15/06 - 30/06/2023</span>
                    </div>
                    <div class="promo-detail">
                        <span class="promo-detail-label">Đã sử dụng:</span>
                        <span class="promo-detail-value">0 lượt</span>
                    </div>
                </div>
                <div class="promo-footer">
                    <span class="promo-status status-upcoming">Sắp diễn ra</span>
                    <div class="promo-actions">
                        <button class="promo-action-btn edit" title="Sửa">
                            <i class="fas fa-edit"></i>
                        </button>
                        <button class="promo-action-btn delete" title="Xóa">
                            <i class="fas fa-trash"></i>
                        </button>
                    </div>
                </div>
            </div>
            

            <!-- Promotion Card 3 -->
            <div class="promo-card">
                <div class="promo-header">
                    <div class="promo-title">Miễn phí vận chuyển</div>
                    <span class="promo-code">FREESHIP</span>
                </div>
                <div class="promo-body">
                    <div class="promo-detail">
                        <span class="promo-detail-label">Loại khuyến mãi:</span>
                        <span class="promo-detail-value">Miễn phí vận chuyển</span>
                    </div>
                    <div class="promo-detail">
                        <span class="promo-detail-label">Giá trị:</span>
                        <span class="discount-value">Miễn phí</span>
                    </div>
                    <div class="promo-detail">
                        <span class="promo-detail-label">Áp dụng:</span>
                        <span class="promo-detail-value">Toàn quốc</span>
                    </div>
                    <div class="promo-detail">
                        <span class="promo-detail-label">Thời gian:</span>
                        <span class="promo-detail-value">01/05 - 31/05/2023</span>
                    </div>
                    <div class="promo-detail">
                        <span class="promo-detail-label">Đã sử dụng:</span>
                        <span class="promo-detail-value">189 lượt</span>
                    </div>
                </div>
                <div class="promo-footer">
                    <span class="promo-status status-expired">Đã kết thúc</span>
                    <div class="promo-actions">
                        <button class="promo-action-btn edit" title="Sửa">
                            <i class="fas fa-edit"></i>
                        </button>
                        <button class="promo-action-btn delete" title="Xóa">
                            <i class="fas fa-trash"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Promotion Table View -->
        <div class="promotion-table">
            <h3>Danh sách khuyến mãi</h3>
            <table>
                <thead>
                    <tr>
                        <th>Mã KM</th>
                        <th>Tên chương trình</th>
                        <th>Loại</th>
                        <th>Giá trị</th>
                        <th>Điều kiện</th>
                        <th>Thời gian</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>SUMMER30</td>
                        <td>Giảm 30% mùa hè</td>
                        <td>Giảm giá %</td>
                        <td>30%</td>
                        <td>Tất cả sản phẩm</td>
                        <td>01/06 - 30/06/2023</td>
                        <td><span class="promo-status status-active">Đang diễn ra</span></td>
                        <td>
                            <div class="promo-actions">
                                <button class="promo-action-btn edit" title="Sửa">
                                    <i class="fas fa-edit"></i>
                                </button>
                                <button class="promo-action-btn delete" title="Xóa">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>SALE500</td>
                        <td>Giảm 500K đơn từ 3 triệu</td>
                        <td>Giảm giá tiền mặt</td>
                        <td>500.000₫</td>
                        <td>Đơn từ 3.000.000₫</td>
                        <td>15/06 - 30/06/2023</td>
                        <td><span class="promo-status status-upcoming">Sắp diễn ra</span></td>
                        <td>
                            <div class="promo-actions">
                                <button class="promo-action-btn edit" title="Sửa">
                                    <i class="fas fa-edit"></i>
                                </button>
                                <button class="promo-action-btn delete" title="Xóa">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>FREESHIP</td>
                        <td>Miễn phí vận chuyển</td>
                        <td>Miễn phí VC</td>
                        <td>Miễn phí</td>
                        <td>Toàn quốc</td>
                        <td>01/05 - 31/05/2023</td>
                        <td><span class="promo-status status-expired">Đã kết thúc</span></td>
                        <td>
                            <div class="promo-actions">
                                <button class="promo-action-btn edit" title="Sửa">
                                    <i class="fas fa-edit"></i>
                                </button>
                                <button class="promo-action-btn delete" title="Xóa">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
    <!-- Promotion Modal (sẽ hiển thị khi click thêm/sửa khuyến mãi) -->
    <div id="promotionModal" style="display: none;">
        <!-- Nội dung modal sẽ được thêm bằng JavaScript -->
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Xử lý click menu
            const menuItems = document.querySelectorAll('.sidebar-menu li');
            menuItems.forEach(item => {
                item.addEventListener('click', function() {
                    menuItems.forEach(i => i.classList.remove('active'));
                    this.classList.add('active');
                });
            });
            
            // Xử lý click nút thêm khuyến mãi
            const addPromotionBtn = document.getElementById('addPromotionBtn');
            addPromotionBtn.addEventListener('click', function() {
                alert('Chức năng thêm khuyến mãi sẽ được mở ở đây');
                // Thực tế sẽ mở một modal form để thêm khuyến mãi
            });
            
            // Xử lý click nút sửa/xóa
            const editBtns = document.querySelectorAll('.promo-action-btn.edit');
            const deleteBtns = document.querySelectorAll('.promo-action-btn.delete');
            
            editBtns.forEach(btn => {
                btn.addEventListener('click', function() {
                    const promoCode = this.closest('.promo-card') ? 
                        this.closest('.promo-card').querySelector('.promo-code').textContent :
                        this.closest('tr').querySelector('td:first-child').textContent;
                    alert(`Sửa khuyến mãi ${promoCode}`);
                });
            });
            
            deleteBtns.forEach(btn => {
                btn.addEventListener('click', function() {
                    const promoCode = this.closest('.promo-card') ? 
                        this.closest('.promo-card').querySelector('.promo-code').textContent :
                        this.closest('tr').querySelector('td:first-child').textContent;
                    if(confirm(`Bạn có chắc muốn xóa khuyến mãi ${promoCode}?`)) {
                        alert(`Đã xóa khuyến mãi ${promoCode}`);
                    }
                });
            });
        });
    </script>
</body>
</html>