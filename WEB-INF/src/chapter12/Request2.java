package chapter12;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Page;

public class Request2 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		Page.header(out);

		out.println("<p>Method<br>"  + req.getMethod() + "</p");
		out.println("<p>Request URI<br>"  + req.getRequestURI() + "</p");
		out.println("<p>Context Path<br>"  + req.getContextPath() + "</p");
		out.println("<p>Servlet Path<br>"  + req.getServletPath() + "</p");
		out.println("<p>Query String<br>"  + req.getQueryString() + "</p");
		out.println("<p>Protocol<br>"  + req.getProtocol() + "</p");
		out.println("<p>Request URL<br>"  + req.getRequestURL() + "</p");
		out.println("<p>Scheme<br>"  + req.getScheme() + "</p");
		out.println("<p>Server Name<br>"  + req.getServerName() + "</p");
		out.println("<p>Server Port<br>"  + req.getServerPort() + "</p");

		Page.footer(out);
	}



}
