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
public class SignServlet extends HttpServlet {

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
            out.println("<title>Servlet SignServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SignServlet at " + request.getContextPath() + "</h1>");
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
        String name = request.getParameter("name");
        String mail = request.getParameter("mail");
         String pass = request.getParameter("pass");
          String cpass = request.getParameter("cpass");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/mydb11?useSSL=false", "root", "rahul292@");
            PreparedStatement pst = conn.prepareStatement("Insert into loggin values(?,?,?)");
            pst.setString(1, name);
            pst.setString(2, mail);
             pst.setString(3, pass);
             
              if(pass.equals(cpass))
              {
                      
             pst.executeUpdate();
              
             HttpSession session =request.getSession();
                 //hs.setAttribute("mail",mail);
                 //request.getRequestDispatcher("/index.html").forward(request, response);
             //session.setAttribute("uname",name);
             response.sendRedirect("index.html");
             
             out.println("Password must match Confirm Password--");
              }
              
                else
              {
                   HttpSession session =request.getSession();
                 //hs.setAttribute("mail",mail);
                 //request.getRequestDispatcher("/index.html").forward(request, response);
             //session.setAttribute("uname",name);
             response.sendRedirect("signup10.html");
             
                  out.println("Password must match Confirm Password--");
                  
              }
          
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