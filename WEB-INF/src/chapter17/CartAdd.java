package chapter17;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Product;
import tool.Page;

public class CartAdd extends HttpServlet{

	@SuppressWarnings("unchecked")
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		Page.header(out);

		String name = req.getParameter("name");
		int price = Integer.parseInt(req.getParameter("price"));

		HttpSession session = req.getSession();

		List<Product> cart = (List<Product>)session.getAttribute("cart");
		if(cart == null) {
			cart = new ArrayList<Product>();
		}

		Product p = new Product();
		p.setName(name);
		p.setPrice(price);
		cart.add(p);
		session.setAttribute("cart", cart);

		out.println("カートに商品を追加しました。<br>");
		out.println("<a href=cart-add.jsp>さらに追加</a><br>");
		out.println("<a href=cart-get>カートへ</a>");
		Page.footer(out);
	}

}
