<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL</title>
</head>
<body>

<%@page import="java.util.List, java.util.ArrayList" %>
<%@page import="java.util.Map, java.util.HashMap" %>

<%
int[] array = {0,1,2};
request.setAttribute("array", array);

List<String> list = new ArrayList();
list.add("zero");
list.add("one");
list.add("two");
request.setAttribute("list", list);

Map<String, String> map = new HashMap();
map.put("zero", "零");
map.put("one", "壱");
map.put("two", "弐");
request.setAttribute("map", map);
%>

${array[1]}<br>
${list[2]}<br>
${map["one"]}<br>
${map.two}<br>

</body>
</html>