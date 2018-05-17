<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>いろいろなリクエストパラメーター</title>
</head>
<body>

<form action="checkbox" method="post">

<p>お買い得情報を受け取るジャンルをお選びください。</p>
<p><input type="checkbox" name="genre" value="家電">家電</p>
<p><input type="checkbox" name="genre" value="玩具">玩具</p>
<p><input type="checkbox" name="genre" value="時計">時計</p>
<p><input type="checkbox" name="genre" value="書籍">書籍</p>
<p><input type="checkbox" name="genre" value="ゲーム">ゲーム</p>
<p><input type="checkbox" name="genre" value="文房具">文房具</p>
<p><input type="checkbox" name="genre" value="食品">食品</p>

<p><input type="submit" value="確定"></p>

</form>

</body>
</html>