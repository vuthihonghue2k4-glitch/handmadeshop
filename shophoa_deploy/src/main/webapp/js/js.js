document.addEventListener('DOMContentLoaded', function() {
    // Khởi tạo modal
    const productModal = new bootstrap.Modal(document.getElementById('productModal'));
    const deleteModal = new bootstrap.Modal(document.getElementById('deleteModal'));
    
    // Biến lưu trạng thái (thêm/sửa)
    let isEditMode = false;
    let currentProductId = null;
    
    // Xử lý nút thêm sản phẩm
    document.getElementById('addProductBtn').addEventListener('click', function() {
        isEditMode = false;
        currentProductId = null;
        document.getElementById('modalTitle').textContent = 'Thêm sản phẩm mới';
        document.getElementById('productForm').reset();
        document.getElementById('formAction').value = 'add';
        document.getElementById('productId').value = '';
        document.getElementById('imagePreview').style.display = 'none';
        productModal.show();
    });

    // Thêm chức năng lọc theo ID danh mục
    document.getElementById('btnFilter').addEventListener('click', function() {
        const categoryId = document.getElementById('filterCategory').value;
        
        // Ẩn tất cả hàng
        document.querySelectorAll('tbody tr').forEach(row => {
            row.style.display = 'none';
        });
        
        // Hiện các hàng phù hợp
        document.querySelectorAll('tbody tr').forEach(row => {
            const rowCategoryId = row.cells[1].textContent; // Cột ID danh mục (index 1)
            
            // Nếu không chọn danh mục hoặc danh mục trùng khớp
            if (!categoryId || rowCategoryId === categoryId) {
                row.style.display = '';
            }
        });
    });

    // Xử lý nút sửa sản phẩm
    document.addEventListener('click', function(e) {
        if (e.target.classList.contains('btn-edit') || e.target.closest('.btn-edit')) {
            e.preventDefault();
            isEditMode = true;
            const row = e.target.closest('tr');
            currentProductId = row.cells[0].textContent;
            
            // Lấy dữ liệu từ hàng
            document.getElementById('modalTitle').textContent = 'Sửa sản phẩm';
            document.getElementById('formAction').value = 'edit';
            document.getElementById('productId').value = currentProductId;
            document.getElementById('productName').value = row.cells[2].textContent; // Tên sản phẩm
            document.getElementById('productDescription').value = row.cells[3].textContent; // Mô tả
            document.getElementById('productPrice').value = parseFloat(row.cells[4].textContent.replace(/[^\d.]/g, '')); // Giá
            
            // Lấy ID danh mục từ cột 1 (index 1)
            document.getElementById('productCategory').value = row.cells[1].textContent; // ID danh mục
            document.getElementById('productQuantity').value = row.cells[6].textContent; // Số lượng
            
            // Hiển thị ảnh
            const imgCell = row.cells[5]; // Ô hình ảnh (index 5)
            const imgPreview = document.getElementById('imagePreview');
            if (imgCell.querySelector('img')) {
                imgPreview.src = imgCell.querySelector('img').src;
                imgPreview.style.display = 'block';
            } else {
                imgPreview.style.display = 'none';
            }
            
            productModal.show();
        }
    });
    
    // Xử lý upload ảnh
    document.getElementById('productImage').addEventListener('change', function(e) {
        const file = e.target.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = function(event) {
                const preview = document.getElementById('imagePreview');
                preview.src = event.target.result;
                preview.style.display = 'block';
            };
            reader.readAsDataURL(file);
        }
    });

    // Xử lý submit form
    document.getElementById('productForm').addEventListener('submit', function(e) {
        // Validate form
        const requiredFields = ['productName', 'productPrice', 'productQuantity'];
        let isValid = true;
        
        requiredFields.forEach(id => {
            const field = document.getElementById(id);
            if (!field.value) {
                field.classList.add('is-invalid');
                isValid = false;
            } else {
                field.classList.remove('is-invalid');
            }
        });
        
        if (!isValid) {
            e.preventDefault();
            return;
        }
        
        // Nếu validate thành công, form sẽ tự submit đến AddeditproductServlet
        // Server sẽ xử lý phần còn lại
    });

    // Xuất Excel
    document.querySelector('.btn-export').addEventListener('click', function() {
        // Hiển thị loading
        const btn = this;
        btn.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Đang xuất file...';
        btn.disabled = true;
        
        setTimeout(() => {
            window.location.href = 'XuatexcelSerrvlet';
            // Khôi phục trạng thái nút sau 2s
            setTimeout(() => {
                btn.innerHTML = '<i class="fas fa-file-export"></i> Xuất Excel';
                btn.disabled = false;
            }, 2000);
        }, 500);
    });
    
    // Xử lý tìm kiếm
    document.querySelector('.search-box button').addEventListener('click', performSearch);
    document.querySelector('.search-box input').addEventListener('keypress', function(e) {
        if (e.key === 'Enter') performSearch();
    });
    
    function performSearch() {
        const searchTerm = document.querySelector('.search-box input').value.toLowerCase();
        document.querySelectorAll('tbody tr').forEach(row => {
            const productName = row.cells[1].textContent.toLowerCase(); // Đã bỏ cột danh mục
            const productId = row.cells[0].textContent.toLowerCase();
            row.style.display = (productName.includes(searchTerm) || productId.includes(searchTerm)) ? '' : 'none';
        });
    }
});