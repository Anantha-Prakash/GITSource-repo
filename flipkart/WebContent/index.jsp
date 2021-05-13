<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- Declaration tag -->
<%!
int a=10, b=20;
public int add()
{
	return(a+b);	
}
%>

<!-- Expression tag -->
<%= add()%><br>
Current Date: <%= new java.util.Date() %><br>

<!-- Scriplet tag -->
<%
String user =request.getParameter("user");
String password=request.getParameter("pwd");
out.println(user+" "+password);
%>
</body>
</html>