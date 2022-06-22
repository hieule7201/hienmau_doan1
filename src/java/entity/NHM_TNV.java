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
public class NHM_TNV {
    private String maNHM;
    private String tenNHM;
    private String gioiTinh;
    private String nhomMau;
    private String benhNen;
    private String diaChi;
    private String sdt;
    private String cccd;
    private String matKhau;

    public NHM_TNV(String maNHM, String tenNHM, String gioiTinh, String nhomMau, String benhNen, String diaChi, String sdt, String cccd, String matKhau) {
        this.maNHM = maNHM;
        this.tenNHM = tenNHM;
        this.gioiTinh = gioiTinh;
        this.nhomMau = nhomMau;
        this.benhNen = benhNen;
        this.diaChi = diaChi;
        this.sdt = sdt;
        this.cccd = cccd;
        this.matKhau = matKhau;
    }

    public NHM_TNV() {
    }

    public String getMaNHM() {
        return maNHM;
    }

    public void setMaNHM(String maNHM) {
        this.maNHM = maNHM;
    }

    public String getTenNHM() {
        return tenNHM;
    }

    public void setTenNHM(String tenNHM) {
        this.tenNHM = tenNHM;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getNhomMau() {
        return nhomMau;
    }

    public void setNhomMau(String nhomMau) {
        this.nhomMau = nhomMau;
    }

    public String getBenhNen() {
        return benhNen;
    }

    public void setBenhNen(String benhNen) {
        this.benhNen = benhNen;
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
