<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/header.html" %>

<%! int countA=0; %>

<%
int countB=0;
countA++;
countB++;
%>

<p>宣言による変数countAは<%=countA %>　（更新するたびにインクリメント）</p>
<p>スクリプトレット内の変数countBは<%=countB %>　（毎回0になってプラス1される）</p>

<%@include file="/footer.html" %>