<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>いろいろなリクエストパラメータ</title>
</head>
<body>

<form action="control" method="post">
<p>レストランをご予約ください。</p>

<p>
人数
<select name="count">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
</select>
</p>

<p>
座席
<input type="radio" name="seat" value="禁煙" checked>禁煙
<input type="radio" name="seat" value="喫煙">喫煙
</p>

<p>オプション
<input type="checkbox" name="option" value="ケーキ">ケーキ
<input type="checkbox" name="option" value="花束">花束
</p>

<p><input type="submit" value="予約"></p>

</form>

</body>
</html>