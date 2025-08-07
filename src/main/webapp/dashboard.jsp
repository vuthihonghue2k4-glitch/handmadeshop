
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <link rel="stylesheet" href="css/dashboard.css"/>
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
                    <li class="active"><a href="dashboard.jsp"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
                    <li ><a href="Home1"><i class="fas fa-tshirt"></i> Sản phẩm</a></li>
                    <li><a href="donhang.jsp"><i class="fas fa-shopping-cart"></i> Đơn hàng</a></li>
                    <li><a href="KhachhangServlet?action=lis"><i class="fas fa-users"></i> Khách hàng</a></li>
                    <li><a href="khuyenmai.jsp"><i class="fas fa-tag"></i> Khuyến mãi</a></li>
                    <li><a href="#"><i class="fas fa-chart-bar"></i> Báo cáo</a></li>
                </ul>
            </nav>
        </div>

        <!-- Main Content Area -->
        <main class="main-content">
            <!-- Top Header Bar -->
            <header class="admin-header">
                <div class="search-bar">
                    <i class="fas fa-search"></i>
                    <input type="text" placeholder="Tìm kiếm...">
                </div>
                
                <div class="user-actions">
                    <div class="notification">
                        <i class="fas fa-bell"></i>
                        <span class="badge">3</span>
                    </div>
                    <div class="user-profile">
                        <img src="admin-avatar.jpg" alt="Admin Avatar">
                        <span>Admin User</span>
                        <i class="fas fa-chevron-down"></i>
                    </div>
                </div>
            </header>

            <!-- Dashboard Content -->
            <section class="dashboard-content">
                <h1>Bảng điều khiển</h1>
                
                <!-- Stats Cards -->
                <div class="stats-cards">
                    <div class="card">
                        <div class="card-icon blue">
                            <i class="fas fa-shopping-cart"></i>
                        </div>
                        <div class="card-info">
                            <h3>Đơn hàng hôm nay</h3>
                            <p>42</p>
                        </div>
                    </div>
                    
                    <div class="card">
                        <div class="card-icon green">
                            <i class="fas fa-dollar-sign"></i>
                        </div>
                        <div class="card-info">
                            <h3>Doanh thu</h3>
                            <p>25.750.000₫</p>
                        </div>
                    </div>
                    
                    <div class="card">
                        <div class="card-icon orange">
                            <i class="fas fa-users"></i>
                        </div>
                        <div class="card-info">
                            <h3>Khách hàng mới</h3>
                            <p>18</p>
                        </div>
                    </div>
                    
                    <div class="card">
                        <div class="card-icon red">
                            <i class="fas fa-tshirt"></i>
                        </div>
                        <div class="card-info">
                            <h3>Sản phẩm tồn</h3>
                            <p>76</p>
                        </div>
                    </div>
                </div>
                
                <!-- Recent Orders Table -->
                <div class="recent-orders">
                    <div class="section-header">
                        <h2>Đơn hàng gần đây</h2>
                        <a href="#all-orders" class="view-all">Xem tất cả</a>
                    </div>
                    
                    <table>
                        <thead>
                            <tr>
                                <th>Mã đơn hàng</th>
                                <th>Khách hàng</th>
                                <th>Ngày đặt</th>
                                <th>Tổng tiền</th>
                                <th>Trạng thái</th>
                                <th>Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>#CAN-2023-001</td>
                                <td>Nguyễn Văn A</td>
                                <td>15/04/2023</td>
                                <td>1.250.000₫</td>
                                <td><span class="status completed">Hoàn thành</span></td>
                                <td>
                                    <button class="action-btn view"><i class="fas fa-eye"></i></button>
                                    <button class="action-btn edit"><i class="fas fa-edit"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td>#CAN-2023-002</td>
                                <td>Trần Thị B</td>
                                <td>14/04/2023</td>
                                <td>2.450.000₫</td>
                                <td><span class="status shipping">Đang giao</span></td>
                                <td>
                                    <button class="action-btn view"><i class="fas fa-eye"></i></button>
                                    <button class="action-btn edit"><i class="fas fa-edit"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <td>#CAN-2023-003</td>
                                <td>Lê Văn C</td>
                                <td>14/04/2023</td>
                                <td>3.750.000₫</td>
                                <td><span class="status pending">Chờ xử lý</span></td>
                                <td>
                                    <button class="action-btn view"><i class="fas fa-eye"></i></button>
                                    <button class="action-btn edit"><i class="fas fa-edit"></i></button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                
                <!-- Charts Section -->
                <div class="charts-section">
                    <div class="chart-container">
                        <h3>Doanh thu 7 ngày qua</h3>
                        <canvas id="revenueChart"></canvas>
                    </div>
                    <div class="chart-container">
                        <h3>Sản phẩm bán chạy</h3>
                        <canvas id="productsChart"></canvas>
                    </div>
                </div>
            </section>
        </main>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script >document.addEventListener('DOMContentLoaded', function() {
    // Khởi tạo biểu đồ doanh thu
    const revenueCtx = document.getElementById('revenueChart').getContext('2d');
    const revenueChart = new Chart(revenueCtx, {
        type: 'line',
        data: {
            labels: ['Thứ 2', 'Thứ 3', 'Thứ 4', 'Thứ 5', 'Thứ 6', 'Thứ 7', 'CN'],
            datasets: [{
                label: 'Doanh thu (triệu đồng)',
                data: [12, 19, 15, 22, 18, 25, 30],
                backgroundColor: 'rgba(52, 152, 219, 0.2)',
                borderColor: 'rgba(52, 152, 219, 1)',
                borderWidth: 2,
                tension: 0.4,
                fill: true
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top',
                }
            },
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });

    // Khởi tạo biểu đồ sản phẩm bán chạy
    const productsCtx = document.getElementById('productsChart').getContext('2d');
    const productsChart = new Chart(productsCtx, {
        type: 'bar',
        data: {
            labels: ['Áo thun', 'Quần jean', 'Áo khoác', 'Váy', 'Áo sơ mi'],
            datasets: [{
                label: 'Số lượng bán',
                data: [120, 85, 70, 110, 90],
                backgroundColor: [
                    'rgba(46, 204, 113, 0.7)',
                    'rgba(52, 152, 219, 0.7)',
                    'rgba(155, 89, 182, 0.7)',
                    'rgba(230, 126, 34, 0.7)',
                    'rgba(231, 76, 60, 0.7)'
                ],
                borderColor: [
                    'rgba(46, 204, 113, 1)',
                    'rgba(52, 152, 219, 1)',
                    'rgba(155, 89, 182, 1)',
                    'rgba(230, 126, 34, 1)',
                    'rgba(231, 76, 60, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    display: false
                }
            },
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });

    // Xử lý click menu
    const menuItems = document.querySelectorAll('.admin-menu li');
    menuItems.forEach(item => {
        item.addEventListener('click', function() {
            menuItems.forEach(i => i.classList.remove('active'));
            this.classList.add('active');
        });
    });

    // Xử lý dropdown user profile
    const userProfile = document.querySelector('.user-profile');
    userProfile.addEventListener('click', function() {
        // Thêm logic dropdown ở đây
        console.log('User profile clicked');
    });
});
</script>
    </body>
</html>
