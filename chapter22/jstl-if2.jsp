<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>if</title>
</head>
<body>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach var="i" begin="101" end="200">
	<c:choose>
		<c:when test="${i%10==1}">(${i}, </c:when>
		<c:when test="${i%10==0}">${i})<br></c:when>
		<c:otherwise>${i}, </c:otherwise>
	</c:choose>
</c:forEach>

</body>
</html>