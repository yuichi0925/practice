<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/header.html" %>

<p><% out.println(Math.random()); %>　（スクリプトレット）</p>

<p><%=Math.random() %>　（式）</p>

<%@include file="/footer.html" %>