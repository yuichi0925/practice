<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>データベース処理とリクエスト属性</title>
</head>

<body>

<%@page import="bean.Product, java.util.List" %>
<% List<Product> list = (List<Product>)request.getAttribute("list"); %>
<% for(Product p : list){ %>
<%=p.getId() %>:<%=p.getName() %>:<%=p.getPrice() %><br>
<% } %>

</body>

</html>