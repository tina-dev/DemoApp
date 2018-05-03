<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Reading List</title>
	</head>
	<body>
		<h2>Your Reading List</h2>
		<c:if test="${empty books}">
			<p>You have no books in your book list</p>
		</c:if>
		<c:forEach items="${books}" var="book">
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
	    	<form action = "/readinglist/${book.isbn}" method = "GET">
		    	<input type = "submit" value = "VIEW"></input>
		    </form>
	     	<form action = "/readinglist/edit/${book.isbn}" method = "GET">
		    	<input type="submit" value = "EDIT"></input>
		    </form>
	     	<form action = "/readinglist/delete/${book.isbn}" method = "POST">
		    	<input type="submit" value = "DELETE"></input>
		    </form>
		    <hr>
		</c:forEach>
		<h3>Add a book</h3>
		<form method="POST">
		    <label id="title">Title:</label>
		    <input type="text" name="title" size="50"></input><br/>
		    <label id="author">Author:</label>
		    <input type="text" name="author" size="50"></input><br/>
		    <label id="isbn">ISBN:</label>
		    <input type="text" name="isbn" size="15"></input><br/>
		    <label id="description">Description:</label><br/>
		    <textarea name="description" cols="80" rows="5"></textarea><br/>
		    <input type="submit" name = "Submit"></input>
		</form>
	</body>
</html>