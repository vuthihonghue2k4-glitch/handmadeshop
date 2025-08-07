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
public class danhmuc {
     private int id_danh_muc;
    private String ten;
    private String mo_ta;
    private Timestamp ngay_tao;
    private Timestamp ngay_cap_nhat;

    public danhmuc() {
    }

    public danhmuc(int id_danh_muc, String ten, String mo_ta, Timestamp ngay_tao, Timestamp ngay_cap_nhat) {
        this.id_danh_muc = id_danh_muc;
        this.ten = ten;
        this.mo_ta = mo_ta;
        this.ngay_tao = ngay_tao;
        this.ngay_cap_nhat = ngay_cap_nhat;
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
        return "danhmuc{" + "id_danh_muc=" + id_danh_muc + ", ten=" + ten + ", mo_ta=" + mo_ta + ", ngay_tao=" + ngay_tao + ", ngay_cap_nhat=" + ngay_cap_nhat + '}';
    }
    
}
