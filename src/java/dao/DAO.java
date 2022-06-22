/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBcontext;
import entity.NHM_TNV;
import entity.TNV_NHM;
import entity.User;
import entity.dothienmau;
import entity.lichsuhienmau;
import entity.lichsuhotro;
import entity.nvyt;
import entity.quanlydkhm;
import entity.quanlydkht;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Minh Hieu
 */
public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
     public List<dothienmau> getAllDotHienMau(){
        List<dothienmau> list = new ArrayList<>();
        String query = "select * from DotHienMau";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new dothienmau(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6)));
            }
        }catch(Exception e){}
        return list;
    }
     public List<NHM_TNV> getAllNguoiHienMau(){
        List<NHM_TNV> list = new ArrayList<>();
        String query = "select * from NguoiHienMau";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new NHM_TNV(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                rs.getString(7),
                rs.getString(8),
                rs.getString(9)));
            }
        }catch(Exception e){}
        return list;
    }
     public List<TNV_NHM> getAllTinhNguyenVien(){
        List<TNV_NHM> list = new ArrayList<>();
        String query = "select * from TinhNguyenVien";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new TNV_NHM(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        }catch(Exception e){}
        return list;
    }
     public List<nvyt> getAllNVYT(){
        List<nvyt> list = new ArrayList<>();
        String query = "select * from NhanVienYTe";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new nvyt(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7)));
            }
        }catch(Exception e){}
        return list;
    }
     public List<quanlydkhm> getAllQLDKHM(){
        List<quanlydkhm> list = new ArrayList<>();
        String query = "select maLSHM, d.tenDHM, n.tenNHM, n.nhomMau, n.benhNen, ls.thoiGian, tinhTrang, soLuongMau\n" +
                        "from LichSuHienMau as ls, DotHienMau as d, NguoiHienMau as n\n" +
                        "where ls.maDHM = d.maDHM and ls.maNHM = n.maNHM";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new quanlydkhm(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8)));
            }
        }catch(Exception e){}
        return list;
    }
     public quanlydkhm getAllQLDKHMbyMaLSHM(String maLSHM){
        String query = "select maLSHM, d.tenDHM, n.tenNHM, n.nhomMau, n.benhNen, ls.thoiGian, tinhTrang, soLuongMau\n" +
                        "from LichSuHienMau as ls, DotHienMau as d, NguoiHienMau as n\n" +
                        "where ls.maDHM = d.maDHM and ls.maNHM = n.maNHM and maLSHM = ?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, maLSHM);
            rs = ps.executeQuery();
            while(rs.next()){
                return new quanlydkhm(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8));
            }
        }catch(Exception e){}
        return null;
    }
     public List<quanlydkht> getAllQLDKHT(){
        List<quanlydkht> list = new ArrayList<>();
        String query = "select maLSHT, d.tenDHM, t.tenTNV, ls.thoiGian, tinhTrang\n" +
                            "from LichSuHoTro as ls, DotHienMau as d, TinhNguyenVien as t\n" +
                            "where ls.maDHM = d.maDHM and ls.maTNV = t.maTNV";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new quanlydkht(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
            }
        }catch(Exception e){}
        return list;
    }
     public quanlydkht getAllQLDKHTbyMaLSHT(String maLSHT){
        String query = "select maLSHT, d.tenDHM, t.tenTNV, ls.thoiGian, tinhTrang\n" +
                        "from LichSuHoTro as ls, DotHienMau as d, TinhNguyenVien as t\n" +
                        "where ls.maDHM = d.maDHM and ls.maTNV = t.maTNV and maLSHT=?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, maLSHT);
            rs = ps.executeQuery();
            while(rs.next()){
                return new quanlydkht(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5));
            }
        }catch(Exception e){}
        return null;
    }
     public List<lichsuhienmau> getAllLSHienMaubymaNHM(String maNHM){
        List<lichsuhienmau> list = new ArrayList<>();
        String query = "select maLSHM, dot.tenDHM, ls.thoiGian,tinhTrang, soLuongMau\n" +
                                "from LichSuHienMau as ls, DotHienMau as dot\n" +
                                "where ls.maDHM = dot.maDHM and maNHM = ?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, maNHM);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new lichsuhienmau(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getInt(5)));
            }
        }catch(Exception e){}
        return list;
    }
     public List<lichsuhotro> getAllLSHoTrobymaTNV(String maTNV){
        List<lichsuhotro> list = new ArrayList<>();
        String query = "select maLSHT, dot.tenDHM, ls.thoiGian,tinhTrang\n" +
                            "from LichSuHoTro as ls, DotHienMau as dot\n" +
                            "where ls.maDHM = dot.maDHM and maTNV=?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, maTNV);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new lichsuhotro(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));
            }
        }catch(Exception e){}
        return list;
    }
    
     public dothienmau getDotHienMauBymaDHM(String maDHM){
        String query="select * from DotHienMau where maDHM = ?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, maDHM);
            rs = ps.executeQuery();
            while(rs.next()){
                return new dothienmau(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getInt(6));
            }
        }catch(Exception e){}
        return null;
    }
     public User login(String username, String password){
        String query = "select * from [User] where username = ? and password = ?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while(rs.next()){
                return new User(rs.getString(1),rs.getString(2), rs.getInt(3));
            }
        }catch(Exception e){}
        
        return null;
    }
     public void DangKyHienMau(String maDHM, String maNHM){
        String query="insert into DangKyHienMau\n" +
                        "values (?,?,?)";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "");
            ps.setString(2, maDHM);
            ps.setString(3, maNHM);
            ps.executeUpdate();
        }catch(Exception e){}
    }
     public void registerNHM(String maNHM, String tenNHM, String gioiTinh, String nhomMau, String benhNen, String diaChi, String sdt, String cccd, String matKhau){
        String query="insert into NguoiHienMau\n" +
                        "values (?,?,?,?,?,?,?,?,?)";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, maNHM);
            ps.setString(2, tenNHM);
            ps.setString(3, gioiTinh);
            ps.setString(4, nhomMau);
            ps.setString(5, benhNen);
            ps.setString(6, diaChi);
            ps.setString(7, sdt);
            ps.setString(8, cccd);
            ps.setString(9, matKhau);
            ps.executeUpdate();
        }catch(Exception e){}
    }
     public void registerTNV(String maTNV, String tenTNV, String gioiTinh, String diaChi, String sdt, String cccd, String matKhau){
        String query="insert into TinhNguyenVien\n" +
                        "values (?,?,?,?,?,?,?)";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, maTNV);
            ps.setString(2, tenTNV);
            ps.setString(3, gioiTinh);
            ps.setString(4, diaChi);
            ps.setString(5, sdt);
            ps.setString(6, cccd);
            ps.setString(7, matKhau);
            ps.executeUpdate();
        }catch(Exception e){}
    }
     public void registerNV(String maNV, String tenNV, String gioiTinh, String diaChi, String sdt, String cccd, String matKhau){
        String query="insert into NhanVienYTe\n" +
                        "values (?,?,?,?,?,?,?)";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, maNV);
            ps.setString(2, tenNV);
            ps.setString(3, gioiTinh);
            ps.setString(4, diaChi);
            ps.setString(5, sdt);
            ps.setString(6, cccd);
            ps.setString(7, matKhau);
            ps.executeUpdate();
        }catch(Exception e){}
    }
     public void registerUser(String sdt, String matKhau, String phanQuyen){
        String query="insert into [User]\n" +
                        "values (?,?,?)";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, sdt);
            ps.setString(2, matKhau);
            ps.setString(3, phanQuyen);
            ps.executeUpdate();
        }catch(Exception e){}
    }
     public void registerDHM(String maDHM, String tenDHM, String thoiGian, String diaDiem, String soLuongTNV, String soLuongNHM){
        String query="insert into DotHienMau\n" +
                        "values (?,?,?,?,?,?)";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, maDHM);
            ps.setString(2, tenDHM);
            ps.setString(3, thoiGian);
            ps.setString(4, diaDiem);
            ps.setString(5, soLuongTNV);
            ps.setString(6, soLuongNHM);
            ps.executeUpdate();
        }catch(Exception e){}
    }
     public void DangKyHoTro(String maDHM, String maTNV){
        String query="insert into DangKyHoTro\n" +
                        "values (?,?,?)";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "");
            ps.setString(2, maDHM);
            ps.setString(3, maTNV);
            ps.executeUpdate();
        }catch(Exception e){}
    }
     public void In_LSHienMau(String maDHM, String maNHM, String thoiGian){
        String query="insert into LichSuHienMau\n" +
                        "values (?,?,?,?,?,?)";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "");
            ps.setString(2, maDHM);
            ps.setString(3, maNHM);
            ps.setString(4, thoiGian);
            ps.setString(5, "Chờ Duyệt");
            ps.setString(6, "");
            ps.executeUpdate();
        }catch(Exception e){}
    }
      public void In_LSHoTro(String maDHM, String maTNV, String thoiGian){
        String query="insert into LichSuHoTro\n" +
                        "values (?,?,?,?,?)";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "");
            ps.setString(2, maDHM);
            ps.setString(3, maTNV);
            ps.setString(4, thoiGian);
            ps.setString(5, "Chờ Duyệt");
            ps.executeUpdate();
        }catch(Exception e){}
    }
     public NHM_TNV selectNHM(String username){
        String query = "select * from NguoiHienMau where SDT = ?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while(rs.next()){
                return new NHM_TNV(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9));
            }
        }catch(Exception e){}
        
        return null;
    }
     public nvyt selectNV(String username){
        String query = "select * from NhanVienYTe where SDT = ?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while(rs.next()){
                return new nvyt(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
            }
        }catch(Exception e){}
        
        return null;
    }
     public dothienmau selectDHM(String maDHM){
        String query = "select * from DotHienMau where maDHM = ?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, maDHM);
            rs = ps.executeQuery();
            while(rs.next()){
                return new dothienmau(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6));
            }
        }catch(Exception e){}
        
        return null;
    }
     public NHM_TNV selectNHMbyMA(String maNHM){
        String query = "select * from NguoiHienMau where maNHM = ?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, maNHM);
            rs = ps.executeQuery();
            while(rs.next()){
                return new NHM_TNV(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9));
            }
        }catch(Exception e){}
        
        return null;
    }
     public nvyt selectNVbyMA(String maNV){
        String query = "select * from NhanVienYTe where maNV = ?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, maNV);
            rs = ps.executeQuery();
            while(rs.next()){
                return new nvyt(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
            }
        }catch(Exception e){}
        
        return null;
    }
     public NHM_TNV selectNHMbyID(String username){
        String query = "select * from NguoiHienMau where CCCD = ?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while(rs.next()){
                return new NHM_TNV(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9));
            }
        }catch(Exception e){}
        
        return null;
    }
      public nvyt selectNVbyID(String username){
        String query = "select * from NhanVienYTe where CCCD = ?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while(rs.next()){
                return new nvyt(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
            }
        }catch(Exception e){}
        
        return null;
    }
     public TNV_NHM selectTNV(String username){
        String query = "select * from TinhNguyenVien where SDT = ?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while(rs.next()){
                return new TNV_NHM(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
            }
        }catch(Exception e){}
        
        return null;
    }
     public TNV_NHM selectTNVbyMA(String maTNV){
        String query = "select * from TinhNguyenVien where maTNV = ?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, maTNV);
            rs = ps.executeQuery();
            while(rs.next()){
                return new TNV_NHM(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
            }
        }catch(Exception e){}
        
        return null;
    }
     public void updateNHM(String maNHM, String tenNHM, String gioiTinh, String nhomMau, String benhNen, String diaChi, String sdt, String cccd, String matKhau){
        String query="update NguoiHienMau set tenNHM=?,\n" +
                        "gioiTinh=?, \n" +
                        "nhomMau=?, \n" +
                        "benhNen=?, \n" +
                        "diaChi = ?, \n" +
                        "SDT=?, \n" +
                        "CCCD=?, \n" +
                        "matKhau=? \n" +
                        "where maNHM=?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, tenNHM);
            ps.setString(2, gioiTinh);
            ps.setString(3, nhomMau);
            ps.setString(4, benhNen);
            ps.setString(5, diaChi);
            ps.setString(6, sdt);
            ps.setString(7, cccd);
            ps.setString(8, matKhau);
            ps.setString(9, maNHM);
            ps.executeUpdate();
        }catch(Exception e){}
    }
     public void updateNHM_2(String maNHM, String tenNHM, String gioiTinh, String diaChi, String sdt, String cccd, String matKhau){
        String query="update NguoiHienMau set tenNHM=?,\n" +
                        "gioiTinh=?, \n" +
                        "diaChi=?, \n" +
                        "SDT=?, \n" +
                        "CCCD=?, \n" +
                        "matKhau=? \n" +
                        "where maNHM=?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, tenNHM);
            ps.setString(2, gioiTinh);
            ps.setString(3, diaChi);
            ps.setString(4, sdt);
            ps.setString(5, cccd);
            ps.setString(6, matKhau);
            ps.setString(7, maNHM);
            ps.executeUpdate();
        }catch(Exception e){}
    }
     public void updateTNV(String maTNV, String tenTNV, String gioiTinh, String diaChi, String sdt, String cccd, String matKhau){
        String query="update TinhNguyenVien set tenTNV=?,\n" +
                            "gioiTinh=?, \n" +
                            "diaChi=?, \n" +
                            "SDT=?, \n" +
                            "CCCD=?, \n" +
                            "matKhau=?\n" +
                            "where maTNV=?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, tenTNV);
            ps.setString(2, gioiTinh);
            ps.setString(3, diaChi);
            ps.setString(4, sdt);
            ps.setString(5, cccd);
            ps.setString(6, matKhau);
            ps.setString(7, maTNV);
            ps.executeUpdate();
        }catch(Exception e){}
    }
     public void updateNV(String maNV, String tenNV, String gioiTinh, String diaChi, String sdt, String cccd, String matKhau){
        String query="update NhanVienYTe set tenNV=?,\n" +
                            "gioiTinh=?, \n" +
                            "diaChi=?, \n" +
                            "SDT=?, \n" +
                            "CCCD=?, \n" +
                            "matKhau=?\n" +
                            "where maNV=?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, tenNV);
            ps.setString(2, gioiTinh);
            ps.setString(3, diaChi);
            ps.setString(4, sdt);
            ps.setString(5, cccd);
            ps.setString(6, matKhau);
            ps.setString(7, maNV);
            ps.executeUpdate();
        }catch(Exception e){}
    }
     public void updateDHM(String maDHM, String tenDHM, String thoiGian, String diaDiem, String soLuongTNV, String soLuongNHM){
        String query="update DotHienMau set tenDHM=?,\n" +
                            "thoiGian=?, \n" +
                            "diaDiem=?, \n" +
                            "soLuongTNV=?, \n" +
                            "soLuongNHM=? \n" +
                            "where maDHM=?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, tenDHM);
            ps.setString(2, thoiGian);
            ps.setString(3, diaDiem);
            ps.setString(4, soLuongTNV);
            ps.setString(5, soLuongNHM);
            ps.setString(6, maDHM);
            ps.executeUpdate();
        }catch(Exception e){}
    }
     public void updateLSHM(String maLSHM, String tinhTrang, String soLuongMau){
        String query="update LichSuHienMau set tinhTrang=?, soLuongMau=?\n" +
                            "where maLSHM=?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, tinhTrang);
            ps.setString(2, soLuongMau);
            ps.setString(3, maLSHM);
            ps.executeUpdate();
        }catch(Exception e){}
    }
      public void updateLSHT(String maLSHT, String tinhTrang){
        String query="update LichSuHoTro set tinhTrang=?\n" +
                            "where maLSHT=?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, tinhTrang);
            ps.setString(2, maLSHT);
            ps.executeUpdate();
        }catch(Exception e){}
    }
     public void deleteDKHM(String id, String value){
        String query = "delete from DangKyHienMau where "+value+" = ?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        }catch(Exception e){}
    }
     public void deleteDKHT(String id, String value){
        String query = "delete from DangKyHoTro where "+value+" = ?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        }catch(Exception e){}
    }
     public void deleteLSHienMau(String id, String value){
        String query = "delete from LichSuHienMau where "+value+" = ?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        }catch(Exception e){}
    }
      public void deleteLSHoTro(String id, String value){
        String query = "delete from LichSuHoTro where "+value+" = ?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        }catch(Exception e){}
    }
     public void deleteNHM(String maNHM){
        String query = "delete from NguoiHienMau where maNHM = ?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, maNHM);
            ps.executeUpdate();
        }catch(Exception e){}
    }
     public void deleteTNV(String maTNV){
        String query = "delete from TinhNguyenVien where maTNV = ?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, maTNV);
            ps.executeUpdate();
        }catch(Exception e){}
    }
      public void deleteUser(String sdt){
        String query = "delete from [User] where username = ?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, sdt);
            ps.executeUpdate();
        }catch(Exception e){}
    }
      public void deleteNvyt(String sdt){
        String query = "delete from NhanVienYTe where maNV = ?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, sdt);
            ps.executeUpdate();
        }catch(Exception e){}
    }
      public void deleteDHM(String maDHM){
        String query = "delete from DotHienMau where maDHM = ?";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, maDHM);
            ps.executeUpdate();
        }catch(Exception e){}
    }
     
    public int Counter(String id, String table){
        String query="select count(?)\n" +
                        "from "+table;
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                return rs.getInt(1);
            }
        }catch(Exception e){}
        return 0;
    }
    public int Sum_blood(){
        String query="select sum(soLuongMau)\n" +
                        "from LichSuHienMau";
        try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                return rs.getInt(1);
            }
        }catch(Exception e){}
        return 0;
    }
}
