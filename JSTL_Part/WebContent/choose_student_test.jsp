<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import = "java.util.*, jstl.demo.Student" %>

<%
List<Student> data = new ArrayList<>();

data.add(new Student("John", "Doe", false));
data.add(new Student("Maxwell", "Johnson", false));
data.add(new Student("Mary", "Public", true));

pageContext.setAttribute("myStudentData", data);
%>

<html>

<body>

<table border="2">

	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gold Customer</th>
	</tr>
	
	<c:forEach var="tempStudent" items="${myStudentData}">
		
		<tr>
			<td>${tempStudent.firstName}</td>
			<td>${tempStudent.lastName}</td>
			<td>
				<c:choose>
					<c:when test="${tempStudent.goldCusto }">
						Special Discount
					</c:when>
					
					<c:otherwise>
						No Soop For You
					</c:otherwise>
				</c:choose>
			</td> 
		</tr>
		
	</c:forEach>

	</table>

</body>
</html>


</body>
</html>