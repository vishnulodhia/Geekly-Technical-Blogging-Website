
<%@page import="com.tech.blog.DB.PostDB"%>
<%@page import="com.tech.blog.helper.Connectionprovide"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
int cid =    Integer.parseInt( request.getParameter("pid"));
PostDB d = new PostDB(Connectionprovide.getCoonection());
d.deletepost(cid);
response.sendRedirect("Upload.jsp");
%>