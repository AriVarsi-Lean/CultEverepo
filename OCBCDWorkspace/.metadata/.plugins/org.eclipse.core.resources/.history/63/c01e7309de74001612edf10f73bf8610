<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Emerge -Home</title>
    <link rel="icon" type="image/png" href="images/emergeicon.png" />
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="https://ssl.gstatic.com/docs/script/css/add-ons.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

    <!-- Navigation -->
    <nav style="font-size:20;font-family: Arial, Helvetica, sans-serif;" class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp"> <img src="images/logo.jpg" alt="" width="250" height="auto"> </a>
            </div>
            <br> <br>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="about.jsp">About</a>
                    </li>

                    <li>
                        <a href="contact.jsp">Contact</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Cultural Events <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="">Mariental</a>
                            </li>
                            <li>
                                <a href="">Gobabis</a>
                            </li>
                            <li>
                                <a href="">Windhoek</a>
                            </li>
                            <li>
                                <a href="">Walvis Bay</a>
                            </li>
                            <li>
                                <a href="">Keetmanshop</a>
                            </li>
                            <li>
                                <a href="">Oshakati</a>
                            </li>
                            <li>
                                <a href="">Tsumeb</a>
                            </li>
                        </ul>
                    </li>
                   
                    <li>
                        <a href="events.jsp">Upcoming Events</a>
                    </li>
                    <li>
                        <a href="signin.jsp">Sign in </a>
                    </li>

                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    
    <br>    <br> <br> 

      <div>
                            
                    <!-- Include the Google CSS package -->
                  
                    
                    <!-- You can also include your own CSS styles -->
                    <style>
                    form { margin: 40px auto; }
                    input { display:inline-block; margin: 20px; }
                    </style>
                    
                    <script>
                            // The function will be called after the form is submitted
                            function uploadFile() {
                                document.getElementById('uploadFile').value = "Uploading File..";
                                google.script.run
                                .withSuccessHandler(fileUploaded)
                                .uploadFiles(document.getElementById("labnol"));
                                return false;
                            }
                            
                            // This function will be called after the Google Script has executed
                            function fileUploaded(status) {
                                document.getElementById('labnol').style.display = 'none';
                                document.getElementById('output').innerHTML = status;
                            }
                    
                    </script>
                    
                    <!-- This is the HTML form -->
                    <form id="labnol">
                    
                    <!-- Text input fields -->
                    <input type="text" name="myName" placeholder="Your name..">
                    <input type="email" name="myEmail" placeholder="Your email..">
                    
                    <!-- File input filed -->
                    <input type="file" name="myFile">
                    
                    <!-- The submit button. It calls the server side function uploadfiles() on click -->
                    <input type="submit" id="uploadFile" value="Upload File"  onclick="this.value='Uploading..';uploadFile();">
                    
                    </form>
                    
                    <!-- Here the results of the form submission will be displayed -->
                    <div id="output"></div>
                    
      </div>

        <hr>
        <br>

        <!-- Footer -->
        <footer>
            <div class="container">
				<div class="row">
					
					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="simplenav">
							<a href="#">Home</a> | 
								<a href="">Events</a> |
								<a href="">Culture groups</a> |
								<a href="">Contact us</a> |
								<b><a href="">Sign up/Sign in</a></b>
							</p>
						</div>
					</div>

					<div class="col-md-6 widget">
						
                   
                    <p class="text-right">
                         <<a href=""> Website by  &copy;Erasi Kasa</a>
                    </p>
                </div>
            </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->
    <script>
        $(document).ready(function() {
        
        $("#owl-demo").owlCarousel({
        
            autoPlay: 3000, //Set AutoPlay to 3 seconds
        
            items : 4,
            itemsDesktop : [1199,3],
            itemsDesktopSmall : [979,3]
        
        });
        
        });
         </script>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>
