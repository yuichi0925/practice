package chapter10;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Page;

public class FilterSample extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		//System.out.println("サーブレットの処理");

		PrintWriter out = resp.getWriter();
		Page.header(out);
		out.println("<h1>フィルターを適応しました。</h1>");
		out.println("<p>確認したい場合は「EncodingFilter.java」と「FilterSample.java」の<br>System.out.ptintln();のコメントアウトを解除してみてください。</p>");
		out.println("<p>以下の2つを毎回記入しなくて良くなりました。</p>");
		out.println("req.setCharacterEncoding(\"UTF-8\");<br>");
		out.println("resp.setContentType(\"text/html; charset=UTF-8\");<br>");
		Page.footer(out);

	}



}
