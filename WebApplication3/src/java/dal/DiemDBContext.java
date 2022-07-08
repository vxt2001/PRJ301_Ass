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
import model.Diem;
import model.Student;

/**
 *
 * @author Admin
 */
public class DiemDBContext extends DBContext<Diem> {

    public ArrayList<Diem> search(int suid) {
        ArrayList<Diem> diems = new ArrayList<>();
        try {
            String sql = "SELECT d.pt1,d.pt2,d.ws1,d.ws2,d.fe,s.sid,s.sname FROM Diem d INNER JOIN Student s\n"
                    + " d.sid = s.sid WHERE s.sid = 1";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, suid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
               Diem d=new Diem();

               d.setPt1(rs.getFloat("pt1"));
                d.setPt2(rs.getFloat("pt2"));
                 d.setWs1(rs.getFloat("ws1"));
                  d.setWs2(rs.getFloat("ws2"));
                   d.setFe(rs.getFloat("fe"));
                

                 Student s = new Student();
                s.setSid(rs.getInt("sid"));
                s.setSname(rs.getString("sname"));
                d.setStudent(s);
                diems.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DiemDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return diems;
    }

    @Override
    public ArrayList<Diem> list() {
        ArrayList<Diem> diems = new ArrayList<>();
        try {
            String sql = "SELECT pt1,pt2,ws1,ws2,fe from Diem";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {

                Diem d = new Diem();

                d.setPt1(rs.getInt("pt1"));
                d.setPt2(rs.getInt("pt2"));
                d.setWs1(rs.getInt("ws1"));
                d.setWs2(rs.getInt("ws2"));
                d.setFe(rs.getInt("fe"));
                diems.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DiemDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return diems;
    }

    @Override
    public Diem get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Diem model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Diem model) {
//        try {
//            String sql = "UPDATE [Diem]\n"
//                    + "   SET \n"
//                    + "      ,[pt1] = ?\n"
//                    + "      ,[pt2] = ?\n"
//                    + "      ,[ws1] = ?\n"
//                    + "      ,[ws2] = ?\n"
//                    + "      ,[fe] = ?\n"
//                    + " WHERE [sid] = ?";
//            PreparedStatement stm = connection.prepareStatement(sql);
//
//            stm.setInt(1, model.getPt1());
//            stm.setInt(3, model.getPt2());
//            stm.setInt(2, model.getWs1());
//            stm.setInt(4, model.getWs2());
//            stm.setInt(4, model.getFe());
//            stm.setInt(5, model.getSid());
//            stm.executeUpdate();
//        } catch (SQLException ex) {
//            Logger.getLogger(DiemDBContext.class.getName()).log(Level.SEVERE, null, ex);
//        }
    }

    @Override
    public void delete(Diem model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
