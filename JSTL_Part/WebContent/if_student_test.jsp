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
					<c:if test="${tempStudent.goldCusto }">
						Special Discount
					</c:if>
					
					<c:if test="${not tempStudent.goldCusto }">
						-
					</c:if>
			</td> 
		</tr>
		
	</c:forEach>

	</table>

</body>
</html>

