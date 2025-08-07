package Control;

import DAO.DAO;
import Entities.sanpham;
import java.io.IOException;
import java.io.File;
import java.nio.file.Paths;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet(name = "AddeditproductServlet", urlPatterns = {"/AddeditproductServlet"})
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
    maxFileSize = 1024 * 1024 * 10,      // 10 MB
    maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class AddeditproductServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        try {
            String action = request.getParameter("action");
            String idParam = request.getParameter("id");

            int id_san_pham = (idParam != null && !idParam.isEmpty()) ? Integer.parseInt(idParam) : 0;

            // Lấy dữ liệu từ form
            String ten = request.getParameter("ten").trim();
            String mo_ta = request.getParameter("mo_ta").trim();
            double gia = Double.parseDouble(request.getParameter("gia"));
            int so_luong_ton = Integer.parseInt(request.getParameter("so_luong_ton"));
            
            // Xử lý upload file
            Part filePart = request.getPart("hinh_anh");
            String fileName = null;
            String hinh_anh = null;
            
            if (filePart != null && filePart.getSize() > 0) {
                // Kiểm tra loại file
                String contentType = filePart.getContentType();
                if (!contentType.startsWith("image/")) {
                    throw new Exception("Chỉ được upload file ảnh");
                }
                
                fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
                String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
                File uploadDir = new File(uploadPath);
                if (!uploadDir.exists()) uploadDir.mkdir();
                
                // Thêm timestamp vào tên file để tránh trùng
                String uniqueFileName = System.currentTimeMillis() + "_" + fileName;
                String filePath = uploadPath + File.separator + uniqueFileName;
                filePart.write(filePath);
                hinh_anh = "uploads/" + uniqueFileName;
            } else if ("edit".equals(action)) {
                // Giữ nguyên ảnh cũ nếu không upload ảnh mới
                sanpham sp = new DAO().getSanPhamById(id_san_pham);
                if (sp != null) {
                    hinh_anh = sp.getHinh_anh();
                }
            }

            // Tạo đối tượng sản phẩm (đặt id_danh_muc mặc định là 1)
            int id_danh_muc = Integer.parseInt(request.getParameter("id_danh_muc"));
            sanpham sp = new sanpham(id_san_pham, id_danh_muc, ten, mo_ta, gia, hinh_anh, so_luong_ton);
            DAO dao = new DAO();

            boolean success = false;
            String message = "";

            if ("add".equals(action)) {
                success = dao.addSanPham(sp);
                message = success ? "Thêm sản phẩm thành công." : "Thêm sản phẩm thất bại.";
            } else if ("edit".equals(action)) {
                success = dao.updateSanPham(sp);
                message = success ? "Cập nhật sản phẩm thành công." : "Cập nhật sản phẩm thất bại.";
            } else {
                message = "Hành động không hợp lệ.";
            }

            if (success) {
                request.getSession().setAttribute("message", message);
                response.sendRedirect("Home1");
            } else {
                request.setAttribute("error", message);
                request.getRequestDispatcher("sanpham.jsp").forward(request, response);
            }

        } catch (NumberFormatException e) {
            request.setAttribute("error", "Dữ liệu nhập không hợp lệ. Vui lòng kiểm tra lại số liệu.");
            request.getRequestDispatcher("sanpham.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Lỗi hệ thống: " + e.getMessage());
            request.getRequestDispatcher("sanpham.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Servlet xử lý thêm/sửa sản phẩm";
    }
}