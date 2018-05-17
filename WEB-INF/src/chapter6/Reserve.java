package chapter6;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Page;

public class Reserve extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();

		req.setCharacterEncoding("UTF-8");
		String count = req.getParameter("count");
		String seat = req.getParameter("seat");
		String[] options = req.getParameterValues("option");

		Page.header(out);
		out.println("<p>" + count + "名様で" + seat + "席のご予約を承りました。");

		if(options != null) {
			for(String option : options) {

				out.println("「" + option + "」");
			}
			out.println("をご用意いたします</p>");
		}
		else {
			out.println("オプションなし。</p>");
		}

		Page.footer(out);
	}



}
