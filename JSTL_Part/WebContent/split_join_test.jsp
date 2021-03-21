<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:set var = "data" value = "marrakech, paris, ifrane, rabat, salé"/>

<h3>Split demo</h3>

<c:set var = "citiesArray" value = "${fn: split(data, ',') }" />

<c:forEach var= "tempCity" items= "${citiesArray }">
${tempCity }<br/>
</c:forEach>

<h3>Join Demo</h3>

<c:set var = "fun" value = "${fn: join(citiesArray, '*') }"></c:set>
Result of the join function : ${fun}

</body>
</html>