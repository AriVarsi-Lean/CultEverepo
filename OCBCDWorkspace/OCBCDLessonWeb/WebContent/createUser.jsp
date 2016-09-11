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

    <title>Cultural Crew Events</title>
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
    <script  type="text/javascript">
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
                <a class="navbar-brand" href="index.jsp"> <img src="images/logojpg" alt=""> </a>
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
		<form action="/OCBCDLessonWeb/CreateUserEJBServlet">
		
			<table style="align:center">
				<tr><td>Submit new  user  to database.</td></tr>
				<tr><td> username: <input type="text" name="username"></td></tr>
				<tr><td>Password : <input type="password" name="password"></td></tr>
				<tr><td>Age     :<input type="text" name="age"></td></tr>
				<tr><td>Name    : <input type="text" name="name"></td></tr>
				<tr><td>Surname : <input type="text" name="surname"></td></tr>
				
				<c:if test="{$not empty requestScope.error}">
					<tr><td>Unexpected Error1 : <c:out value="${requestScope.error}" /></td></tr>
				</c:if>
				
				<!--JSTL not playing nicely. If you can figure out why the line below does not work let me know.-->				
				<!--  c:if test='{$!empty greeting}'-->				
				<c:if test='<%=request.getAttribute("createUser")!= null && !"".equals(request.getAttribute("createUser")) %>'>
					<tr><td><font color="red"><c:out value="${createUser}" /></font></td></tr>
					
				</c:if>	
				
				<tr><td><input type="submit"></td></tr>
			</table>
		</form>
		</div>
		</div>
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

      </div>
      <!-- /.container -->

</body>

</html>