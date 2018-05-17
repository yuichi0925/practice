package chapter19;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Page;

public class Attribute2 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		Page.header(out);

		ServletContext context = getServletContext();
		List<String> list = Collections.list(context.getAttributeNames());
		for(String name : list) {
			out.println("<p>" + name + " : ");
			out.println(context.getAttribute(name));
			out.println("</p>");
		}

		Page.footer(out);
	}

}
