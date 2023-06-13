/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.tech.blog.servlet;

import com.tech.blog.DB.userDB;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.user;
import com.tech.blog.helper.Connectionprovide;
import com.tech.blog.helper.helper;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Dell
 */

@MultipartConfig
public class editservlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    private static final long MAX_FILE_SIZE = 1024 * 1024; 
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet editservlet</title>");            
            out.println("</head>");
            out.println("<body>");
            
            String username = request.getParameter("username");
            String useremail = request.getParameter("useremail");
            String userpassword = request.getParameter("userpassword");
            Part part =  request.getPart("imag");
            String imagname = part.getSubmittedFileName();
//               long fileSize = Part.getSize();
//               String fileType = Part.getContentType();
             HttpSession s = request.getSession();
                 long fileSize = part.getSize();
                 String fileType = part.getContentType();
            
            //get user from user
//            if (fileSize > MAX_FILE_SIZE) {
//               Message msg = new Message("Upload Img less than 1 Mb!  ","error","alert-danger");
//                 s.setAttribute("msg", msg);
//        }
//        
//       else if (!fileType.equals("image/png") && !fileType.equals("image/jpeg")) {
//            Message msg = new Message("Upload only png or jpg file!  ","error","alert-danger");
//             s.setAttribute("msg", msg);
//            
//        }
            
            
            
        
            
            user u = (user) s.getAttribute("currentuser");
             String proCK = u.getProfile();
            u.setName(username);
            u.setEmail(useremail);
            u.setPassword(userpassword);
            
            if(!imagname.equals("")){
            u.setProfile(imagname);
            }
            
            s.setAttribute("currentuser", u);
            userDB uDB = new userDB(Connectionprovide.getCoonection());
            boolean ans = uDB.updateuser(u);
            
            if(ans){
                
               
//               if(!imagname.equals(proCK)){
                   if (fileSize > MAX_FILE_SIZE) {
               Message msg = new Message("Upload Img less than 1 Mb!  ","error","alert-danger");
                 s.setAttribute("msg", msg);
        }
        
       else if (!fileType.equals("image/png") && !fileType.equals("image/jpeg") && fileType.equals("application/octet-stream ") ) {
            Message msg = new Message("Upload only png or jpg file!  " +fileType ,"error","alert-danger");
             s.setAttribute("msg", msg);
            
        }
                    
        else  if( !imagname.equals("")){
                  
               String path2 = request.getRealPath("/") + "pics" + File.separator + proCK ;
                
               String path = request.getRealPath("/") + "pics" + File.separator + u.getProfile() ;
               
                  out.println(path);
//                   helper.deleteFile(path);
                  if(helper.saveFile(part.getInputStream(), path)){
                      
                      if(!proCK.equals("default.png"))
                       helper.deleteFile(path2);
                      
                 Message msg = new Message("Profile Updated! ","success","alert-success");
                 s.setAttribute("msg", msg);      
                  }
                  
                  else{
                  Message msg = new Message("Profile not updated please try again!  ","error","alert-danger");
                 s.setAttribute("msg", msg);
                  }
                  
              }
              
              
              else{
                    Message msg = new Message("Profile Updated! ","success","alert-success");//                 HttpSession s = request.getSession();
                 s.setAttribute("msg", msg);
              }
              
              
               }
            
            else{
             Message msg = new Message("Profile not updated please try again!  ","error","alert-danger");
//                 HttpSession s = request.getSession();
                 s.setAttribute("msg", msg);
                 out.println(imagname);
            }
       
            response.sendRedirect("profile.jsp");
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
        processRequest(request, response);
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
