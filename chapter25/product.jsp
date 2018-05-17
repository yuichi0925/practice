<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品検索</title>
</head>
<body>
<%@include file="menu.jsp" %>

<p>検索キーワードを入力してください。</p>
<form action="Product.action" method="post">
<input type="text" name="keyword">
<input type="submit" value="検索">
</form>
<hr>

<table style="border-collapse:separate;border-spacing:10px;">
<c:forEach var="product" items="${list}">
	<tr>
	<td>商品${product.id}</td>
	<td><img src="image/${product.id}.jpg" height="64"></td>
	<td>${product.name}</td>
	<td>${product.price}円</td>
	<td><a href="CartAdd.action?id=${product.id}">カートに追加</a></td>
	</tr>
</c:forEach>
</table>

</body>
</html>