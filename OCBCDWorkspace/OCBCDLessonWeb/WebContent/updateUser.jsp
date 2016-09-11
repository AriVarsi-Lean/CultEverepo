<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Hello World 1</title>
	</head>
	
	<body>
	<form action="/OCBCDLessonWeb/UpdateUserEJBServlet">
		
			
		
			<table align="center">
				<tr><td>update user  to database.</td></tr>
				<tr><td> Username: <input type="text" name="username"></td></tr>
				<tr><td>Password : <input type="password" name="password"></td></tr>
				
				<tr><td>Age     :<input type="text" name="age"></td></tr>
				<tr><td>Name    : <input type="text" name="name"></td></tr>
				<tr><td>Surname : <input type="text" name="surname"></td></tr>
				
				<c:if test="{$not empty requestScope.error}">
					<tr><td>Unexpected Error1 : <c:out value="${requestScope.error}" /></td></tr>
				</c:if>
				
				<!--JSTL not playing nicely. If you can figure out why the line below does not work let me know.-->				
				<!--  c:if test='{$!empty greeting}'-->				
				<c:if test='<%=request.getAttribute("updateUser")!= null && !"".equals(request.getAttribute("updateUser")) %>'>
					<tr><td><font color="red"><c:out value="${updateUser}" /></font></td></tr>
					
				</c:if>	
				
				<tr><td><input type="submit"></td></tr>
			</table>
		</form>
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