<%-- 
    Document   : thu
    Created on : Jun 24, 2025, 9:00:10 AM
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="css/thu.css">
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
                    <li class="active"><a href="Home1"><i class="fas fa-tshirt"></i> Sản phẩm</a></li>
                    <li><a href="donhang.jsp"><i class="fas fa-shopping-cart"></i> Đơn hàng</a></li>
                    <li><a href="KhachhangServlet?action=list"><i class="fas fa-users"></i> Khách hàng</a></li>
                    <li><a href="khuyenmai.jsp"><i class="fas fa-tag"></i> Khuyến mãi</a></li>
                    <li><a href="#"><i class="fas fa-chart-bar"></i> Báo cáo</a></li>
                </ul>
            </nav>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <div class="header">
                <div class="header-left">
                    <h2><i class="fa-solid fa-fan"></i> Quản lý sản phẩm </h2>
                </div>
                <div class="header-right">
                    <div class="search-box">
                        <input type="text" placeholder="Tìm kiếm sản phẩm...">
                        <button><i class="fas fa-search"></i></button>
                    </div>
                    <div class="user-profile">
                        <img src="https://via.placeholder.com/40" alt="User">
                        <span>Admin</span>
                    </div>
                </div>
            </div>

            <div class="content">
              <!-- Thêm phần lọc -->
               <!-- Thêm phần lọc -->
                    <div class="filters mb-3">
                        <div class="row">
                            <div class="col-md-6">
                                <select class="form-select" id="filterCategory">
                                    <option value="">Tất cả danh mục</option>
                                    <c:forEach items="${listDM}" var="dm">
                                        <option value="${dm.id_danh_muc}">${dm.ten}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <button id="btnFilter" class="btn btn-primary w-100">
                                    <i class="fas fa-filter"></i> Lọc
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Product Table -->
                <div class="card mt-3">
                    <div class="card-header">
                        <div class="card-title">Danh sách sản phẩm</div>
                        <div>
                            <button class="btn btn-add" id="addProductBtn">
                                <i class="fas fa-plus"></i> Thêm sản phẩm
                            </button>
                           
                            <button class="btn btn-export ms-2">
                                <i class="fas fa-file-export"></i> Xuất Excel
                            </button>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Danh mục</th>
                                        <th>Tên sản phẩm</th>
                                        <th>Mô tả</th>
                                        <th>Giá (VNĐ)</th>
                                        <th>Hình ảnh</th>
                                        <th>Số lượng tồn</th>
                                        <th>Hành động</th>
                                    </tr>
                                </thead>
                               <tbody>
                                    <c:forEach items="${listS}" var="o">
                                        <c:set var="categoryName" value="" />
                                        <c:forEach items="${listDM}" var="dm">
                                            <c:if test="${dm.id_danh_muc == o.id_danh_muc}">
                                                <c:set var="categoryName" value="${dm.ten}" />
                                            </c:if>
                                        </c:forEach>
                                        <tr>
                                            <td>${o.id_san_pham}</td>
                                            <td style="display:none;">${o.id_danh_muc}</td> <!-- Ẩn ID danh mục nhưng vẫn có trong DOM để lọc -->
                                            <td>${categoryName}</td> <!-- Hiển thị tên danh mục -->
                                            <td>${o.ten}</td>
                                            <td>${o.mo_ta}</td> 
                                            <td><fmt:formatNumber value="${o.gia}" type="number" groupingUsed="true" maxFractionDigits="0"/> ₫</td>
                                            <td><img src="${o.hinh_anh}" alt="Product Image" style="max-width: 50px;"></td>
                                            <td>${o.so_luong_ton}</td>
                                            <td>
                                                <button class="btn btn-edit btn-sm"><i class="fas fa-edit"></i></button>
                                                <a href="DeleteProductSerrvlet?id=${o.id_san_pham}"><button class="btn btn-delete btn-sm"><i class="fas fa-trash"></i></button></a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        
                        <!-- Pagination -->
                        <nav class="mt-3">
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

   <!-- Add/Edit Product Modal -->
<div class="modal fade" id="productModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalTitle">Thêm sản phẩm mới</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="productForm" action="AddeditproductServlet" method="POST" enctype="multipart/form-data">
                <input type="hidden" id="productId" name="id">
                <input type="hidden" name="action" id="formAction" value="add">
                
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="productName" class="form-label">Tên sản phẩm *</label>
                                <input type="text" class="form-control" id="productName" name="ten" required>
                            </div>
                            <div class="mb-3">
                                <label for="productCategory" class="form-label">Danh mục *</label>
                                <select class="form-select" id="productCategory" name="id_danh_muc" required>
                                    <option value="">Chọn danh mục</option>
                                    <c:forEach items="${listDM}" var="dm">
                                        <option value="${dm.id_danh_muc}">${dm.ten}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="productDescription" class="form-label">Mô tả</label>
                                <textarea class="form-control" id="productDescription" name="mo_ta" rows="3"></textarea>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="productPrice" class="form-label">Giá bán (VNĐ) *</label>
                                <input type="number" class="form-control" id="productPrice" name="gia" required>
                            </div>
                            <div class="mb-3">
                                <label for="productQuantity" class="form-label">Số lượng tồn *</label>
                                <input type="number" class="form-control" id="productQuantity" name="so_luong_ton" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Hình ảnh</label>
                                <div class="image-upload" onclick="document.getElementById('productImage').click()">
                                    <i class="fas fa-cloud-upload-alt"></i>
                                    <p>Nhấn để tải ảnh lên</p>
                                    <input type="file" id="productImage" name="hinh_anh" accept="image/*" style="display:none;">
                                    <img id="imagePreview" class="preview-image">
                                </div>
                                <small class="text-muted">Chỉ chấp nhận file ảnh (JPEG, PNG, JPG)</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                    <button type="submit" class="btn btn-primary">Lưu sản phẩm</button>
                </div>
            </form>
        </div>
    </div>
</div>
    <!-- Delete Confirmation Modal -->
    <div class="modal fade" id="deleteModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Xác nhận xóa</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p>Bạn có chắc chắn muốn xóa sản phẩm này? Hành động này không thể hoàn tác.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                    <button type="button" class="btn btn-danger" id="confirmDelete">Xóa</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/js.js"></script>
    </body>
</html>