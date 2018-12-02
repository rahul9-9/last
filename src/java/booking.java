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


/**
 *
 * @author Rahul
 */
public class booking extends HttpServlet {

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
            out.println("<title>Servlet booking</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet booking at " + request.getContextPath() + "</h1>");
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
        String phoneno = request.getParameter("phoneno");
         String email = request.getParameter("email");
          String address = request.getParameter("address");
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/mydb11?useSSL=false", "root", "rahul292@");
            PreparedStatement pst = conn.prepareStatement("Insert into book values(?,?,?,?)");
            pst.setString(1, name);
            pst.setString(2, phoneno);
             pst.setString(3, email);
              pst.setString(4, address);
             
              //if(pass.equals(pass))
              //{a
                      
             pst.executeUpdate();
             out.println("ok");
              HttpSession session=request.getSession();
             //session.setAttribute("uname",name);
             response.sendRedirect("index.html");
              //HttpSession session=request.getSession();
             //session.setAttribute("uname",name);
            // response.sendRedirect("index.html");
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