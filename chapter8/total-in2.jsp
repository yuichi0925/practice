<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/header.html" %>

<form action="total-out2.jsp" method="post">
<input type="text" name="price">
円×
<input type="text" name="count">
個＋送料
<input type="text" name="delivery">
円＝
<br>
<input type="submit" value="計算">
</form>

<%@include file="/footer.html" %>