<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beanを生成</title>
</head>

<body>

<jsp:useBean id="product" class="bean.Product"></jsp:useBean>

<jsp:setProperty property="id" value="2" name="product"/>
<jsp:setProperty property="name" value="サーモン" name="product"/>
<jsp:setProperty property="price" value="100" name="product"/>

<jsp:getProperty property="id" name="product"/>:
<jsp:getProperty property="name" name="product"/>:
<jsp:getProperty property="price" name="product"/>

</body>

</html>