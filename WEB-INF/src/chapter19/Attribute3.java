package chapter19;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Page;

public class Attribute3 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		Page.header(out);

		ServletContext context = getServletContext();

		String debug = (String)context.getAttribute("debug");
		if(debug.equals("yes")) {
			out.println("<p>デバッグモードで実行します。</p>");
		}

		int memory = Integer.parseInt((String)context.getAttribute("memory"));
		if(memory<1000000) {
			out.println("<p>省メモリモードで実行します。</p>");
		}

		Page.footer(out);
	}

}
