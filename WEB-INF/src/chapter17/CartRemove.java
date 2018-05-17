package chapter17;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tool.Page;

public class CartRemove extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		Page.header(out);

		HttpSession session = req.getSession();
		session.removeAttribute("cart");

		out.println("カートを削除しました。");
		out.println("<br>");
		out.println("<a href=cart-get>カートへ</a>");
		out.println("<br>");
		out.println("<a href=cart-add.jsp>カートに追加</a><br>");

		Page.footer(out);
	}

}
