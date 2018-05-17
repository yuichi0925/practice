package chapter9;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Page;

public class Include extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();

		Page.header(out);
		req.getRequestDispatcher("chapter9/include1.jsp").include(req, resp);
		req.getRequestDispatcher("chapter9/include2.jsp").include(req, resp);
		Page.footer(out);
	}



}
