<%-- 
    Document   : Upload.jsp
    Created on : 28-May-2023, 5:43:31 pm
    Author     : Dell
--%>

<%@page import="java.util.List"%>
<%@page import="com.tech.blog.DB.PostDB"%>
<%@page import="com.tech.blog.entities.post"%>
<%@page import="com.tech.blog.helper.Connectionprovide"%>
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
     <%  response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate"); %>
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
         <%  response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate"); %>
        
        
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
                        <a class="nav-link" href="#sign-up">sign up</a>
                    </li>-->
                    
                    <%
                        if(u==null)
                      response.sendRedirect("index.jsp");
                        %>
                     <li class="nav-item">
                        <a class="nav-link" style="display: block ruby;"  href="Upload.jsp?user_id=<%= u.getId()%>"  style="">Uploads</a>
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

                           <a href="logoutservlet" class=" po2 btn btn-success text-dark "  type="submit">Logout</a> 
                           
                     <!--</div>-->
                     <!--</li>-->
                    
                <!--</ul>-->
                
    
                
                
                
                
                
            </div>
        </div>
    </nav>
                           
                           
        <div class="container-fluid ">
        
            
            <div class="col-md-12" style="margin-top:100px;" >      
          
            
                    <div class="container-fluid " id ="post-container">
                 
                        <div class="mt-4">
               
                <div class="row">
                    
                    <%
                        
                    int cid = Integer.parseInt(request.getParameter("user_id"));
                    
                    PostDB d = new PostDB(Connectionprovide.getCoonection());
                    List<post> posts ;
                    
                     posts = d.getPostByuid(cid);
                   
                    
                    if(posts.size()==0){
                    out.println("<h3 style= 'text-align:center;margin-top:10px;'>No Post in this category..</h3>");
                        return;
                        }
                    
                     for(post P : posts){
                     
                     
                     %>
                     <div class="col-md-4  my-3 ">
                       
                         <div class="card">
                         <div class="row">
                         <div class="col-md-6">    
                         <img class="card-img-top" style="height:255px" src="Blog_pics/<%= P.getPpic()%>" >
                         </div>
                         <div class="card-body col-md-4 mt-3" >
                             
                             <!--<b><%= P.getPpic() %></b>-->
                             <!--<img src="pics/"+<%= P.getPpic()%>+" >-->
                              <!--<img class="card-img-top" src="Blog_pics/<%= P.getPpic()%>" >-->
                             <!--<div class="row" >-->
                                 
                                 
<!--                                 <div class="col-md-3">
                             <img src="Blog_pics/<%= P.getPpic()%>" style="width: 100px;height: 100px;">
                             </div>-->
                             
                             <!--<div class="col-md-9 " style="margin: 0px,200px;">-->
                                  
                          <!-- comment -->
                          <h5 style="font-weight:bold;height:50px"><%= P.getPtitle()%></h5>
                          <!--<p><%= d.discat( P.getCid()) %> </p>-->
                           <br>
                          <strong class="d-inline-block mb-2 text-success"  style="height:50px"> <%= d.Namcat( P.getCid()) %>   </strong>
                          <br><!-- comment -->
                          <input type="hidden" name="pid" value="<%= P.getPid()%>">
                          <a class="btn" style="margin-left: -10px;"  onclick="deletePosts( <%= P.getPid() %>);reloadPage()" >Delete</a>
                          <br><!-- 0 -->
                          <div class="row">
                              <a class="col-md-6 my-2" style="height: 10px;text-decoration:none;color:#00bf85" href=""><i class="fa fa-thumbs-o-up"></i><span style=''>10</span></a>
                              <a class="col-md-6 my-2" style="height: 10px;text-decoration:none;color:#00bf85" href=""><i class="fa fa-commenting-o"></i><span style=''>10</span></a>
                          </div>                             
                             <!--</div>-->
                             
                             <!--</div>-->
                             
                         </div>
                         
                     </div>
                          </div>
                          
                      </div>
                     
                         <!--<div class="container">-->
<!--  <div class="card">
    <div class="card-header">
      <img src="https://c0.wallpaperflare.com/preview/483/210/436/car-green-4x4-jeep.jpg" alt="rover" />
    </div>
    <div class="card-body">
      <span class="tag tag-teal">Technology</span>
      <h4>
        Why is the Tesla Cybertruck designed the way it
        is?
      </h4>
      <p>
        An exploration into the truck's polarising design
      </p>
      <div class="user">
        <img src="https://yt3.ggpht.com/a/AGF-l7-0J1G0Ue0mcZMw-99kMeVuBmRxiPjyvIYONg=s900-c-k-c0xffffffff-no-rj-mo" alt="user" />
        <div class="user-info">
          <h5>July Dec</h5>
          <small>2h ago</small>
        </div>
      </div>
    </div
  </div>
                         </div>-->
                         
                         
                         
                     <%
                     
                        }
                    
                    %>
                    
                    
                    
                    
                </div>
                    
                    
                    
                    
                    
                    
                    
                </div>

                    </div>   
            </div>
            </div>
            
                           
                 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>    
                           
                           
                           
                    <script >
                        
          function deletePosts(pId){
        
                                 $.ajax({
                url: "deletepost.jsp",
                data:{pid:pId},
                success: function (data) {
                    console.log(data);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.log("AJAX request failed: " + errorThrown);
                }
            
        });
        
        
        
    };
        
            $(document).ready(function(){
           
         
           
           

       });
        
                    </script>    
                    
                    <script>
function reloadPage() {
    location.reload();
}
</script>
    </body>
    
    
</html>
