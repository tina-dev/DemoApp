<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Edit book</h2>
		<form method="POST">
		    <label id="title">Title:</label>
		    <input type="text" name="title" size="50" value = "${book.title}"></input><br/>
		    <label id="author">Author:</label>
		    <input type="text" name="author" size="50" value = "${book.author}"></input><br/>
		    <label id="isbn">ISBN:</label>
		    <input type="text" name="isbn" size="15" value = "${book.isbn}" disabled></input><br/>
		    <label id="description">Description:</label><br/>
		    <input name="description" cols="80" rows="5" value = "${book.description}"></input><br/>
		    <input type="submit"></input>
		</form>
</body>
</html>