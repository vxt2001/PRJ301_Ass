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
import model.Groups;

/**
 *
 * @author win
 */
public class GroupsDBContext extends DBContext<Groups>{

     public ArrayList<Groups> list() {
        ArrayList<Groups> groupss = new ArrayList<>();
        try {
            String sql = "SELECT gid,gname from Groups";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                
               Groups g = new Groups();
                g.setGid(rs.getInt("gid"));
                g.setGname(rs.getString("gname"));
                groupss.add(g);
            }
        } catch (SQLException ex) {
            Logger.getLogger(GroupsDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return groupss;
    }
   

    @Override
    public Groups get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Groups model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Groups model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Groups model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
