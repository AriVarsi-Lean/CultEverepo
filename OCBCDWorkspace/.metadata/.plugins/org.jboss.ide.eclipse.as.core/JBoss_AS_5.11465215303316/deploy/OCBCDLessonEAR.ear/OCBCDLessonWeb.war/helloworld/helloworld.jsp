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
		<form action="/OCBCDLessonWeb/HelloWorldEJBServlet">
		
			<table align="center">
				
				<c:if test="{$not empty requestScope.error}">
					<tr><td>Unexpected Error1 : <c:out value="${requestScope.error}" /></td></tr>
				</c:if>
				
				<!--JSTL not playing nicely. If you can figure out why the line below does not work let me know.-->				
				<!--  c:if test='{$!empty greeting}'-->				
				<c:if test='<%=request.getAttribute("greeting")!= null && !"".equals(request.getAttribute("greeting")) %>'>
					<tr><td><font color="red"><c:out value="${greeting}" /></font></td></tr>
				</c:if>				
				
				<tr><td>Submit your name for a custom greeting</td></tr>
				<tr><td>Your name: <input type="text" name="name"></td></tr>
				<tr><td><input type="submit"></td></tr>
			</table>
		</form>
	</body>
</html>