package chapter11;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Page;

public class CountThread2 extends HttpServlet{
	int count;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		Page.header(out);

		synchronized(this) {
			int i = count;
			try {
				Thread.sleep(3000);
			}catch(InterruptedException e) {}
			count = i + 1;
			out.println(count);
		}

		Page.footer(out);
	}



}
