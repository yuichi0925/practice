package chapter12;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Page;

public class Request extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		Page.header(out);

		out.println("<p>Request URL<br>"  + req.getRequestURL() + "</p");
		out.println("<p>Host<br>"  + req.getHeader("Host") + "</p");
		out.println("<p>User-Agent<br>"  + req.getHeader("User-Agent") + "</p");
		out.println("<p>Remote Address<br>"  + req.getRemoteAddr() + "</p");

		Page.footer(out);
	}



}
