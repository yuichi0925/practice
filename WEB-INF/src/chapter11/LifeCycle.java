package chapter11;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tool.Page;

public class LifeCycle extends HttpServlet{

	@Override
	public void init() throws ServletException {
		System.out.println("init");
	}

	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1)
			throws ServletException, IOException {
		System.out.println("service");
		super.service(arg0, arg1);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("doGet");

		PrintWriter out = resp.getWriter();
		Page.header(out);
		out.println("ライフサイクルの確認はコンソールで");
		Page.footer(out);
	}

	@Override
	public void destroy() {
		System.out.println("destroy");
	}

}
