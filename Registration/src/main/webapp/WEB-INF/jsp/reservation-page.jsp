<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation page</title>
</head>
<h1>Railway reservation form</h1>
<body>
	<form:form action="submitForm" modelAttribute="reservation">
		First name:<form:input path="firstName"/><br><br>
		Last name:<form:input path="lastName"/><br><br>
		Gender:
		Male<form:radiobutton path="Gender" value="Male"/>
		Female<form:radiobutton path="Gender" value="Female"/><br><br>
		Meals:
		BreakFast<form:checkbox path="Meals" value="BreakFast"/>
		Lunch<form:checkbox path="Meals" value="Lunch"/>
		Dinner<form:checkbox path="Meals" value="Dinner"/><br><br>
		Leaving from:<form:select path="cityFrom">
		<form:option value="Rayachoty" lable="Rayachoty"></form:option>
		<form:option value="Mpl" lable="Mpl"></form:option>
		<form:option value="Bangalore" lable="Bangalore"></form:option>
		</form:select><br><br>
		Going To:<form:select path="cityTo">
		<form:option value="Rayachoty" lable="Rayachoty"></form:option>
		<form:option value="Mpl" lable="Mpl"></form:option>
		<form:option value="Bangalore" lable="Bangalore"></form:option>
		</form:select><br><br>
		<input type="submit" value="submit">
	
	</form:form>
	
</body>
</html>