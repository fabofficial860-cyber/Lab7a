<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>

<%
String name = request.getParameter("uname");

// store in session
session.setAttribute("user", name);

// set session expiry (60 seconds)
session.setMaxInactiveInterval(60);
%>

<h2>Welcome <%= name %>!</h2>

<p>Session has started...</p>
<p>Your name is stored in session.</p>
<p>Session expiry time is set to 1 minute.</p>

<p>
Click below within 1 minute:
</p>

<a href="second.jsp">Go to next page</a>

</body>
</html>