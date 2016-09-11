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

    <title> Cultural Event</title>
    <link rel="icon" type="image/png" href="images/emergeicon.png" />
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script language="javascript" type="text/javascript">
  function resizeIframe(obj) {
    obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
  }
</script>

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
                <a class="navbar-brand" href="index.jsp"> <img src="images/logo.jpg" class="img-responsive" alt=""> </a>
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
                    <small>by <a href="#">Cultural Crew</a>
                    </small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li class="active">Create Event</li>
                </ol>
            </div>
        </div>
         <!-- Create Event  Form -->
        <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
        <div class="row">
            <div class="col-md-2">
            </div>
            <div class="col-md-8">
                <h3>Create New event</h3>
                <form name="sentMessage" id="contactForm" name= "create" action="/OCBCDLessonWeb/EventServlet" novalidate>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Venue:</label>
                            <input type="text" class="form-control" id="venue" name= "venue"required data-validation-required-message="Please enter your Venue.">
                            <p class="help-block"></p>
                        </div>
                        <div class="controls">
                            <label>City:</label>
                            <input type="text" class="form-control" id="city"  name= "city" required data-validation-required-message="Please enter your city.">
                            <p class="help-block"></p>
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Country:</label>
                            <input type="tel" class="form-control" id="country" name= "country" required data-validation-required-message="Please enter your phone number.">
                        </div>
                    </div>
                     <div class="control-group form-group">
                        <div class="controls">
                            <label>PostCode:</label>
                            <input type="tel" class="form-control" id="postcode" name="postcode" required max-size="6">
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label> Address:</label>
                            <input type="textArea" class="form-control" id="adress" name= "adress" required data-validation-required-message="Please enter your  address.">
                        </div>
                    </div>

                    <div class="container ">
                        <div class='col-md-4'>
                            <div class="control-group form-group">
                                <label> Start Date:</label>
                                <div class='controls input-group date' id='datetimepicker6'>
                                    <input type='text'name="startdate"  class="form-control" />
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class='col-md-4'>
                            <div class="control-group form-group">
                                <label> End Date:</label>
                                <div class='controls input-group date' id='datetimepicker7'>
                                    <input type='text' name="enddate"   class="form-control" />
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>
                        </div>
                   <script type="text/javascript">
                        $(function () {
                            $('#datetimepicker6').datetimepicker();
                            $('#datetimepicker7').datetimepicker({
                                useCurrent: false //Important! See issue #1075
                            });
                            $("#datetimepicker6").on("dp.change", function (e) {
                                $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
                            });
                            $("#datetimepicker7").on("dp.change", function (e) {
                                $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
                            });
                        });
                    </script>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Description:</label>
                            <textarea rows="10" cols="100" class="form-control" name="Description" 
                            required data-validation-required-message="Please enter your description" maxlength="999" style="resize:none"></textarea>
                        </div>
                    </div>
                    <c:if test="{$not empty requestScope.error}">
					<tr><td>Unexpected Error1 : <c:out value="${requestScope.error}" /></td></tr>
				</c:if>
				
				<!--JSTL not playing nicely. If you can figure out why the line below does not work let me know.-->				
				<!--  c:if test='{$!empty greeting}'-->				
				<c:if test='<%=request.getAttribute("createEvent")!= null && !"".equals(request.getAttribute("createEvent")) %>'>
					<div class="control-group form-group">
                        <div class="controls"><font color="red"><c:out value="${createEvent}" /></font>
                        </div>
					</div>
					
				</c:if>	
                    <div id="success"></div>
                    <!-- For success/fail messages -->
                    <input type="submit" class="btn btn-primary" value ="Upload Event">
                </form>
            </div>

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
         </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
