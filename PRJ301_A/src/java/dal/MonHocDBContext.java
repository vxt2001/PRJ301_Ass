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
import model.MonHoc;

/**
 *
 * @author Admin
 */
public class MonHocDBContext extends DBContext<MonHoc>{

    @Override
    public ArrayList<MonHoc> list() {
         ArrayList<MonHoc> monhocs = new ArrayList<>();
        try {
            String sql = "SELECT MaMH,TenMH,SoTin from MonHocc";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                
               MonHoc mh = new MonHoc();
                mh.setMaMH(rs.getString("MaMH"));
                mh.setTenMH(rs.getString("TenMH"));
                monhocs.add(mh);
            }
        } catch (SQLException ex) {
            Logger.getLogger(MonHocDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return monhocs;
    }

    @Override
    public MonHoc get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(MonHoc model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(MonHoc model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(MonHoc model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
