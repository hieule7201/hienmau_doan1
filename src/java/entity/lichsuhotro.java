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
public class lichsuhotro {
    private String maLSHT;
    private String tenDHM;
    private String thoiGian;
    private String tinhTrang;

    public lichsuhotro(String maLSHT, String tenDHM, String thoiGian, String tinhTrang) {
        this.maLSHT = maLSHT;
        this.tenDHM = tenDHM;
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
