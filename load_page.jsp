            <%@page import="com.tech.blog.DB.PostDB"%>
<%@page import="java.util.List"%>
<%@page import="com.tech.blog.entities.post"%>
<%@page import="com.tech.blog.helper.Connectionprovide"%>


<html>
<head>

   <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>dolla</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/985af11286.js" crossorigin="anonymous"></script>
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

    <!-- <link rel="stylesheet" href="../css/style.css"> -->
    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="css/mobile-style.css">
 <!--<link rel="stylesheet" href="CSS/style.css">-->
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

<div class="mt-4">
               
                <div class="row">
                    
                    <%
                        
                    int cid = Integer.parseInt(request.getParameter("cid"));
                    
                    PostDB d = new PostDB(Connectionprovide.getCoonection());
                    List<post> posts ;
                    if(cid==0)
                     posts = d.getAllPsot();
                   else
                    posts =d.getPostBycid(cid);
                    
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
                          
                          <a class="btn" style="margin-left: -10px;" href="show_blog.jsp?post_id=<%= P.getPid()%>">Read More..</a>
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
                    
                    
                    
</body>

</html>