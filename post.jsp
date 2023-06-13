<%-- 
    Document   : post
    Created on : 07-May-2023, 12:51:27 pm
    Author     : Dell
--%>




<%@page import="java.util.ArrayList"%>
<%@page import="com.tech.blog.entities.Category"%>
<%@page import="com.tech.blog.DB.PostDB"%>
<%@page import="com.tech.blog.helper.Connectionprovide"%>
<%@page import="com.tech.blog.entities.Message"%>
<%@page import="com.tech.blog.entities.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html>

<% 
user  u =  (user) session.getAttribute("currentuser");

if(u==null){
response.sendRedirect("login.jsp");
    }
    
%>
<!DOCTYPE html>
<!--<html>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Profile-Page</title>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-nCmRdZ8a68+a1zLG2nWnN82xNvfgy/9rnNTXFrAdqqZMWcvnGsV/1q3m3D09G1NxzTtHxMKtL33dPki9A9hZDA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <head>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-nCmRdZ8a68+a1zLG2nWnN82xNvfgy/9rnNTXFrAdqqZMWcvnGsV/1q3m3D09G1NxzTtHxMKtL33dPki9A9hZDA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

    <link rel="stylesheet" href="CSS/style.css">
   
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
       </style>
    <body>
        <h1>Hello World!</h1>
        <%= u.getName()  %>
        <br> comment 
         <%= u.getEmail()  %>
         <br>
          <%= u.getPassword()  %>
          <br> comment 
          <%--<%= // u.get  %>--%>
          
          
           <%--<%@include file="Navbar.jsp" %>--%>
           
           <body>
    <h1>Hello, world!</h1>
     <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <div class="container-fluid">

            <a class="navbar-brand" href="#" style="font-family: cursive;">
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
                        <a class="nav-link" style="display: block ruby;" href="profile.jsp"  style="">Do-post</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#sign-up">sign up</a>
                    </li>
                    
                </ul>
                <form class="d-flex">
                     <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"> 
                     <div >
                     <a href="login.jsp" class="  btn-success text-dark" type="submit"> <span class="fa fa-user-plus"></span> <%= u.getName() %> </a>  
                    <a href="login.jsp"style=" " class="btn  btn-success text-dark mx-5" type="submit">Logout</a>
                     </div>
                </form>
                <ul class ="navbar-nav mx-auto">
                    <li> <a href="login.jsp" class="  btn-success text-dark" type="submit"> <span class="fa fa-user-plus"></span> <%= u.getName() %> </a>  </li>
                     <li>
                     <div style="display:flex;flex-direction: row;justify-content: space-;align-items: center">
                     <a   class=" po1 nav-link " style="color:#00bf85;" type="submit"  data-bs-toggle="modal"data-bs-target="#exampleModal" id="#exampleModal">
</svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="#ffffff" width="32px" height="32px">
<img src="pics/<%= u.getProfile()%>" alt="User Icon" class="mx-1" style="width: 20px; height: 20px;border-radius: 50px;background: white">
 <%= u.getName() %></a>
                           <a href="logoutservlet" class=" po2 btn btn-success text-dark "  type="submit">Logout</a> 
                     </div>
                     </li>
                    
                </ul>
                
    
                
                
                
                
                
            </div>
        </div>
    </nav>
    
    </body>
</html>-->

<html lang="en">
<head>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Profile-Page</title>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-nCmRdZ8a68+a1zLG2nWnN82xNvfgy/9rnNTXFrAdqqZMWcvnGsV/1q3m3D09G1NxzTtHxMKtL33dPki9A9hZDA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <head>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-nCmRdZ8a68+a1zLG2nWnN82xNvfgy/9rnNTXFrAdqqZMWcvnGsV/1q3m3D09G1NxzTtHxMKtL33dPki9A9hZDA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

    <link rel="stylesheet" href="CSS/style.css">
   
    </head>
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Open+Sans&display=swap');

*{
    list-style: none;
    text-decoration: none;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Open Sans', sans-serif;
}

body{
    background: #f5f6fa;
}

.wrapper .sidebar{
    background: black;
    position: fixed;
    top: 0;
    left: 0;
    width: 225px;
    height: 100%;
    padding: 20px 0;
    transition: all 0.5s ease;
}
.wrapper .sidebar .profile{
    margin-bottom: 30px;
    text-align: center;
}

.wrapper .sidebar .profile img{
    display: block;
    width: 100px;
    height: 100px;
    border-radius: 50%;
    margin: 0 auto;
}

.wrapper .sidebar .profile h3{
    color: #ffffff;
    margin: 10px 0 5px;
}

.wrapper .sidebar .profile p{
    color: rgb(206, 240, 253);
    font-size: 14px;
}



.wrapper .sidebar ul li a{
    display: block;
    list-style: none;
    padding: 13px 30px;
    /*border-bottom: 1px solid #10558d;*/
    color: rgb(241, 237, 237);
    font-size: 16px;
    position: relative;
    text-decoration: none;
}



.btn:hover{
    color: black;
    background: whitesmoke;
}
    </style>
</head>
<body>
        <%  response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate"); %>
    <div class="wrapper">
        <!--Top menu -->
        <div class="sidebar">
            <a class="navbar-brand mx-3" href="#" style="font-family: cursive;color: whitesmoke;margin-right: 10px;">
                                            <image src="Source/810393-removebg-preview.png" style="height: 8vh;">
                Geekly</a>
            
            <div class="profile my-4">
                <img src="pics/<%= u.getProfile()%>" alt="profile_picture">
                <h3><%= u.getName() %></h3>
                <!--<p>Designer</p>-->
            </div>
                
                <ul>
              
                    <li style="list-style: none;" class="nav-item">
                        <a href="#" >
                      
                            <span class="item "> <a href="profile.jsp">Dashboard</a></span>
                    </a>
                </li>
<!--                <li style="list-style: none;">
                    <a href="#">
                       
                        <span class="item">People</span>
                    </a>
                </li>-->
               
            </ul>
                
        </div>
               
    </div>
                
                <h2 style="color: black;margin-left: 250px;margin-top: 12px;font-family:serif">Write Blog</h2>
                
                <form action="AddPostServlet" id="Add-post-form" method="post" style="margin-left: 250px;margin-top: 12px;" >
                    
<!--<div class="dropdown show my-4">-->
  <!--<a class=" btn dropdown-toggle" href="#" role="button" id="dropdownMenuLink" selected disabled data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">-->
  <!--<select class="btn" name="cid" required >-->
  
<!--  <select required>
  <option value="">-- Please select an option --</option>
  <option value="option1">Option 1</option>
  <option value="option2">Option 2</option>
  <option value="option3">Option 3</option>
</select>-->
  <select required class="btn" name="cid">
      <!--<select required>-->
      <option value="" >  Select Category</option>
   
  <!--</a>-->
    <!-- comment -->
  <%
        PostDB p = new PostDB(Connectionprovide.getCoonection());
        ArrayList<Category> list = p.getCategory();
        for(Category c:list){
        %>
          <option class="dropdown-item"  value="<%= c.getCid() %>" ><%=c.getName()%></option>
<!--          <option><%=c.getName()%></option>-->
          <%
               }
      %>
  
  </select>
<!--</div>-->
                    
                    <div class="form-group my-4">
                        <input type="text" placeholder="Post Title" required name="ptitle" style="width:20vw;" class="form-control">
                    </div>
      
      
                   <div class="form-group my-4">
                        <!--<input type="text" placeholder="Post Title"  style="width:20vw;" class="form-control">-->
                        <textarea class="from-control" placeholder="Content" required name="pcontent" style="height: 300px;width: 50vw;border-radius: 6px;border-color:#00BF85;list-style: none"></textarea>
                    </div>
                 

                 <div class="form-group my-4">
                        <!--<input type="text" placeholder="Post Title"  style="width:20vw;" class="form-control">-->
                        <textarea class="from-control" placeholder="Code" name="pcode" style="height: 300px;width: 50vw;border-radius: 6px;border-color:#00BF85;list-style: none"></textarea>
                    </div>
                    


                 <div class="form-group my-4">
                        <!--<input type="text" placeholder="Post Title"  style="width:20vw;" class="form-control">-->
                        <input type="file" name="ppic" >
                    </div>

                  <div class="container my-4 text-center">
                      <button class="btn"id="submit" type="submit">Save</button> 
                    </div>
                    
                </form>
                <script
src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

      <script>
          
           $(document).ready(function () {
//                console.log("loaded........")
                $('#Add-post-form').on('submit', function (event){
                    event.preventDefault();
                    let form = new FormData(this);
               
//                    
//                    //send register servlet:
                    $.ajax({
                        url: "AddPostServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data)
//                            $("#submit").show();
//                            $("#loader").hide();
                            if (data.trim() == 'done')
                            {
                                swal("Blog posted successfuly...")
                                        .then((value) => {
                                            window.location = "profile.jsp"
                                        });
                            } 
                            
                            
                                
                            else
                            {
                                swal(data);
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
//                            $("#submit").show();
//                            $("#loader").hide();
                            swal("something went wrong..try again");
                        },
                        processData: false,
                        contentType: false
                    });
                });
            });


          
      </script>
<!--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>-->
<!--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
-->

</body>
</html>