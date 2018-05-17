<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>set</title>
</head>
<body>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="message" value="Hello"/>
<p>message : ${message}</p>

<c:set var="message2">Welcome</c:set>
<p>message2 : ${message2}</p>

<c:set var="result" value="${1+2}"/>
<p>result : ${result}</p>

<jsp:useBean id="product" class="bean.Product"/>
<c:set target="${product}" property="name" value="さんま"/>
<p>product.name : ${product.name}</p>

<jsp:useBean id="map" class="java.util.HashMap"/>
<c:set target="${map}" property="apple" value="りんご"/>
<p>map.apple : ${map.apple}</p>

</body>
</html>