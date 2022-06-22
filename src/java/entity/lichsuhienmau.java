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
public class lichsuhienmau {
    private String maLSHM;
    private String tenDHM;
    private String thoiGian;
    private String tinhTrang;
    private int soLuongMau;

    public lichsuhienmau(String maLSHM, String tenDHM, String thoiGian, String tinhTrang, int soLuongMau) {
        this.maLSHM = maLSHM;
        this.tenDHM = tenDHM;
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

    public int getSoLuongMau() {
        return soLuongMau;
    }

    public void setSoLuongMau(int soLuongMau) {
        this.soLuongMau = soLuongMau;
    }
    
    
}
