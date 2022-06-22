package entity;



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Minh Hieu
 */
public class dothienmau {
    private String maDHM;
    private String tenDHM;
    private String thoiGian;
    private String diaDiem;
    private int soLuongTNV;
    private int soLuongNHM;

    public dothienmau() {
    }
    
    

    public dothienmau(String maDHM, String tenDHM, String thoiGian, String diaDiem, int soLuongTNV, int soLuongNHM) {
        this.maDHM = maDHM;
        this.tenDHM = tenDHM;
        this.thoiGian = thoiGian;
        this.diaDiem = diaDiem;
        this.soLuongTNV = soLuongTNV;
        this.soLuongNHM = soLuongNHM;
    }

    public String getMaDHM() {
        return maDHM;
    }

    public void setMaDHM(String maDHM) {
        this.maDHM = maDHM;
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

    public String getDiaDiem() {
        return diaDiem;
    }

    public void setDiaDiem(String diaDiem) {
        this.diaDiem = diaDiem;
    }

    public int getSoLuongTNV() {
        return soLuongTNV;
    }

    public void setSoLuongTNV(int soLuongTNV) {
        this.soLuongTNV = soLuongTNV;
    }

    public int getSoLuongNHM() {
        return soLuongNHM;
    }

    public void setSoLuongNHM(int soLuongNHM) {
        this.soLuongNHM = soLuongNHM;
    }
    
    
    
}
