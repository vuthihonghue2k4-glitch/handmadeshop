/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entities;

import java.sql.Timestamp;

/**
 *
 * @author ADMIN
 */
public class khachhang {
     private int id_khach_hang;
    private String hoten;
    private String email;
    private String mat_khau;
    private String dien_thoai;
    private String dia_chi;
    private String ma_van_don;
    private String vai_tro;
    private Timestamp ngay_tao;
    private Timestamp ngay_cap_nhat;

    public khachhang() {
    }

    public khachhang(int id_khach_hang, String hoten, String email, String mat_khau, String dien_thoai, String dia_chi, String ma_van_don, String vai_tro, Timestamp ngay_tao, Timestamp ngay_cap_nhat) {
        this.id_khach_hang = id_khach_hang;
        this.hoten = hoten;
        this.email = email;
        this.mat_khau = mat_khau;
        this.dien_thoai = dien_thoai;
        this.dia_chi = dia_chi;
        this.ma_van_don = ma_van_don;
        this.vai_tro = vai_tro;
        this.ngay_tao = ngay_tao;
        this.ngay_cap_nhat = ngay_cap_nhat;
    }

    public int getId_khach_hang() {
        return id_khach_hang;
    }

    public void setId_khach_hang(int id_khach_hang) {
        this.id_khach_hang = id_khach_hang;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMat_khau() {
        return mat_khau;
    }

    public void setMat_khau(String mat_khau) {
        this.mat_khau = mat_khau;
    }

    public String getDien_thoai() {
        return dien_thoai;
    }

    public void setDien_thoai(String dien_thoai) {
        this.dien_thoai = dien_thoai;
    }

    public String getDia_chi() {
        return dia_chi;
    }

    public void setDia_chi(String dia_chi) {
        this.dia_chi = dia_chi;
    }

    public String getMa_van_don() {
        return ma_van_don;
    }

    public void setMa_van_don(String ma_van_don) {
        this.ma_van_don = ma_van_don;
    }

    public String getVai_tro() {
        return vai_tro;
    }

    public void setVai_tro(String vai_tro) {
        this.vai_tro = vai_tro;
    }

    public Timestamp getNgay_tao() {
        return ngay_tao;
    }

    public void setNgay_tao(Timestamp ngay_tao) {
        this.ngay_tao = ngay_tao;
    }

    public Timestamp getNgay_cap_nhat() {
        return ngay_cap_nhat;
    }

    public void setNgay_cap_nhat(Timestamp ngay_cap_nhat) {
        this.ngay_cap_nhat = ngay_cap_nhat;
    }

    @Override
    public String toString() {
        return "khachhang{" + "id_khach_hang=" + id_khach_hang + ", hoten=" + hoten + ", email=" + email + ", mat_khau=" + mat_khau + ", dien_thoai=" + dien_thoai + ", dia_chi=" + dia_chi + ", ma_van_don=" + ma_van_don + ", vai_tro=" + vai_tro + ", ngay_tao=" + ngay_tao + ", ngay_cap_nhat=" + ngay_cap_nhat + '}';
    }
    
}
