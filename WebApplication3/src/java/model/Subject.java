/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author win
 */
public class Subject {
     private int suid;
    private String suname;
    private ArrayList<Student> studs = new ArrayList<>();
    private ArrayList<Lop> lops = new ArrayList<>();

    public int getSuid() {
        return suid;
    }

    public void setSuid(int suid) {
        this.suid = suid;
    }

    public String getSuname() {
        return suname;
    }

    public void setSuname(String suname) {
        this.suname = suname;
    }

    public ArrayList<Student> getStuds() {
        return studs;
    }

    public void setStuds(ArrayList<Student> studs) {
        this.studs = studs;
    }

    public ArrayList<Lop> getLops() {
        return lops;
    }

    public void setLops(ArrayList<Lop> lops) {
        this.lops = lops;
    }

   
    
    
    
}
