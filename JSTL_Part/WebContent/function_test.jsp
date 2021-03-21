<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:set var = "data" value = "amine"/>
Length of the string <b>${data }</b> is : ${fn:length(data) }

<br/><br/>

UpperCase version of the string <b>${data}</b> is : ${fn: toUpperCase(data)}
<br/><br/>
Does the string <b>${data }</b> starts with <b>luv</b>? : ${fn:startsWith(data, "luv")} 

</body>
</html>