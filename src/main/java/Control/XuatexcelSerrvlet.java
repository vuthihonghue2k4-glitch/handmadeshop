package Control;

import DAO.DAO;
import Entities.sanpham;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

@WebServlet(name = "XuatexcelSerrvlet", urlPatterns = {"/XuatexcelSerrvlet"})
public class XuatexcelSerrvlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        response.setHeader("Content-Disposition", "attachment; filename=sanpham.xlsx");
        
        try {
            DAO dao = new DAO();
            List<sanpham> list = dao.getAllSanPham();
            
            // Tạo workbook Excel
            Workbook workbook = new XSSFWorkbook();
            Sheet sheet = workbook.createSheet("Sản phẩm");
            
            // Tạo header
            Row headerRow = sheet.createRow(0);
            headerRow.createCell(0).setCellValue("ID");
            headerRow.createCell(1).setCellValue("Danh mục");
            headerRow.createCell(2).setCellValue("Tên sản phẩm");
            headerRow.createCell(3).setCellValue("Mô tả");
            headerRow.createCell(4).setCellValue("Giá");
            headerRow.createCell(5).setCellValue("Hình ảnh");
            headerRow.createCell(6).setCellValue("Số lượng tồn");
            
            // Đổ dữ liệu
            int rowNum = 1;
            for (sanpham sp : list) {
                Row row = sheet.createRow(rowNum++);
                row.createCell(0).setCellValue(sp.getId_san_pham());
                row.createCell(1).setCellValue(sp.getId_danh_muc());
                row.createCell(2).setCellValue(sp.getTen());
                row.createCell(3).setCellValue(sp.getMo_ta());
                row.createCell(4).setCellValue(sp.getGia());
                row.createCell(5).setCellValue(sp.getHinh_anh());
                row.createCell(6).setCellValue(sp.getSo_luong_ton());
            }
            
            // Ghi file Excel
            workbook.write(response.getOutputStream());
            workbook.close();
            
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Lỗi khi xuất Excel");
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
}