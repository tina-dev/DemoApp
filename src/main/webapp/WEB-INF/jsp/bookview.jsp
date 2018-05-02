<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>Book info:</h2>
		<table>
			<tr>
			    <td>Title: </td>
			    <td>${book.title}</td>
		  	</tr>
		  	<tr>
			    <td>Author: </td>
			    <td>${book.author}</td>
		  	</tr>
		  	<tr>
			    <td>ISBN: </td>
			    <td>${book.isbn}</td>
		  	</tr>
		  	<tr>
			    <td>Description: </td>
		        <c:choose>
				    <c:when test="${empty book.description}">
				        <td>No description available</td>
				    </c:when>    
				    <c:otherwise>
				        <td>${book.description}</td>
				    </c:otherwise>
				</c:choose>
		  	</tr>
		</table>
	</body>
</html>