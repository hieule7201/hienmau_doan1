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
public class quanlydkhm {
    private String maLSHM;
    private String tenDHM;
    private String tenNHM;
    private String nhomMau;
    private String benhNen;
    private String thoiGian;
    private String tinhTrang;
    private String soLuongMau;

    public quanlydkhm(String maLSHM, String tenDHM, String tenNHM, String nhomMau, String benhNen, String thoiGian, String tinhTrang, String soLuongMau) {
        this.maLSHM = maLSHM;
        this.tenDHM = tenDHM;
        this.tenNHM = tenNHM;
        this.nhomMau = nhomMau;
        this.benhNen = benhNen;
        this.thoiGian = thoiGian;
        this.tinhTrang = tinhTrang;
        this.soLuongMau = soLuongMau;
    }

    public String getMaLSHM() {
        return maLSHM;
    }

    public void setMaLSHM(String maLSHM) {
        this.maLSHM = maLSHM;
    }

    public String getTenDHM() {
        return tenDHM;
    }

    public void setTenDHM(String tenDHM) {
        this.tenDHM = tenDHM;
    }

    public String getTenNHM() {
        return tenNHM;
    }

    public void setTenNHM(String tenNHM) {
        this.tenNHM = tenNHM;
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

    public String getThoiGian() {
        return thoiGian;
    }

    public void setThoiGian(String thoiGian) {
        this.thoiGian = thoiGian;
    }

    public String getTinhTrang() {
        return tinhTrang;
    }

    public void setTinhTrang(String tinhTrang) {
        this.tinhTrang = tinhTrang;
    }

    public String getSoLuongMau() {
        return soLuongMau;
    }

    public void setSoLuongMau(String soLuongMau) {
        this.soLuongMau = soLuongMau;
    }

    
    
    
}
