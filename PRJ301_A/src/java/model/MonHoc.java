/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class MonHoc {
    String MaMH;
    String TenMH;
    int SoTin;
     private ArrayList<Diem> diems = new ArrayList<>();

    public String getMaMH() {
        return MaMH;
    }

    public void setMaMH(String MaMH) {
        this.MaMH = MaMH;
    }

    public String getTenMH() {
        return TenMH;
    }

    public void setTenMH(String TenMH) {
        this.TenMH = TenMH;
    }

    public int getSoTin() {
        return SoTin;
    }

    public void setSoTin(int SoTin) {
        this.SoTin = SoTin;
    }

    public ArrayList<Diem> getDiems() {
        return diems;
    }

    public void setDiems(ArrayList<Diem> diems) {
        this.diems = diems;
    }
     
     
}
