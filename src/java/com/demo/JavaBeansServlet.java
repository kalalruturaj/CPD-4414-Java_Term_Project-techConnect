/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ruturaj
 */
@WebServlet("/lookup1")
public class JavaBeansServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */


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
          response.setHeader("Cache-Control", "private, no-store, no-cache, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
         try{
             PrintWriter out = response.getWriter();
       // String fname = request.getParameter("first");
        //String lname = request.getParameter("last");
        LookupController look = new LookupController();
          out.println(look.getAll().toString());
         
         out.println("Welcome in GET");
             
         }catch(IOException ex){
             Logger.getLogger(JavaBeansServlet.class.getName()).log(Level.SEVERE, null, ex);
         }
        
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
        HttpSession session=request.getSession();  
        String s ="";
         PrintWriter out = response.getWriter();
        try {
           
           
            out.println("Welcome");
            String user = request.getParameter("user_name");
            String pwd = request.getParameter("password");
                        out.println(user);
                                    out.println(pwd);

              out.println("<a href='logout.jsp'>Log out</a>");
       DBConnection DBcon = new DBConnection();
       Connection con = DBcon.Connect();
            
            Statement st = con.createStatement();
            ResultSet rs;
            rs = st.executeQuery("select * from user_login where uname= '" + user + "' and pass = '" + pwd + "'");
           
            if (rs.next()) {
                s=rs.getString("uname");
                out.println("welcome " + rs.getString("uname"));
                out.println("<a href='logout.jsp'>Log out</a>");
                 
                session.setAttribute("name",user);  
                response.sendRedirect("home.jsp");
            } else {
                out.println("Invalid password <a href='index.jsp'>try again</a>");
                 response.sendRedirect("Login_error.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(JavaBeansServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
         out.println("welcome klfdsj" + s);
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
