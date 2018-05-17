<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>アクションタグ</title>
</head>

<body>

<jsp:useBean id="product" class="bean.Product" scope="request"></jsp:useBean>

<p>
<jsp:getProperty property="id" name="product"/>:
<jsp:getProperty property="name" name="product"/>:
<jsp:getProperty property="price" name="product"/>
</p>

</body>

</html>