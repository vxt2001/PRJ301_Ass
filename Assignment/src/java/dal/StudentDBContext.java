/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import com.sun.istack.internal.logging.Logger;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import model.Groups;
import model.Student;

/**
 *
 * @author win
 */
public class StudentDBContext extends DBContext<Student>{

     public ArrayList<Student> search(int did) {
        ArrayList<Student> stus = new ArrayList<>();
        try {
            String sql = "SELECT sid,simage,scode,sname,g.gid,g.gname FROM Student s INNER JOIN Groups g\n" +
"                     ON s.gid = g.gid WHERE g.gid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, did);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Student s = new Student();
                
                s.setSid(rs.getInt("eid"));
                s.setSimage(rs.getString("simage"));
                s.setScode(rs.getString("scode"));
                s.setSname(rs.getString("name"));
                Groups g = new Groups();
                g.setGid(rs.getInt("gid"));
                g.setGname(rs.getString("gname"));
                s.setGroup(g);
                stus.add(s);
            }
        } catch (SQLException ex) {
           // Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return stus;
    }
    @Override
    public ArrayList<Student> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Student get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
