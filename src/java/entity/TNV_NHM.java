/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Minh Hieu
 */
public class TNV_NHM {
    private String maTNV;
    private String tenTNV;
    private String gioiTinh;
    private String diaChi;
    private String sdt;
    private String cccd;
    private String matKhau;

    public TNV_NHM(String maTNV, String tenTNV, String gioiTinh, String diaChi, String sdt, String cccd, String matKhau) {
        this.maTNV = maTNV;
        this.tenTNV = tenTNV;
        this.gioiTinh = gioiTinh;
        this.diaChi = diaChi;
        this.sdt = sdt;
        this.cccd = cccd;
        this.matKhau = matKhau;
    }

    public String getMaTNV() {
        return maTNV;
    }

    public void setMaTNV(String maTNV) {
        this.maTNV = maTNV;
    }

    public String getTenTNV() {
        return tenTNV;
    }

    public void setTenTNV(String tenTNV) {
        this.tenTNV = tenTNV;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getCccd() {
        return cccd;
    }

    public void setCccd(String cccd) {
        this.cccd = cccd;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }
    
    
}
