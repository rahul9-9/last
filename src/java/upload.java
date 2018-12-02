/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author Rahul
 */
public class upload extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet upload</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet upload at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
       // processRequest(request, response);
       
             response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String price = request.getParameter("price");
        String bhk = request.getParameter("bhk");
         String location = request.getParameter("location");
          String securitydeposit = request.getParameter("securitydeposit");
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/mydb11?useSSL=false", "root", "rahul292@");
            PreparedStatement pst = conn.prepareStatement("Insert into upload values(?,?,?,?)");
            pst.setString(1, price);
            pst.setString(2, bhk);
             pst.setString(3, location);
              pst.setString(4, securitydeposit);
             
              //if(pass.equals(pass))
              //{a
                      
             pst.executeUpdate();
             
              HttpSession session=request.getSession();
             //session.setAttribute("uname",name);
             response.sendRedirect("newjsp.jsp");
            /* HttpSession session=request.getSession();
             //session.setAttribute("uname",name);
             response.sendRedirect("apartment.html");*/
             
              //}
               // else
             // {
                 // out.println("check again");
                  
              //}
          
                //out.println("Incorrect login credentials");
            
        } 
        catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
       
       
       
       
    }

    /**
     * Returns a short descrip tion of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}