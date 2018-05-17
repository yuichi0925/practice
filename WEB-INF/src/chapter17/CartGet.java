package chapter17;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Product;
import tool.Page;

public class CartGet extends HttpServlet{

	@SuppressWarnings("unchecked")
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		Page.header(out);

		HttpSession session = req.getSession();

		List<Product> cart = (List<Product>)session.getAttribute("cart");

		for(Product p : cart) {
			out.println("<p>");
			out.println(p.getName());
			out.println(":");
			out.println(p.getPrice());
			out.println("</p>");
		}

		Page.footer(out);
	}

}
