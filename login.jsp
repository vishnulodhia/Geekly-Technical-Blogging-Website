
<%@page import="com.tech.blog.entities.Message"%>
<%--<%@page type="text/html" %>--%>
<html>
<head>

   <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
 <link rel="stylesheet" href="CSS/style.css">
</head>
<style>
    
    
    
    body{
	background: black;
	padding-top: 25vh;	
}
/* set form background colour*/
form{
	background: #fff;
}
/* set padding and size of th form */
.form-container{
	border-radius: 10px;
	padding: 30px;
}

 button:hover{
   background: black;
   color: white;
}

      
    .mid{
    width: 100%;
    height: 100vh;
    overflow: hidden;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    }
    

    video{
 object-fit: cover;
width: 100%;
height: 100%;
pointer-events: none;
position: absolute;
top: 50%;
left: 50%;
transform: translate(-50%,-50%)
    }
</style>
<body>
  <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<!-- Login form creation starts-->

 <%@include file="Navbar.jsp" %>
   
 
  
 <!--<div class="mid">-->
<!--  <video autoplay muted loop>
            <source class="embed-responsive" src="Source/1.mp4">

        </video> -->


 <section class="container-fluid"  >
  
   
         
    
    <section class="row justify-content-center">
      <section class="col-12 col-sm-6 col-md-4">
          <form class="form-container card" action="Loginservlet" method="post">
             
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
              
              

              
        <div class="form-group" >
          <h4 class="text-center font-weight-bold"> Login </h4>
          <label for="InputEmail1"  >Email Address</label>
           <input type="email" class="form-control" name="useremail" required id="InputEmail1" aria-describeby="emailHelp" placeholder="Enter email">
        </div>
        <div class="form-group">
          <label for="InputPassword1">Password</label>
          <input type="password" class="form-control" id="InputPassword1"  name="userpassword" required  placeholder="Password">
        </div>
        <button type="submit" class="btn  btn-block ">Submit</button>
        <div class="form-footer mt-3">
          <p> Don't have an account? <a href="Signup.jsp">
                  <span style="color:#00BF85;">Sign Up </span></a></p>
          
        </div>
        </form>
      </section>
    </section>
  </section>

<!--</div>-->
</body>
</html>