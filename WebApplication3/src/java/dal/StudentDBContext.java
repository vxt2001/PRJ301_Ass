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
import model.Subject;
import model.Student;

/**
 *
 * @author win
 */
public class StudentDBContext extends DBContext<Student>{

     public ArrayList<Student> search(int did) {
        ArrayList<Student> stus = new ArrayList<>();
        try {
            String sql = "SELECT sid,simage,scode,sname,su.suid,su.suname FROM Student s INNER JOIN Subject su\n" +
"                     ON s.sid = su.suid WHERE su.suid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, did);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Student s = new Student();
                
                s.setSid(rs.getInt("sid"));
                s.setSimage(rs.getString("simage"));
                s.setScode(rs.getString("scode"));
                s.setSname(rs.getString("sname"));
                Subject su = new Subject();
                su.setSuid(rs.getInt("suid"));
                su.setSuname(rs.getString("suname"));
                s.setGroup(su);
                stus.add(s);
            }
        } catch (SQLException ex) {
           Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
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
