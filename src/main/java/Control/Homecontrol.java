package Control;

import DAO.DAO;
import Entities.danhmuc;
import Entities.sanpham;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "Homecontrol", urlPatterns = {"/Home1"})
public class Homecontrol extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            DAO Dao = new DAO();
            List<sanpham> list = Dao.getAllSanPham();
             List<danhmuc> listDM =Dao.getAllDanhMuc(); // Lấy danh sách danh mục
            request.setAttribute("listS", list);
             request.setAttribute("listDM", listDM);
            request.getRequestDispatcher("sanpham.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error occurred");
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
        return "Short description";
    }
}