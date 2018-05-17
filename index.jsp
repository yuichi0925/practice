<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP/サーブレットの練習ページ</title>
</head>
<body>

<h1 style="text-align:center; background-color:#bcbcff">JSP/サーブレットの練習ページ</h1>

<hr>
<h2>Part1　基礎知識編</h2>

<h3>Chapter3　【サーブレットのコンパイルと実行】</h3>
<a href="hello">Hello.java</a>　(2018/2/3)　サーブレットによるHello!と日時の表示（Chapter10-4のフィルター追加済）<br>

<h3>Chapter5　【サーブレットによるリクエストの処理】</h3>
<a href="chapter5/greeting.jsp">greeting.jsp</a>　(2018/1/31)　名前を入力して表示させる(GET)<br>
<a href="chapter5/greeting2.jsp">greeting2.jsp</a>　(2018/1/31)　名前を入力して表示させる(POST)<br>
<a href="chapter5/total.jsp">total.jsp</a>　(2018/1/31)　金額と個数を入力して計算する<br>

<h3>Chapter6　【いろいろなリクエストパラメータ】</h3>
<a href="chapter6/select.jsp">select.jsp</a>　(2018/2/1)　さまざまなフォーム<br>
<a href="chapter6/checkbox.jsp">checkbox.jsp</a>　(2018/2/1)　複数のチェックボックス<br>
<a href="chapter6/control.jsp">control.jsp</a>　(2018/2/1)　パラメータ名の一覧を取得する<br>
<a href="chapter6/reserve.jsp">reserve.jsp</a>　(2018/2/1)　レストランの予約ページみたいなもの<br>

<h3>Chapter7　【JSPの基本】</h3>
<a href="chapter7/hello2.jsp">hello2.jsp</a>　(2018/2/2)　JSPでhelloを表示<br>
<a href="chapter7/hello3.jsp">hello3.jsp</a>　(2018/2/2)　helloと現在の日時を表示<br>
<a href="chapter7/hello4.jsp">hello4.jsp</a>　(2018/2/2)　helloと現在の日時を表示<br>
<a href="chapter7/add.jsp">add.jsp</a>　(2018/2/2)　メソッドの宣言と利用<br>
<a href="chapter7/variable.jsp">variable.jsp</a>　(2018/2/2)　スクリプトレットでの変数の宣言とJSPの宣言<br>
<a href="chapter7/random.jsp">random.jsp</a>　(2018/2/2)　スクリプトレットと式による乱数の表示<br>

<h3>Chapter8　【JSPによるリクエストの処理とエラーページ】</h3>
<a href="chapter8/greeting-in.jsp">greeting-in.jsp</a>　(2018/2/2)　名前を入力して表示させる（JSPで）<br>
<a href="chapter8/total-in.jsp">total-in.jsp</a>　(2018/2/2)　金額と個数を入力して計算する。エラーページの出力（chromeだと開ける。IEは×）<br>
<a href="chapter8/total-in2.jsp">total-in2.jsp</a>　(2018/2/2)　金額と個数と送料を計算する<br>

<h3>Chapter9　【いろいろな画面遷移】</h3>
<a href="forward">Forward.java</a>　(2018/2/3)　フォワード<br>
<a href="include">Include.java</a>　(2018/2/3)　インクルード<br>
<a href="redirect">Redirect.java</a>　(2018/2/3)　リダイレクト：外部のリソースを利用したい時に使用。サイト引っ越しの時によく使う。<br>

<h3>Chapter10　【フィルタの作成】</h3>
<a href="filterSample">FilterSample.java</a>　(2018/2/3)　フィルタ作成<br>

<hr>

<h2>Part2　応用編</h2>
<h3>Chapter11　【サーブレットの詳細】</h3>
<a href=lifecycle>LifeCycle.java</a>　(2018/2/8)　ライフサイクルの確認<br>
<a href=countthread>CountThread.java</a>　(2018/2/8)　マルチスレッドによる問題の確認<br>
<a href=countthread2>CountThread2.java</a>　(2018/2/8)　CountThread.javaに排他制御を追加<br>

<h3>Chapter12　【HTTPのリクエストとレスポンス】</h3>
<a href=request>Request.java</a>　(2018/2/8)　リクエスト情報を取得するサーブレット<br>
<a href=response>Response.java</a>　(2018/2/8)　レスポンスの情報を設定するサーブレット<br>
<a href=request2?p1=v2&p2=v2>Request2.java</a>　(2018/2/8)　リクエスト情報を取得するサーブレット（練習問題）<br>

<h3>Chapter13　【データベース】</h3>

<h3>Chapter14　【Javaとデータベースの連携】</h3>
<a href=all>All.java</a>　(2018/2/8)　データベースから商品一覧を取得して表示<br>
<a href=chapter14/search.jsp>search.jsp</a>　(2018/2/9)　商品を検索するサーブレット<br>
<a href=chapter14/insert.jsp>insert.jsp</a>　(2018/2/9)　商品を登録するサーブレット<br>
<a href=chapter14/transaction.jsp>transaction.jsp</a>　(2018/2/9)　トランザクションを使ったサンプル<br>
<a href=chapter14/search2.jsp>search2.jsp</a>　(2018/2/9)　指定した価格以下の商品を検索するサーブレット<br>

<h3>Chapter15　【JavaBeansとDAO】</h3>
<a href=nobeans>NoBeans.java</a>　(2018/2/13)　Beanを使わないプログラム<br>
<a href=bean>Bean.java</a>　(2018/2/13)　Beanを使うサーブレット<br>
<a href=chapter15/search.jsp>search.jsp</a>　(2018/2/13)　DAOを使った商品検索<br>
<a href=chapter15/insert.jsp>insert.jsp</a>　(2018/2/13)　DAOを使った商品追加<br>
<a href=chapter15/insert2.jsp>insert2.jsp</a>　(2018/2/13)　DAOを使った商品追加（練習問題）<br>

<h3>Chapter16　【スコープとリクエスト属性】</h3>
<a href=attribute>Attribute.java</a>　(2018/2/13)　リクエスト属性を使う<br>
<a href=attribute2>Attribute2.java</a>　(2018/2/13)　サーブレットから商品テーブルの全ての行を読みだしてJSPファイルで表示<br>
<a href=chapter16/search.jsp>search.jsp</a>　(2018/2/13)　練習問題<br>

<h3>Chapter17　【セッション】</h3>
<a href=chapter17/count>count.java</a>　(2018/2/14)　セッションを使ったカウンタ<br>
<a href=chapter17/cart-add.jsp>cart-add.jsp</a>　(2018/2/14)　簡単なショッピングカートプログラム（カートに追加）<br>
<a href=chapter17/cart-get>CartGet.java</a>　(2018/2/14)　カート内の表示<br>
<a href=chapter17/cart-remove>CartRemove.java</a>　(2018/2/14)　カート削除<br>
<a href=chapter17/cart-invalidate>CartInvalidate.java</a>　(2018/2/14)　練習問題（カート削除＋セッション終了）<br>

<h3>Chapter18　【クッキー】</h3>
<a href=chapter18/add>Add.java</a>　(2018/2/14)　クッキー追加<br>
<a href=chapter18/get>Get.java</a>　(2018/2/14)　クッキーの取得と表示<br>
<a href=chapter18/count>Count.java</a>　(2018/2/14)　クッキーを使ったカウンタ<br>
<a href=chapter18/remove>Remove.java</a>　(2018/2/14)　練習問題（クッキーの削除）<br>

<h3>Chapter19　【外部データの読み込み】</h3>
<a href=chapter19/param-servlet>ParamServlet.java</a>　(2018/2/15)　サーブレットの初期化パラメータを読み込むサンプル<br>
<a href=chapter19/param-context>ParamContext.java</a>　(2018/2/15)　コンテキストの初期化パラメータを読み込むサンプル<br>
<a href=chapter19/file>File.java</a>　(2018/2/15)　ファイルを読み込むサンプル<br>
<a href=chapter19/attribute>Attribute.java</a>　(2018/2/15)　アプリケーション属性を設定するサンプル<br>
<a href=chapter19/attribute2>Attribute2.java</a>　(2018/2/15)　アプリケーション属性を取得するサンプル<br>
<a href=chapter19/attribute3>Attribute3.java</a>　(2018/2/15)　アプリケーション属性の内容に応じて動作を変えるサーブレット<br>
<a href=chapter19/attribute4>Attribute4.java</a>　(2018/2/15)　練習問題<br>

<h3>Chapter20　【アクションタグ】</h3>
<a href=chapter20/tag>Tag.java</a>　(2018/2/15)　アクションタグでBeanを取得するプログラム<br>
<a href=chapter20/tag2.jsp>tag2.jsp</a>　(2018/2/15)　アクションタグでBeanを生成するプログラム<br>
<a href=chapter20/tag-forward.jsp>tag-forward.jsp</a>　(2018/2/15)　forwardアクションを使ったJSPファイル<br>
<a href=chapter20/tag-include.jsp>tag-include.jsp</a>　(2018/2/15)　includeアクションを使ったJSPファイル<br>

<h3>Chapter21　【EL】</h3>
<a href=chapter21/el>el.java</a>　(2018/2/15)　ELを使ってBeanを取得するサンプル<br>
<a href=chapter21/el2.jsp>el2.jsp</a>　(2018/2/15)　ELによるメソッドの呼び出し（乱数生成）<br>
<a href=chapter21/el3.jsp>el3.jsp</a>　(2018/2/15)　三項演算子を使ったサンプル（乱数生成→0.5未満なら「あたり」、0.5以上なら「はずれ」）<br>
<a href=chapter21/el4.jsp>el4.jsp</a>　(2018/2/15)　リストやマップから要素を取り出すサンプル<br>
<a href=chapter21/el5-1.jsp>el5-1.jsp</a>　(2018/2/15)　リクエストパラメータの取得<br>
<a href=chapter21/el6.jsp?user=mymane>el6.jsp</a>　(2018/2/15)　リクエストパラメータの取得<br>

<h3>Chapter22　【JSTL】</h3>
<a href=chapter22/jstl>jstl.java</a>　(2018/2/15)　リストの要素を取り出すサンプル<br>
<a href=chapter22/jstl-for.jsp>jstl-for.jsp</a>　(2018/2/15)　JSTLによる繰り返しを使って数値を出力するプログラム<br>
<a href=chapter22/jstl-for2.jsp>jstl-for2.jsp</a>　(2018/2/15)　選択肢を生成するプログラム<br>
<a href=chapter22/jstl-if.jsp>jstl-if.jsp</a>　(2018/2/15)　&lt;c:if&gt;タグを使ったサンプル<br>
<a href=chapter22/jstl-if2.jsp>jstl-if2.jsp</a>　(2018/2/15)　&lt;c:choose&gt;タグを使ったサンプル<br>
<a href=chapter22/jstl-set.jsp>jstl-set.jsp</a>　(2018/2/15)　&lt;c:set&gt;タグを使ったサンプル<br>
<a href=chapter22/loop2.jsp>loop2.jsp</a>　(2018/2/15)　練習問題<br>

<hr>

<h2>Part3　実践編</h2>
<h3>Chapter23　【MVCとFront Controller】</h3>
<a href=chapter23/search.jsp>search.jsp</a>　(2018/2/16)　検索アクションの作成<br>
<a href=chapter23/insert.jsp>insert.jsp</a>　(2018/2/16)　追加アクションの作成<br>
<a href=chapter23/insert2.jsp>insert2.jsp</a>　(2018/2/16)　練習問題<br>

<h3>Chapter24　【Webアプリケーション開発の実践（ログイン機能）】</h3>
<a href=chapter24/login-in.jsp>login-in.jsp</a>　(2018/2/16)　ログイン機能<br>
<a href=chapter24/logout-in.jsp>logout-in.jsp</a>　(2018/2/16)　ログアウト機能<br>

<h3>Chapter25　【Webアプリケーション開発の実践（ショッピングサイト）】</h3>
<a href=chapter25/index.jsp>index.jsp</a>　(2018/2/17)　ホーム<br>

</body>
</html>