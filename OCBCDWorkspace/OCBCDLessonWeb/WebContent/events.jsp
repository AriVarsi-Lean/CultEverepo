<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="ocbcd.helloworld.Models"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cultural Crew Template</title>
    <link rel="icon" type="image/png" href="images/emergeicon.png" />
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">


</head>

<body >
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
                <a class="navbar-brand" href="index.jsp"> <img src="images/logo.jpg" alt=""> </a>
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

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Events
                    <small>Home</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li class="active"><a href="createEvent.jsp">Create new Event</a></li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <div class="row" >

                   <!-- Third Blog Post -->
                <h2>
                    <a href="#">Kaprivi Fish Ceremony</a>
                </h2>
                <p class="lead">
                    by <a href="userlist.jsp">Erasi Kasa</a>
                </p>
                <p><i class="fa fa-clock-o"></i> Starts on September 15, 2016 </p>
                <hr>
                <a href="eventpost.jsp">
                    <img class="img-responsive img-hover" src="images/culture9.jpg" alt="">
                </a>
                <hr>
                <p>It is back aggain. The fish festival of Kaprivi . Celebrating the environment and social ways along the Zambezi basin</p>
                <a class="btn btn-primary" href="eventpost.jsp">Read More <i class="fa fa-angle-right"></i></a>

                <hr>

                <!-- Third Blog Post -->
                <h2>
                    <a href="#">San People Convention</a>
                </h2>
                <p class="lead">
                    by <a href="userlist.jsp">Erasi Kasa</a>
                </p>
                <p><i class="fa fa-clock-o"></i> Starts on September 28, 2016 </p>
                <hr>
                <a href="eventpost.jsp">
                    <img class="img-responsive img-hover" src="images/culture6.jpg" alt="">
                </a>
                <hr>
                <p> We get to look at how the San people have acclimatised to a changing environment. Fitting into the working environment and social ways</p>
                <a class="btn btn-primary" href="eventpost.jsp">Read More <i class="fa fa-angle-right"></i></a>

                <hr>

        <c:import url="/EventListServlet" />
				<c:forEach var="events" items="${requestScope.names1}" varStatus="i">
						
						
		            <!-- Events Entries Column -->
		            <div class="col-md-8">
		                
		                 <!-- Third Events Post -->
		                <h2>
		                    <a href="#">${events.getEventVenue}</a>
		                </h2>
		                <p class="lead">
		                    by <a href="index.jsp">Cultural Crew</a>
		                </p>
		                <p><i class="fa fa-clock-o"></i> Start Date on ${events.getEventStartdate}</p>
		                 <p><i class="fa fa-clock-o"></i> Ending  Date on ${events.getEventEnddate}</p>
		                <hr>
		                <a href="eventpost.jsp ">
		                    <img class="img-responsive img-hover" src="http://placehold.it/900x300" alt="">
		                </a>
		                <hr>
		                <p>${events.getEventDescription}</p>
		                <a class="btn btn-primary" href="eventpost.jsp?id=1">Read More <i class="fa fa-angle-right"></i></a>
		
		                <hr>
	                </div>
	              
				</c:forEach>
               
        </div>
        <!-- /.row -->
</div>
        <hr>

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
                        <a href="ktasolutions.co.za"> website by &copy;KTA Solutions </a>
                    </p>
                </div>
            </div>
            </div>
        </footer>

    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
