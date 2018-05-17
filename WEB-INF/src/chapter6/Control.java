package chapter6;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Page;

public class Control extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();

		Page.header(out);

		req.setCharacterEncoding("UTF-8");
		List<String> names = Collections.list(req.getParameterNames());
		for(String name : names) {
			String[] values = req.getParameterValues(name);
			for(String value : values) {
				out.println("<p>" + name + "=" + value + "</p>");
			}
		}
		Page.footer(out);

	}

}
