/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.StudentDBContext;
import dal.SubjectDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Student;
import model.Subject;

/**
 *
 * @author Admin
 */
public class EditController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        SubjectDBContext db = new SubjectDBContext();
        ArrayList<Subject> subjects = db.list();
        request.setAttribute("subjects", subjects);

        int suid = Integer.parseInt(request.getParameter("suid"));
        StudentDBContext dbStu = new StudentDBContext();
        //ArrayList<Student> stus = dbStu.search(suid);
        Student stus=dbStu.get(suid);
        request.setAttribute("stus", stus);

        request.getRequestDispatcher("edit.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String raw_sid = request.getParameter("sid");
        String raw_simage = request.getParameter("simage");
        String raw_scode = request.getParameter("scode");
        String raw_sname = request.getParameter("sname");
        String raw_suid = request.getParameter("suid");
        
         int sid = Integer.parseInt(raw_sid);
         String simage = raw_simage;
        String scode = raw_scode;
        String sname = raw_sname;
        
        int suid = Integer.parseInt(raw_suid);
        
        Student s = new Student();
        s.setSid(sid);
        s.setSimage(simage);
        s.setSname(sname);
        s.setSname(sname);
        Subject su = new Subject();
        su.setSuid(suid);
        s.setSubject(su);
        StudentDBContext db= new StudentDBContext();
         db.update(s);
         
         request.setAttribute("student", s);
         request.setAttribute("action", "edited");
          request.getRequestDispatcher("../view/emp/dml_confirmation.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
