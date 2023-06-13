/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.tech.blog.servlet;

import static com.sun.org.apache.xerces.internal.util.FeatureState.is;
import com.tech.blog.DB.PostDB;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.post;
import com.tech.blog.entities.user;
import com.tech.blog.helper.Connectionprovide;
import com.tech.blog.helper.helper;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


  
@MultipartConfig
public class AddPostServlet extends HttpServlet {

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
           int cid = Integer.parseInt(request.getParameter("cid"));
              String pTitle = request.getParameter("ptitle");
              String pcontent= request.getParameter("pcontent");
              String pcode = request.getParameter("pcode");
              Part part = request.getPart("ppic");
              HttpSession s = request.getSession();
              user u = (user)s.getAttribute("currentuser");
              int id = u.getId();
                                                                                         
              post p = new post(cid,pTitle,pcontent,part.getSubmittedFileName(),null,pcode,id);
//              out.println("<h1>Jquery is working</h1>");
              PostDB db = new PostDB(Connectionprovide.getCoonection());
              
                               long fileSize = part.getSize();
                 String fileType = part.getContentType();
            
            //get user from user
            
            
            
            if (fileSize > MAX_FILE_SIZE) {
//               Message msg = new Message("Upload Img less than 1 Mb!  ","error","alert-danger");
//                 s.setAttribute("msg", msg);
                 out.println("Upload Img less than 1 Mb!  " );
        }
        
       else if (!fileType.equals("image/png") && !fileType.equals("image/jpeg") && fileSize!=0) {
//            Message msg = new Message("Upload only png or jpg file!  ","error","alert-danger");
//             s.setAttribute("msg", msg);
             out.println("Upload only png or jpg file!  " + fileSize);
            
        }
       else{
              if(db.savepost(p)){
                  String path = request.getRealPath("/") + "Blog_pics" + File.separator + part.getSubmittedFileName();
                  helper.saveFile(part.getInputStream(), path);
                  out.println("done");
              }
              else{
                  out.println("error");
              }
       }
            
            
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
