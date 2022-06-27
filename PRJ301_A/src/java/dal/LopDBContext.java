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

/**
 *
 * @author Admin
 */
public class LopDBContext extends DBContext<Lop> {

    @Override
    public ArrayList<Lop> list() {
        ArrayList<Lop> lops = new ArrayList<>();
try {
            String sql = "SELECT idLop,MaLop,TenLop FROM Lop";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                Lop l = new Lop();
                l.setIdLop(rs.getInt("idLop"));
                l.setMaLop(rs.getString("MaLop"));
                l.setTenLop(rs.getString("TenLop"));
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
