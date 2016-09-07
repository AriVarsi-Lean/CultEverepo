<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Display Names </title>
	</head>
	
	<body>
		<form action="/OCBCDLessonWeb/NamelistServlet">
		
			<table align="center">
				
				<c:if test="{$not empty requestScope.error}">
					<tr><td>Unexpected Error1 : <c:out value="${requestScope.error}" /></td></tr>
				</c:if>
				
				<!--JSTL not playing nicely. If you can figure out why the line below does not work let me know.-->				
				<!--  c:if test='{$!empty greeting}'-->				
					<c:forEach var="jobs" items="${names1}" varStatus="i">
					  
					  <table>
					    <tr class="tr1">
					        <td>${jobs}</td>
					    </tr>
					  </table>
					</c:forEach>	
				
				<tr><td>Submit your name for a custom greeting</td></tr>
				
				<tr><td><input type="submit" value = "Click here to display list"></td></tr>
			</table>
		</form>
		
	</body>
</html>