<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>いろいろなリクエストパラメーター</title>
</head>
<body>

<form action="select" method="post">

<p>購入数を選択してください。</p>
<select name="count">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>

<p>購入方法を選択してください。</p>
<input type="radio" name="payment" value="カード" checked>カード
<input type="radio" name="payment" value="代金引換">代金引換
<input type="radio" name="payment" value="銀行振込">銀行振込
<input type="radio" name="payment" value="コンビニ">コンビニ

<p>商品のご感想をお寄せください。</p>
<p><textarea name="review" cols="30" rows="5">商品名：</textarea></p>

<p>お知らせメールの受信を希望されますか。</p>
<p><input type="checkbox" name="mail">おすすめ商品のメールを受け取る</p>

<p><input type="submit" value="確定"></p>

</form>

</body>
</html>