<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Consommation</title>
</head>
<%
//recuperer data
String favLang = request.getParameter("favoriteLanguage");
//create cookie
Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);
//set the life span
theCookie.setMaxAge(60*60*24*365);
response.addCookie(theCookie);

%>
<body>

Thans we set your favorite language to {$param.favoriteLanguage}

<a href = "cookiesHomePage.jsp">Return to home page</a>

</body>
</html>