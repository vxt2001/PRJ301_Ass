/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.SinhVien;

/**
 *
 * @author Admin
 */
public class SinhVienDBContext extends DBContext<SinhVien> {

//    public ArrayList<SinhVien> search(int did) {
//        ArrayList<SinhVien> svs = new ArrayList<>();
//        try {
//            String sql = "SELECT sid,simage,scode,sname,su.suid,su.suname FROM Student s INNER JOIN Subject su\n"
//                    + "                     ON s.sid = su.suid WHERE s.suid = ?";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setInt(1, did);
//            ResultSet rs = stm.executeQuery();
//            while (rs.next()) {
//                SinhVien s = new SinhVien();
//
//                s.setSid(rs.getInt("sid"));
//                s.setSimage(rs.getString("simage"));
//                s.setScode(rs.getString("scode"));
//                s.setSname(rs.getString("sname"));
//                Subject su = new Subject();
//                su.setSuid(rs.getInt("suid"));
//                su.setSuname(rs.getString("suname"));
//                s.setSubject(su);
//                stus.add(s);
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return stus;
//    }
    @Override
    public ArrayList<SinhVien> list() {
        ArrayList<Subject> subjects = new ArrayList<>();
        try {
            String sql = "SELECT sv.idSV,MaSV,TenSV,GioiTinh,NgaySinh,idLop,MaMH,HocKy,DiemLan1,DiemLan2 FROM SinhVien sv inner JOIN  Diem d \n"
                    + " \n"
                    + "ON d.idSV = sv.idSV";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {

                Subject su = new Subject();
                su.setSuid(rs.getInt("suid"));
                su.setSuname(rs.getString("suname"));
                subjects.add(su);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SinhVienDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return subjects;
    }

    @Override
    public SinhVien get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(SinhVien model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(SinhVien model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(SinhVien model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
