<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
//the default is there is no cookies
String favLang = "Java";
//get all cookies from browser request

Cookie[] theCookies = request.getCookies();
//find our favorite language cookie

if(theCookies != null)
{
	for(Cookie tempCookie: theCookies)
	{
		if("myApp.favoriteLanguage".equals(tempCookie.getName()))
		{
			favLang = tempCookie.getValue();
			break;
		}
	}
}
%>

<!-- show a personalized page using favLang variable -->
<!-- show new books for this lang -->
<h4>New books for <%= favLang %></h4>
<p>balablablablablablablabla</p>
<p>balablablablablablablabla</p>
<p>balablablablablablablabla</p>
<p>balablablablablablablabla</p>
<h4>Latest Nes Reports for <%= favLang %></h4>
<p>balablablablablablablabla</p>
<p>balablablablablablablabla</p>
<p>balablablablablablablabla</p>

<h4>Hot jobs for <%= favLang %></h4>
<p>balablablablablablablabla</p>
<p>balablablablablablablabla</p>

<a href = "cookies-personalize-form.html">Personalize this page </a>
</body>
</html>