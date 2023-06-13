<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

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
</head>

<body data-spy="scroll" data-bs-target="#navbarSupportedContent">




    <!-- navbar -->

    <%@include file="Navbar.jsp" %>
    <!-- viedo -->
  
     <div class="mid " style="background-color:black;margin-top: 2rem">
        <video autoplay muted loop>
            <source class="embed-responsive" src="Source/1.mp4">

        </video>

         <div class="hero text-center" style="margin-top:10px">
            <h2 class="text-light display-4"style="margin-bottom: -10px" >Welcome to <span style="color: #00bf85;">Geekly</span> </h2> 
            <br>
            <!--<h2>Learn </h2>--> 
            <!--<span>Learn</span> <h3 id="changing-sentence" style="color: whitesmoke"> </h3>-->

            <h2> <span style="color: whitesmoke">Learn</span> <span id="typing-container" style="color: #00bf85;"></span></h2> 
<script>
    
		const words = ["DSA", "Java", "JavaScript", "Python","Machine learning","Web Development","Data Science"];
		let currentWordIndex = 0;
		let currentCharacterIndex = 0;

		function typeWord() {
			const wordElement = document.getElementById("typing-container");
			const currentWord = words[currentWordIndex];
			const text = currentWord.slice(0, currentCharacterIndex + 1);
			wordElement.textContent = text;

			if (currentCharacterIndex === currentWord.length - 1) {
				setTimeout(eraseWord, 1000);
			} else {
				currentCharacterIndex++;
				setTimeout(typeWord, 100);
			}
		}

		function eraseWord() {
			const wordElement = document.getElementById("typing-container");
			const currentWord = words[currentWordIndex];
			const text = currentWord.slice(0, currentCharacterIndex);
			wordElement.textContent = text;

			if (currentCharacterIndex === 0) {
				currentWordIndex++;
				if (currentWordIndex >= words.length) {
					currentWordIndex = 0;
				}
				setTimeout(typeWord, 500);
			} else {
				currentCharacterIndex--;
				setTimeout(eraseWord, 100);
			}
		}

		typeWord();
	</script>

            <p class="text-light mx-auto ">Geekly is a free blogging website that offers high-quality coding content. Join our community today and take your coding skills to the next level!.Register for free by clicking on below sign up button.</p>
           
            <div style="display: flex;justify-content: center">
            <a href="Signup.jsp" class=" text-dark">Signup</a>
            <a href="#" class=" text-dark mx-3">Login</a>
            </div>
        </div>
    </div>




  
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
  

    <!-- Footer -->
    <footer class="page-footer font-small stylish-color-dark pt-4 text-light">

        <!-- Footer Links -->
        <div class="container text-center text-md-left">

            <!-- Grid row -->
            <div class="row">

                <!-- Grid column -->
                <div class="col-md-4 mx-auto">

                    <!-- Content -->
                    <h5 class="font-weight-bold text-uppercase mt-3 mb-4">Footer Content</h5>
                    <p>Here you can use rows and columns to organize your footer content. Lorem ipsum dolor sit amet,
                        consectetur
                        adipisicing elit.</p>

                </div>
                <!-- Grid column -->

                <hr class="clearfix w-100 d-md-none">

                <!-- Grid column -->
                <div class="col-md-2 mx-auto">

                    <!-- Links -->
                    <h5 class="font-weight-bold text-uppercase mt-3 mb-4">Links</h5>

                    <ul class="list-unstyled">
                        <li>
                            <a href="#!">Link 1</a>
                        </li>
                        <li>
                            <a href="#!">Link 2</a>
                        </li>
                        <li>
                            <a href="#!">Link 3</a>
                        </li>
                        <li>
                            <a href="#!">Link 4</a>
                        </li>
                    </ul>

                </div>
                <!-- Grid column -->

                <hr class="clearfix w-100 d-md-none">

                <!-- Grid column -->
                <div class="col-md-2 mx-auto">

                    <!-- Links -->
                    <h5 class="font-weight-bold text-uppercase mt-3 mb-4">Links</h5>

                    <ul class="list-unstyled">
                        <li>
                            <a href="#!">Link 1</a>
                        </li>
                        <li>
                            <a href="#!">Link 2</a>
                        </li>
                        <li>
                            <a href="#!">Link 3</a>
                        </li>
                        <li>
                            <a href="#!">Link 4</a>
                        </li>
                    </ul>

                </div>
                <!-- Grid column -->

                <hr class="clearfix w-100 d-md-none">

                <!-- Grid column -->
                <div class="col-md-2 mx-auto">

                    <!-- Links -->
                    <h5 class="font-weight-bold text-uppercase mt-3 mb-4">Links</h5>

                    <ul class="list-unstyled">
                        <li>
                            <a href="#!">Link 1</a>
                        </li>
                        <li>
                            <a href="#!">Link 2</a>
                        </li>
                        <li>
                            <a href="#!">Link 3</a>
                        </li>
                        <li>
                            <a href="#!">Link 4</a>
                        </li>
                    </ul>

                </div>
                <!-- Grid column -->

            </div>
            <!-- Grid row -->
            <!-- Footer -->
            <footer class="page-footer font-small unique-color-dark pt-4">

                <!-- Footer Elements -->
                <div class="container">

                    <!-- Call to action -->
                    <ul class="list-unstyled list-inline text-center py-2">
                        <li class="list-inline-item">
                            <h5 class="mb-1">Register for free</h5>
                        </li>
                        <li class="list-inline-item">
                            <a href="Signup.jsp" class="btn btn-outline-white btn-rounded">Sign up</a>
                        </li>
                    </ul>
                    <!-- Call to action -->

                </div>
                <!-- Footer Elements -->

                <!-- Copyright -->
                <div class="footer-copyright text-center py-3">© 2020 Copyright:
                    <a href="https://mdbootstrap.com/"> MDBootstrap.com</a>
                </div>
                <!-- Copyright -->

            </footer>
            <!-- Footer -->

        </div>
        <!-- Footer Links -->

    </footer>




    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


    <script>
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
        
        
        
    }
    
    
       $(document).ready(function(){
           
           getPosts(0);

       })
    </script>








    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>



</html>