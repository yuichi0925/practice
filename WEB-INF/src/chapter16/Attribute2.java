package chapter16;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Product;
import dao.ProductDAO;

public class Attribute2 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		try {
			ProductDAO dao = new ProductDAO();
			List<Product> list = dao.search("");

			req.setAttribute("list", list);

			req.getRequestDispatcher("chapter16/attribute2.jsp").forward(req, resp);
		}catch(Exception e) {
			e.printStackTrace(out);
		}

	}

}
