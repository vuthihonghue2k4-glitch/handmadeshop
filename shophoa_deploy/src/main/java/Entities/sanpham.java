/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entities;

/**
 *
 * @author ADMIN
 */
public class sanpham {
    

     private int id_san_pham;
    private int id_danh_muc;
    private String ten;
    private String mo_ta;
    private double gia;
    private String hinh_anh;
    private int so_luong_ton;

    public sanpham() {
    }

    public sanpham(int id_san_pham, int id_danh_muc, String ten, String mo_ta, double gia, String hinh_anh, int so_luong_ton) {
        this.id_san_pham = id_san_pham;
        this.id_danh_muc = id_danh_muc;
        this.ten = ten;
        this.mo_ta = mo_ta;
        this.gia = gia;
        this.hinh_anh = hinh_anh;
        this.so_luong_ton = so_luong_ton;
    }

    public int getId_san_pham() {
        return id_san_pham;
    }

    public void setId_san_pham(int id_san_pham) {
        this.id_san_pham = id_san_pham;
    }

    public int getId_danh_muc() {
        return id_danh_muc;
    }

    public void setId_danh_muc(int id_danh_muc) {
        this.id_danh_muc = id_danh_muc;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getMo_ta() {
        return mo_ta;
    }

    public void setMo_ta(String mo_ta) {
        this.mo_ta = mo_ta;
    }

    public double getGia() {
        return gia;
    }

    public void setGia(double gia) {
        this.gia = gia;
    }

    public String getHinh_anh() {
        return hinh_anh;
    }

    public void setHinh_anh(String hinh_anh) {
        this.hinh_anh = hinh_anh;
    }

    public int getSo_luong_ton() {
        return so_luong_ton;
    }

    public void setSo_luong_ton(int so_luong_ton) {
        this.so_luong_ton = so_luong_ton;
    }

    @Override
    public String toString() {
        return "sanpham{" + "id_san_pham=" + id_san_pham + ", id_danh_muc=" + id_danh_muc + ", ten=" + ten + ", mo_ta=" + mo_ta + ", gia=" + gia + ", hinh_anh=" + hinh_anh + ", so_luong_ton=" + so_luong_ton + '}';
    }


}

    
