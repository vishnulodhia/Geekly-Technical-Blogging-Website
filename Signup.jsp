
<%--<%@page type="text/html" %>--%>
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

    <!-- <link rel="stylesheet" href="../css/style.css"> -->
    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="css/mobile-style.css">
 <!--<link rel="stylesheet" href="CSS/style.css">-->
</head>
<style>
    *{
        margin: 0px;
        padding: 0px;
    }
    


    
    body{
	background: black;
	padding-top: 25vh;
        
}
/* set form background colour*/
form{ 
	background: #fff;
          height: 20vh;
}
/* set padding and size of th form */

.form-container{
	border-radius: 10px;
	padding: 20px;
        /*margin-top: -25px;*/      
}

 button:hover{
   background: black;
   color: white;
}

      








</style>
<body>


  <%@include file="Navbar.jsp" %>
   
  



  <section class="container-fluid">
 
         
    
    <section class="row justify-content-center ">
      <section class="col-12 col-sm-6 col-md-4">
          <div>
              <form class="form-container card " id="reg-form"  style="margin-top:-40px;height: 450px" action ="userservlet" method="post">
            
        <div class="form-group ">
          <h4 class="text-center font-weight-bold">Signup</h4>
          <label for="InputEmail1">Username</label>
          <input type="text" name="username" class="form-control my-2" required id="Input" aria-describeby="emailHelp" placeholder="Userename">
        </div>
              <div class="form-group my-3">
          <label for="InputPassword1">Email </label>
          <input type="email" name="useremail" class="form-control my-2" required id="Input" placeholder="Email">
        </div>
        <div class="form-group">
          <label for="InputPassword1 my-3">Password</label>
          <input type="password"  name="userpassword" class="form-control my-2" required id="Input" placeholder="Password">
        </div>
                  
            <div class="form-group form-check">
                <input name="check" required type="checkbox" class="form-check-input " id="exampleCheck1">
    <label class="form-check-label"  for="exampleCheck1">Accept terms and condition</label>
  </div>
              <br>
              
              <div class="container text-center " id ="loader" style="display:none" >
              
                   <span  class="fa fa-refresh fa-spin fa-3x"></span>
                   <br>
                   <h4>Please Wait...</h4>
              </div>
             
              <button type="submit" id="submit" class="btn  btn-block mt-4">Submit</button>
       
        </form>
              </div>
      </section>
    </section>
  </section>
 


</div>

 <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>-->
        <!--<script src="js/myjs.js" type="text/javascript"></script>-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script>
            
            
//            console.log("hiki")
            
            
            
//            $(document).ready(function () {
//                console.log("loaded........");
//
//              
//               
//                $('#reg-form').on('submit', function (event) {
//                    
//                    event.preventDefault();
//                    let form = new FormData(this);
//                    $("#submit").hide();
//                    $("#loader").show();
//                    
//                    
//                    $.ajax({
//                        url: "userservlet",
//                        type: 'POST',
//                        data: form,
//                        success: function (data, textStatus, jqXHR) {
//                            console.log(data)
//                            $("#submit").show();
//                            $("#loader").hide();
//                            
//                            if(data.trim() == "done"){
//                               swal("Register successfully")
//                                       .then((value)=>{
//                                           window.location = "login.jsp";
//                               });
//                               }
//                               else{
//                                   swal(data);
//                               }
//                               
//                            }
//                            
//                            
//                          
//                        },
//                        error: function (jqXHR, textStatus, errorThrown) {
//                            
//                            $("#submit").show();
//                            $("#loader").hide();
//                            swal("something went wrong..try again");
//                        },
//                        processData: false,
//                        contentType: false
//                    });
//                    
//                    
//                            
//                });
//            });
            
                //send register servlet:
//                    let myForm = document.getElementById("form");
//                    let inputs = myForm.querySelectorAll("#Input");
//  
//                 // Loop through all input elements and check if they have a value
//               for (let i = 0; i < inputs.length; i++) {
//              if (inputs[i].value === "") {
//      // If an input element does not have a value, prevent the form from submitting
//                  swal("Dont skip any filled!");
//                  return false;
//                 
//                  }
//                    }
//                    
//                    
//    
              $(document).ready(function () {
                console.log("loaded........")
                $('#reg-form').on('submit', function (event) {
                    event.preventDefault();
                    let form = new FormData(this);
                    $("#submit").hide();
                    $("#loader").show();
                    
                    
                    let myForm = document.getElementById("reg-form");
                    let inputs = myForm.querySelectorAll("#Input");
                    
//                   if(document.getElementsByName("userpassword").values().length > 8){
//                       swal("set Password less than 8 word");
//                         return false; 
//                   }
//                   let password = document.getElementsByName("userpassword").toString();

                  let password = document.getElementsByName("userpassword");
                  
                console.log(password[0].toString().value)    
               console.log(password[0].toString().length);
                 // Loop through all input elements and check if they have a value
                 console.log(typeof(password));
                 if(password[0].value.toString().length > 8){
                      $("#submit").show();
                      $("#loader").hide();
                       swal("set Password less than 8 letter");
                         return false; 
                   }
                     
                 
                 
               for (let i = 0; i < inputs.length; i++) {
              if (inputs[i].value === "") {
      // If an input element does not have a value, prevent the form from submitting
                    $("#submit").show();
                    $("#loader").hide();
                  swal("Dont skip any filled!");
                  return false;
                 
                  }
                    }
                    
                    
                    
                    //send register servlet:
                    $.ajax({
                        url: "userservlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data)
                            $("#submit").show();
                            $("#loader").hide();
                            if (data.trim() === 'done')
                            {
                                swal("Registered successfully..We are going to redirect to login page")
                                        .then((value) => {
                                            window.location = "login.jsp"
                                        });
                            } 
                            
                            
                                
                            else
                            {
                                swal(data);
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            $("#submit").show();
                            $("#loader").hide();
                            swal("something went wrong..try again");
                        },
                        processData: false,
                        contentType: false
                    });
                });
            });




        </script>

 
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

                
                    

</body>
</html>