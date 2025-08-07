/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control;

import DAO.DAO;
import Entities.khachhang;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "KhachhangServlet", urlPatterns = {"/KhachhangServlet"})
public class KhachhangServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        DAO dao = new DAO();

        try {
            switch (action) {
                case "list":
                    listKhachHang(request, response, dao);
                    break;
                case "add":
                    addKhachHang(request, response, dao);
                    break;
                case "edit":
                    showEditForm(request, response, dao);
                    break;
                case "update":
                    updateKhachHang(request, response, dao);
                    break;
                case "delete":
                    deleteKhachHang(request, response, dao);
                    break;
                default:
                    listKhachHang(request, response, dao);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
 private void listKhachHang(HttpServletRequest request, HttpServletResponse response, DAO dao)
            throws SQLException, ServletException, IOException {
        List<khachhang> listKhachHang = dao.getAllKhachHang();
        request.setAttribute("listKhachHang", listKhachHang);
        request.getRequestDispatcher("khachhang.jsp").forward(request, response);
    }
   private void addKhachHang(HttpServletRequest request, HttpServletResponse response, DAO dao)
            throws SQLException, ServletException, IOException {
        String hoten = request.getParameter("hoten");
        String email = request.getParameter("email");
        String mat_khau = request.getParameter("mat_khau");
        String dien_thoai = request.getParameter("dien_thoai");
        String dia_chi = request.getParameter("dia_chi");
        String vai_tro = request.getParameter("vai_tro");

        khachhang kh = new khachhang(0, hoten, email, mat_khau, dien_thoai, dia_chi, null, vai_tro, null, null);
        boolean success = dao.addKhachHang(kh);

        if (success) {
            request.getSession().setAttribute("message", "Thêm khách hàng thành công!");
        } else {
            request.getSession().setAttribute("error", "Thêm khách hàng thất bại!");
        }
        response.sendRedirect("KhachhangServlet?action=list");
    }
     private void showEditForm(HttpServletRequest request, HttpServletResponse response, DAO dao)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        khachhang kh = dao.getKhachHangById(id);
        request.setAttribute("khachhang", kh);
        request.getRequestDispatcher("edit_khachhang.jsp").forward(request, response);
    }

    private void updateKhachHang(HttpServletRequest request, HttpServletResponse response, DAO dao)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String hoten = request.getParameter("hoten");
        String email = request.getParameter("email");
        String dien_thoai = request.getParameter("dien_thoai");
        String dia_chi = request.getParameter("dia_chi");
        String vai_tro = request.getParameter("vai_tro");

        khachhang kh = new khachhang(id, hoten, email, null, dien_thoai, dia_chi, null, vai_tro, null, null);
        boolean success = dao.updateKhachHang(kh);

        if (success) {
            request.getSession().setAttribute("message", "Cập nhật khách hàng thành công!");
        } else {
            request.getSession().setAttribute("error", "Cập nhật khách hàng thất bại!");
        }
        response.sendRedirect("KhachhangServlet?action=list");
    }

    private void deleteKhachHang(HttpServletRequest request, HttpServletResponse response, DAO dao)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        boolean success = dao.deleteKhachHang(id);

        if (success) {
            request.getSession().setAttribute("message", "Xóa khách hàng thành công!");
        } else {
            request.getSession().setAttribute("error", "Xóa khách hàng thất bại!");
        }
        response.sendRedirect("KhachhangServlet?action=list");
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
