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
		<form action="/OCBCDLessonWeb/CreateUserEJBServlet">
		
			<table align="center">
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
	</body>
</html>