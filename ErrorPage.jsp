<%-- 
    Document   : ErrorPage
    Created on : 30-Apr-2023, 10:01:38 pm
    Author     : Dell
--%>

<%@page import="java.lang.Exception"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Something Went Wrong</title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
         <link rel="stylesheet" href="CSS/style.css">
    </head>
    <body>
        <!--<h1>Hello World!</h1>-->
        
        <div class="container text-center ">
            
            <img src="Source/ErrorPage.jpg"  style="height: 80vh;"class="img-fluid">
            <br>
            <h3>  <%= exception %> </h3>
           <br>
           <a href="index.jsp" class="btn text-dark">Get Back</a>
           
        </div>
        
        
    </body>
</html>
