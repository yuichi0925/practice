package chapter15;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Page;

public class NoBeans extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		Page.header(out);

		int id = 1;
		String name = "まぐろ";
		int price = 100;

		out.println(id);
		out.println(":");
		out.println(name);
		out.println(":");
		out.println(price);

		Page.footer(out);

	}



}
