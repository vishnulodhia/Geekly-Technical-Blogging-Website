/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.tech.blog.servlet;

import com.tech.blog.DB.userDB;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.user;
import com.tech.blog.helper.Connectionprovide;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dell
 */
@WebServlet(name = "Loginservlet", urlPatterns = {"/Loginservlet"})
public class Loginservlet extends HttpServlet {

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
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet Loginservlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            
//            String useremail = request.getParameter("useremail");
//            String userpassword = request.getParameter("userpassword");
//            
//             userDB uDB = new userDB(Connectionprovide.getCoonection());
//            user u =  uDB.getuserByMail(useremail,userpassword);
//             out.println(u);
//             
//             if(u == null){
//                 
//                 Message msg = new Message("Invalid Details ! try with another ","error","alert-danger");
//                 HttpSession s = request.getSession();
//                 s.setAttribute("msg", msg);
//                 
//                 response.sendRedirect("login.jsp");
////              out.println("<h1> Invalid Details... </h1>");
//             }
//             
//             
//             else{
//                 // login success than store user in session till borwser is login
//                 
//                 HttpSession s = request.getSession();
//                 s.setAttribute("currentuser", u);
//                 response.sendRedirect("profile.jsp");
//                 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
//                 response.setHeader("Pragma", "no-cache"); // HTTP 1.0
//                 response.setDateHeader("Expires", 0); // Proxies
//
//                 
//                 
//             }
//             
//             
//             
//            out.println("</body>");
//            out.println("</html>");
//        }
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
        processRequest(request, response);
         response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Loginservlet</title>");            
            out.println("</head>");
            out.println("<body>");
            
            String useremail = request.getParameter("useremail");
            String userpassword = request.getParameter("userpassword");
            
             userDB uDB = new userDB(Connectionprovide.getCoonection());
            user u =  uDB.getuserByMail(useremail,userpassword);
             out.println(u);
             
             if(u == null){
                 
                 Message msg = new Message("Invalid Details ! try with another ","error","alert-danger");
                 HttpSession s = request.getSession();
                 s.setAttribute("msg", msg);
                 
                 response.sendRedirect("login.jsp");
//              out.println("<h1> Invalid Details... </h1>");
             }
             
             
             else{
                 // login success than store user in session till borwser is login
                 
                 HttpSession s = request.getSession();
                 s.setAttribute("currentuser", u);
                 response.sendRedirect("profile.jsp");
                 

                 
                 
             }
             
             
             
            out.println("</body>");
            out.println("</html>");
        }

        
        
        
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
