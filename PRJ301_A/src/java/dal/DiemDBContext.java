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

/**
 *
 * @author Admin
 */
public class DiemDBContext extends DBContext<Diem>{
     public ArrayList<Diem> list() {
        ArrayList<Diem> diems = new ArrayList<>();
        try {
            String sql = "SELECT HocKy,DiemLan1,DiemLan2 from Diem";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                
               Diem d = new Diem();
               
                d.setHocKy(rs.getInt("HocKy"));
                d.setDiemLan1(rs.getInt("DiemLan1"));
                 d.setDiemLan2(rs.getInt("DiemLan2"));
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
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Diem model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
