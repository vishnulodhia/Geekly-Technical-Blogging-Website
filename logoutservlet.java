/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.tech.blog.servlet;

import com.tech.blog.DB.userDB;
import com.tech.blog.entities.Message;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dell
 */
public class logoutservlet extends HttpServlet {

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
            out.println("<title>Servlet logoutservlet</title>");            
            out.println("</head>");
            out.println("<body>");
            
            
            
//            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
//                 response.setHeader("Pragma", "no-cache"); // HTTP 1.0
//                 response.setDateHeader("Expires", 0); // Proxies
            HttpSession s = request.getSession();
           
//            s.setAttribute("currentuser", null);
            s.removeAttribute("currentuser");
            Message m  = new Message("Logout Successfully ", "success","alert-success");
            s.setAttribute("msg", m);
            response.sendRedirect("index.jsp");
  

            
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
//         response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet logoutservlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            
//            
//            
//            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
//                 response.setHeader("Pragma", "no-cache"); // HTTP 1.0
//                 response.setDateHeader("Expires", 0); // Proxies
//            HttpSession s = request.getSession();
//
////            s.setAttribute("currentuser", null);
//            s.removeAttribute("currentuser");
//            Message m  = new Message("Logout Successfully ", "success","alert-success");
//            s.setAttribute("msg", m);
//            response.sendRedirect("index.jsp");
//            
//            out.println("</body>");
//            out.println("</html>");
//        }
        
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
// response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet logoutservlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            
//            
//            
//            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
//            response.setHeader("Pragma", "no-cache"); // HTTP 1.0
//            response.setDateHeader("Expires", 0); // Proxies
//            HttpSession s = request.getSession();
//
////            s.setAttribute("currentuser", null);
//            s.removeAttribute("currentuser");
//            Message m  = new Message("Logout Successfully ", "success","alert-success");
//            s.setAttribute("msg", m);
//            response.sendRedirect("index.jsp");
//            
//            out.println("</body>");
//            out.println("</html>");
//        }
        
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
