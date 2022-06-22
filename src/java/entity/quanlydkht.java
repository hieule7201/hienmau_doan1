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
public class quanlydkht {
    private String maLSHT;
    private String tenDHM;
    private String tenTNV;
    private String thoiGian;
    private String tinhTrang;

    public quanlydkht(String maLSHT, String tenDHM, String tenTNV, String thoiGian, String tinhTrang) {
        this.maLSHT = maLSHT;
        this.tenDHM = tenDHM;
        this.tenTNV = tenTNV;
        this.thoiGian = thoiGian;
        this.tinhTrang = tinhTrang;
    }

    public String getMaLSHT() {
        return maLSHT;
    }

    public void setMaLSHT(String maLSHT) {
        this.maLSHT = maLSHT;
    }

    public String getTenDHM() {
        return tenDHM;
    }

    public void setTenDHM(String tenDHM) {
        this.tenDHM = tenDHM;
    }

    public String getTenTNV() {
        return tenTNV;
    }

    public void setTenTNV(String tenTNV) {
        this.tenTNV = tenTNV;
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
    
    
}
