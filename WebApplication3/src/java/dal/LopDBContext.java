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
import model.Lop;
import model.Subject;

/**
 *
 * @author Admin
 */
public class LopDBContext extends DBContext<Lop> {

    public ArrayList<Lop> search(int suid) {
        ArrayList<Lop> lops = new ArrayList<>();
        try {
            String sql = "SELECT idLop,MaLop,su.suid,su.suname FROM Lop l INNER JOIN Subject su\n"
                    + "                     ON l.suid = su.suid WHERE su.suid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, suid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Lop l = new Lop();
                l.setIdLop(rs.getInt("idLop"));
                l.setMaLop(rs.getString("MaLop"));

                Subject su = new Subject();
                su.setSuid(rs.getInt("suid"));
                su.setSuname(rs.getString("suname"));
                l.setSubject(su);
                lops.add(l);
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lops;
    }

    @Override
    public ArrayList<Lop> list() {
        ArrayList<Lop> lops = new ArrayList<>();
        try {
            String sql = "SELECT idLop,MaLop from Lop";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {

                Lop l = new Lop();
                l.setIdLop(rs.getInt("idLop"));
                l.setMaLop(rs.getString("MaLop"));

                lops.add(l);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LopDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lops;
    }

    @Override
    public Lop get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Lop model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Lop model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Lop model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
