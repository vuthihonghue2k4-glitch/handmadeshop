package DAO;

import Entities.danhmuc;
import Entities.khachhang;
import Entities.sanpham;
import context.DBcontext;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAO {
    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    // Lấy tất cả sản phẩm
    public List<sanpham> getAllSanPham() throws SQLException {
        List<sanpham> list = new ArrayList<>();
        String query = "SELECT * FROM shophoa.san_pham";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new sanpham(
                        rs.getInt("id_san_pham"),
                        rs.getInt("id_danh_muc"),
                        rs.getString("ten"),
                        rs.getString("mo_ta"),
                        rs.getDouble("gia"),
                        rs.getString("hinh_anh"),
                        rs.getInt("so_luong_ton")
                ));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();
        }
        return list;
    }

   // Thêm sản phẩm
public boolean addSanPham(sanpham sp) {
    String query = "INSERT INTO san_pham (id_danh_muc, ten, mo_ta, gia, hinh_anh, so_luong_ton) VALUES (?, ?, ?, ?, ?, ?)";
    try {
        conn = new DBcontext().getConnection();
        ps = conn.prepareStatement(query);
        ps.setInt(1, sp.getId_danh_muc());
        ps.setString(2, sp.getTen());
        ps.setString(3, sp.getMo_ta());
        ps.setDouble(4, sp.getGia());
        ps.setString(5, sp.getHinh_anh());
        ps.setInt(6, sp.getSo_luong_ton());

        return ps.executeUpdate() > 0;
    } catch (Exception e) {
        e.printStackTrace();
        return false;
    } finally {
        closeResources();
    }
}

// Sửa sản phẩm
public boolean updateSanPham(sanpham sp) {
    String query = "UPDATE san_pham SET id_danh_muc=?, ten=?, mo_ta=?, gia=?, hinh_anh=?, so_luong_ton=? WHERE id_san_pham=?";
    try {
        conn = new DBcontext().getConnection();
        ps = conn.prepareStatement(query);
        ps.setInt(1, sp.getId_danh_muc());
        ps.setString(2, sp.getTen());
        ps.setString(3, sp.getMo_ta());
        ps.setDouble(4, sp.getGia());
        ps.setString(5, sp.getHinh_anh());
        ps.setInt(6, sp.getSo_luong_ton());
        ps.setInt(7, sp.getId_san_pham());

        return ps.executeUpdate() > 0;
    } catch (Exception e) {
        e.printStackTrace();
        return false;
    } finally {
        closeResources();
    }
}

    // Xóa sản phẩm
    public boolean deleteSanPham(int id) {
        String query = "DELETE FROM san_pham WHERE id_san_pham = ?";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);

            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            closeResources();
        }
    }

    // Lấy sản phẩm theo ID
    public sanpham getSanPhamById(int id) {
        String query = "SELECT * FROM san_pham WHERE id_san_pham = ?";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            if (rs.next()) {
                return new sanpham(
                        rs.getInt("id_san_pham"),
                        rs.getInt("id_danh_muc"),
                        rs.getString("ten"),
                        rs.getString("mo_ta"),
                        rs.getDouble("gia"),
                        rs.getString("hinh_anh"),
                        rs.getInt("so_luong_ton")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();
        }
        return null;
    }

    // Lấy danh sách danh mục
    public List<danhmuc> getAllDanhMuc() throws SQLException {
        List<danhmuc> list = new ArrayList<>();
        String query = "SELECT * FROM danh_muc";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new danhmuc(
                        rs.getInt("id_danh_muc"),
                        rs.getString("ten"),
                        rs.getString("mo_ta"),
                        rs.getTimestamp("ngay_tao"),
                        rs.getTimestamp("ngay_cap_nhat")
                ));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();
        }
        return list;
    }

    // Lấy danh mục theo ID
    public danhmuc getDanhMucById(int id) {
        String query = "SELECT * FROM danh_muc WHERE id_danh_muc = ?";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            if (rs.next()) {
                return new danhmuc(
                        rs.getInt("id_danh_muc"),
                        rs.getString("ten"),
                        rs.getString("mo_ta"),
                        rs.getTimestamp("ngay_tao"),
                        rs.getTimestamp("ngay_cap_nhat")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();
        }
        return null;
    }

    // Đóng kết nối, statement và resultset
    private void closeResources() {
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
public List<khachhang> getAllKhachHang() throws SQLException {
    List<khachhang> list = new ArrayList<>();
    String query = "SELECT * FROM khach_hang";
    try {
        conn = new DBcontext().getConnection();
        ps = conn.prepareStatement(query);
        rs = ps.executeQuery();
        while (rs.next()) {
            list.add(new khachhang(
                rs.getInt("id_khach_hang"),
                rs.getString("hoten"),
                rs.getString("email"),
                rs.getString("mat_khau"),
                rs.getString("dien_thoai"),
                rs.getString("dia_chi"),
                rs.getString("ma_van_don"),
                rs.getString("vai_tro"),
                rs.getTimestamp("ngay_tao"),
                rs.getTimestamp("ngay_cap_nhat")
            ));
        }
    } finally {
        closeResources();
    }
    return list;
}
// Thêm khách hàng
public boolean addKhachHang(khachhang kh) {
    String hashedPassword = hashPassword(kh.getMat_khau());
    String query = "INSERT INTO khach_hang (hoten, email, mat_khau, dien_thoai, dia_chi, vai_tro) VALUES (?, ?, ?, ?, ?, ?)";
    try {
        conn = new DBcontext().getConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, kh.getHoten());
        ps.setString(2, kh.getEmail());
        ps.setString(3, hashedPassword); // Sử dụng mật khẩu đã mã hóa
        ps.setString(4, kh.getDien_thoai());
        ps.setString(5, kh.getDia_chi());
        ps.setString(6, kh.getVai_tro());
        
        return ps.executeUpdate() > 0;
    } catch (Exception e) {
        e.printStackTrace();
        return false;
    } finally {
        closeResources();
    }
}

// Cập nhật khách hàng
public boolean updateKhachHang(khachhang kh) {
    String query = "UPDATE khach_hang SET hoten=?, email=?, dien_thoai=?, dia_chi=?, vai_tro=? WHERE id_khach_hang=?";
    try {
        conn = new DBcontext().getConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, kh.getHoten());
        ps.setString(2, kh.getEmail());
        ps.setString(3, kh.getDien_thoai());
        ps.setString(4, kh.getDia_chi());
        ps.setString(5, kh.getVai_tro());
        ps.setInt(6, kh.getId_khach_hang());
        
        return ps.executeUpdate() > 0;
    } catch (Exception e) {
        e.printStackTrace();
        return false;
    } finally {
        closeResources();
    }
}

// Xóa khách hàng
public boolean deleteKhachHang(int id) {
    String query = "DELETE FROM khach_hang WHERE id_khach_hang=?";
    try {
        conn = new DBcontext().getConnection();
        ps = conn.prepareStatement(query);
        ps.setInt(1, id);
        
        return ps.executeUpdate() > 0;
    } catch (Exception e) {
        e.printStackTrace();
        return false;
    } finally {
        closeResources();
    }
}

// Lấy khách hàng theo ID
public khachhang getKhachHangById(int id) {
    String query = "SELECT * FROM khach_hang WHERE id_khach_hang=?";
    try {
        conn = new DBcontext().getConnection();
        ps = conn.prepareStatement(query);
        ps.setInt(1, id);
        rs = ps.executeQuery();
        
        if (rs.next()) {
            return new khachhang(
                rs.getInt("id_khach_hang"),
                rs.getString("hoten"),
                rs.getString("email"),
                rs.getString("mat_khau"),
                rs.getString("dien_thoai"),
                rs.getString("dia_chi"),
                rs.getString("ma_van_don"),
                rs.getString("vai_tro"),
                rs.getTimestamp("ngay_tao"),
                rs.getTimestamp("ngay_cap_nhat")
            );
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        closeResources();
    }
    return null;
}
 public khachhang login(String email, String password) {
    String hashedPassword = hashPassword(password);
    String query = "SELECT * FROM khach_hang WHERE email = ? AND mat_khau = ?";
    try {
        conn = new DBcontext().getConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, email);
        ps.setString(2, hashedPassword);
        rs = ps.executeQuery();
        
        if (rs.next()) {
            return new khachhang(
                rs.getInt("id_khach_hang"),
                rs.getString("hoten"),
                rs.getString("email"),
                rs.getString("mat_khau"),
                rs.getString("dien_thoai"),
                rs.getString("dia_chi"),
                rs.getString("ma_van_don"),
                rs.getString("vai_tro"),
                rs.getTimestamp("ngay_tao"),
                rs.getTimestamp("ngay_cap_nhat")
            );
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        closeResources();
    }
    return null;
}
    private String hashPassword(String password) {
    try {
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        byte[] hashedBytes = md.digest(password.getBytes());
        StringBuilder sb = new StringBuilder();
        for (byte b : hashedBytes) {
            sb.append(String.format("%02x", b));
        }
        return sb.toString();
    } catch (NoSuchAlgorithmException e) {
        e.printStackTrace();
        return null;
    }
}
    // Test DAO (main method)
    public static void main(String[] args) throws SQLException {
        DAO dao = new DAO();
        List<sanpham> list = dao.getAllSanPham();
        for (sanpham sp : list) {
            System.out.println("ID: " + sp.getId_san_pham()
                    + ", Danh mục: " + sp.getId_danh_muc()
                    + ", Tên: " + sp.getTen()
                    + ", Mô tả: " + sp.getMo_ta()
                    + ", Giá: " + sp.getGia()
                    + ", Hình ảnh: " + sp.getHinh_anh()
                    + ", Số lượng tồn: " + sp.getSo_luong_ton());
        }
    }
}
