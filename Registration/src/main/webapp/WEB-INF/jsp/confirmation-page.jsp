<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>Your reservation is confirmed successfully. Please, re-check the details.</p>
First name : ${reservation.firstName}<br>
Last name : ${reservation.lastName }<br>
Gender : ${reservation.gender }<br>
Meals : 
<ul>
<c:forEach var="meals" items="${reservation.meals }">
<li>${meals }</li>
</c:forEach>
</ul>
Leaving from :${reservation.cityFrom } <br>
Going To: ${reservation.cityTo }<br>
</body>
</html>