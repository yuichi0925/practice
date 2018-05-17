<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>選択肢生成</title>
</head>
<body>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<p>購入数を選択してください。</p>
<form action="/practice/select" method="post">
<select name="count">

<c:forEach var="i" begin="1" end="9">
	<option value="${i}">${i}</option>
</c:forEach>

</select>
<input type="submit" value="確定">
</form>

</body>
</html>