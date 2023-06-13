<%--   --%>

<%@page import="java.util.List"%>
<%@page import="com.tech.blog.entities.post"%>
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

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Profile-Page</title>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-nCmRdZ8a68+a1zLG2nWnN82xNvfgy/9rnNTXFrAdqqZMWcvnGsV/1q3m3D09G1NxzTtHxMKtL33dPki9A9hZDA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!--<head>-->
  <!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-nCmRdZ8a68+a1zLG2nWnN82xNvfgy/9rnNTXFrAdqqZMWcvnGsV/1q3m3D09G1NxzTtHxMKtL33dPki9A9hZDA==" crossorigin="anonymous" referrerpolicy="no-referrer" />-->
<!--</head>-->
   <script src="https://kit.fontawesome.com/985af11286.js" crossorigin="anonymous"></script>

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
        <!--<h1>Hello World!</h1>-->
      
         <!-- comment -->
          <%--<%= // u.get  %>--%>
     
          <%  response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate"); %>
         
           
           <body>
    <!--<h1>Hello, world!</h1>-->
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
                        <a class="nav-link" style="display: block ruby;" href="post.jsp"  style="">Do-post</a>
                    </li><!--
                    <li class="nav-item">
                        <a class="nav-linpk" href="#sign-up">sign up</a>
                    </li>-->
                     <li class="nav-item">
                        <a class="nav-link" style="display: block ruby;" href="Upload.jsp?user_id=<%= u.getId()  %>"    id="upload" style="">Uploads</a>
                    </li>
                    
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
           Message m =(Message)session.getAttribute("msg");
           if(m!=null){ 
              %>
              
              <div class="alert <%= m.getCssClass() %>" role="alert">
             <%= m.getContent() %>
             </div>

             
              
              <% 
                  session.removeAttribute("msg");
                  }
              

              
              %>
        <!--<i class='fas fa-user-alt' style='font-size:100px;color:red'></i>-->
        
        <!-- Button trigger modal -->
<!--<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Launch demo modal
</button>-->

<!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header" style="background:black;">
          <h5 class="modal-title" style="color:#fff;font-family: cursive;" id="exampleModalLabel"> Geekly</h5>
        <!--<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>-->
      </div>
        
           <div class="container text-center">
                                                                              
              <img src="pics/<%= u.getProfile()%>" style="height:200px;width: 200px;border-radius: 350px;" >
          </div>    
        <div class="modal-body" id="profile-details" >
          
                           
              <h5 class="modal-title"  id="exampleModalLabel">Name:<span  style="color:#00bf85"> <%= u.getName() %> </span>  </h5>    
          
          <hr><!-- comment -->
     <h5 class="modal-title"  id="exampleModalLabel">Email: <span  style="color:#00bf85"> <%= u.getEmail() %> </span>  </h5>   
     <hr><!-- comment -->
               <h5 class="modal-title"  id="exampleModalLabel">Password: <span  style="color:#00bf85"> <%= u.getPassword()%> </span>  </h5>    
     
      </div>
               
               
               <div id="profile-edit" class="text-center" style="display:none;" >
                  <h2>Edit</h2>
                  <form action="editservlet" method="post" enctype="multipart/form-data">
                      <table class="table non" >
                          
                          <tr>
                              <td>Name:</td>
                              <td><input type="text" name="username" value="<%= u.getName() %>">  
                          </tr>
                         
                            <tr>
                              <td>Email:</td>
                              <td><input type="email" name="useremail" value="<%= u.getEmail() %>"> 
                          </tr>
                          
                            <tr >
                              <td>Password:</td>
                              <td><input type="password" name="userpassword" value="<%= u.getPassword() %>">  
                          </tr>
                          
                           <tr >
                              <td>Display picture:</td>
                              <td><input type="file" name="imag" class=""  >  
                          </tr>
                          
                      </table>
                          
                           <button type="submit" class="btn btn-primary mb-3">Save</button>
                          
                  </form>
               </div> 
               
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" id ="edit-profile" class="btn btn-primary">Edit</button>
      </div>
    </div>
  </div>
</div>
                          
                          <main>
                        
                              <div class="d-flex" id="wrapper" style="margin-top:80px;">
    <!-- Sidebar -->
    <div class="bg-light border-right " id="sidebar-wrapper">
        <div class="sidebar-heading" onclick="getPosts(0)"  style="background: white;color:#00bf85;">Topic</div>
        <div class="list-group list-group-flush overflow-auto">
                                                         <%
        PostDB p = new PostDB(Connectionprovide.getCoonection());
        ArrayList<Category> list = p.getCategory();
        for(Category c:list){
        %>
          <!--<option class="dropdown-item"  value="<%= c.getCid() %>" ><%=c.getName()%></option>-->
        <%
      
        %>
        
       
        <a class="list-group-item list-group-item-action bg-light " onclick="getPosts(<%= c.getCid() %>)" style="background: white;color:#00bf85;"><%=c.getName()%></a>
       
               
                    
        

    
          <%
               }
      %>
            
        </div>
    </div>
    <!-- /#sidebar-wrapper 
    <!-- Page Content -->
   
    <!-- /#page-content-wrapper -->
    
        <div class="container-fluid ">
        
            
            <div class="col-md-12">      
                          <div class="container text-center mt-4 " id ="loader"  >
              
                   <span  class="fa fa-refresh fa-spin fa-3x"></span>
                   <br>
                   <h4>Please Wait...</h4>
              </div>
            
                    <div class="container-fluid " id ="post-container">
                 
                        
                    </div>   
            </div>
            </div>
            
            
              
            
            
        </div>
    
   
    
    </div>
</div>
     

                          </main>
               
                          

              
          
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>    
    
    <script>
     
    $(document).ready(function(){
        
        let editstatus = false;
        
        
        $('#edit-profile').click(function(){
              
            
           if(editstatus == false){
            $('#profile-details').hide();
            $('#profile-edit').show();
            $(this).text("Back")
             editstatus = true;
           }
           
           else{
            $('#profile-details').show();
            $('#profile-edit').hide();
            $(this).text("Edit")
             editstatus = false;
           }
           

        
        
    });
})
    
    
     </script>
     
     
     <script>
//$(document).ready(function () {
//            // Send AJAX request
//         
//            });
//        });
//           
    
    function getPosts(catId){
        
                                 $.ajax({
                url: "load_page.jsp",
                data:{cid:catId},
                success: function (data) {
                    console.log(data);
                    $("#loader").hide();
                    $('#post-container').html(data);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.log("AJAX request failed: " + errorThrown);
                }
            
        })
        
        
        
    };
    
      
    
    
       $(document).ready(function(){
           
          getPosts(0);
           
           

       });
     
     </script>
         <!--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>-->
    </body>
</html>

