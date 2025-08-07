/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ADMIN
 */
public class DBcontext {
      private static final String URL = "jdbc:mysql://localhost:3306/Shophoa"; // Thay YourDatabase bằng tên DB của bạn
    private static final String USER = "root"; // Thay bằng user của MySQL
    private static final String PASSWORD = "Hue682004@"; // Thay bằng password của MySQL

    public static Connection getConnection() throws SQLException {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Load driver
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            System.out.println("Lỗi: Không tìm thấy Driver JDBC!");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Lỗi kết nối MySQL! Kiểm tra URL, username, password.");
            e.printStackTrace();
        }
        return conn;
    }
}
