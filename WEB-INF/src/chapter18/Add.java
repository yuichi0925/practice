package chapter18;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Add extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = "name";
		String value = "value";
		Cookie cookie = new Cookie(name, value);
		cookie.setMaxAge(60*60*24);
		resp.addCookie(cookie);
	}

}
