<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/header.html" %>

<p>検索キーワードを入力してください。</p>
<form action="search" method="post">
<input type="text" name="keyword">
<input type="submit" value="検索">
</form>

<%@include file="/footer.html" %>