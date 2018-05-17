package chapter6;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Page;

public class Select extends HttpServlet{

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		request.setCharacterEncoding("UTF-8");
		String count = request.getParameter("count");
		String payment = request.getParameter("payment");
		String review = request.getParameter("review");
		String mail = request.getParameter("mail");

		Page.header(out);
		out.println("<p>" + count + "個の商品をカートに入れました。</p>");
		out.println("<p>お支払方法を" + payment + "に設定しました。</p>");
		out.println("ご感想ありがとうございます。");
		out.println("<p>「" + review + "」</p>");
		if(mail != null) {
			out.println("<p>メールをお送りします。</p>");
			out.println("<p>チェックした時の変数の中身は「" + mail + "」です</p>");
		}
		else {
			out.println("<p>メールはお送りしません。</p>");
			out.println("<p>チェックしなかった時の時の変数の中身は「" + mail + "」です</p>");
		}
		Page.footer(out);

	}

}
