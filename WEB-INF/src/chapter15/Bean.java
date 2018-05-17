package chapter15;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Product;
import tool.Page;

public class Bean extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		Page.header(out);

		Product p = new Product();

		p.setId(1);
		p.setName("まぐろ");
		p.setPrice(100);

		out.println(p.getId());
		out.println(":");
		out.println(p.getName());
		out.println(":");
		out.println(p.getPrice());

		Page.footer(out);
	}



}
