
<%@page import="com.tech.blog.entities.user"%>
<%@page import="com.tech.blog.DB.userDB"%>
<%@page import="com.tech.blog.entities.post"%>
<%@page import="com.tech.blog.helper.Connectionprovide"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.tech.blog.DB.PostDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
   int pid =  Integer.parseInt(request.getParameter("post_id"));
   PostDB d = new PostDB(Connectionprovide.getCoonection());
   post p = d.getpostbypostId(pid);
        

%>

          <%  response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate"); %>
<html>
    <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title><%= p.getPtitle()%> || Geekly </title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/985af11286.js" crossorigin="anonymous"></script>

    <!-- <link rel="stylesheet" href="../css/style.css"> -->
    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="css/mobile-style.css">
</head>
<style>
    
    
    .po1{
            position: absolute;
            right: 190px;
            
        }
        
        .po2{
            position: absolute;
            right: 35px;
        }
        
        .shortnav{
            margin-right:600px;
        }
        
      
        
        @media only screen and (max-width: 990px) {

            .po1{
            position: static;
            /*right: 150px;*/
            
        }
        
        .po2{
            position: static;
            /*right: 35px;*/
        }  
        .shortnav{
            margin-right:0px; 
        }
            
}





body {
    overflow-x: hidden;
}

#sidebar-wrapper {
    min-height: 100vh;
    margin-left: -15rem;
    -webkit-transition: margin .25s ease-out;
    -moz-transition: margin .25s ease-out;
    -o-transition: margin .25s ease-out;
    transition: margin .25s ease-out;
}

#sidebar-wrapper .sidebar-heading {
    padding: 0.875rem 1.25rem;
    font-size: 1.2rem;
}

#sidebar-wrapper .list-group {
    width: 15rem;
}

#page-content-wrapper {
    min-width: 100vw;
}

#wrapper.toggled #sidebar-wrapper {
    margin-left: 0;
}

@media (min-width: 768px) {
    #sidebar-wrapper {
        margin-left: 0;
    }

    #page-content-wrapper {
        min-width: 0;
        width: 100%;
    }

    #wrapper.toggled #sidebar-wrapper {
        margin-left: -15rem;
    }
}
</style>


    <body>
        
        <%
        
       user  u =  (user) session.getAttribute("currentuser");
        if(u == null){
        %>
        <%@include file="Navbar.jsp" %>
        <% 
            }
else{
%>

     <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <div class="container-fluid">

            <a class="navbar-brand" href="profile.jsp" style="font-family: cursive;">
                                            <image src="Source/810393-removebg-preview.png" style="height: 8vh;">
                Geekly</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse shortnav" id="navbarSupportedContent"  >
                <ul class="navbar-nav mx-auto" >

                    <li class="nav-item">
                        <a class="nav-link" href="#about">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#discovery">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" style="display: block ruby;" href="post.jsp"  style="">Do-post</a>
                    </li><!--
                    <li class="nav-item">
                        <a class="nav-link" href="#sign-up">sign up</a>
                    </li>-->
                    
                </ul>
                <!--<form class="d-flex">-->
                     <!--<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">--> 
                     <!--<div >-->
<!--                     <a href="login.jsp" class="  btn-success text-dark" type="submit"> <span class="fa fa-user-plus"></span> <%= u.getName() %> </a>  
                    <a href="login.jsp"style=" " class="btn  btn-success text-dark mx-5" type="submit">Logout</a>-->
                     <!--</div>-->
                <!--</form>-->
                <!--<ul class ="navbar-nav mx-auto">-->
                    <!--<li> <a href="login.jsp" class="  btn-success text-dark" type="submit"> <span class="fa fa-user-plus"></span> <%= u.getName() %> </a>  </li>-->
                     <!--<li>-->
                     <!--<div style="display:flex;flex-direction: row;justify-content: space-;align-items: center">-->
                     <a   class=" po1 nav-link " style="color:#00bf85;" type="submit"  data-bs-toggle="modal"data-bs-target="#exampleModal" id="#exampleModal">
<!--</svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="#ffffff" width="32px" height="32px">-->
<img src="pics/<%= u.getProfile()%>" alt="User Icon" class="mx-1" style="width: 20px; height: 20px;border-radius: 50px;background: white">
 <%= u.getName() %></a>
                           <a href="logoutservlet" class=" po2 btn btn-success text-dark "  type="submit">Logout</a> 
                           
                     <!--</div>-->
                     <!--</li>-->
                    
                <!--</ul>-->
                
    
                
                
                
                
                
            </div>
        </div>
    </nav>








<%
}
        
        %>
        
        
        
        
         
         
         <h1 style="margin-top: 120px;margin-left: 100px;color: #00BF85" > <%= p.getPtitle() %></h1>
         <p class="mx-5 my-4"><%= p.getPcontent() %></p>
         <img class="my-4 "  style=" margin-left: 250px;height: 406px;width: 760px"src="Blog_pics/<%= p.getPpic()%>"  >
         <h1  class="my-4"style="color: #00BF85;margin-left: 100px;">Code</h1>
         <pre class="my-2 " style="margin-left: 250px;">
<code style="my-3"> <%= p.getPcode()%>   </code></pre>
         
         
         
         
    </body>
</html>
