package chapter15;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Product;
import dao.ProductDAO;
import tool.Page;

public class Insert extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		Page.header(out);
		try {
			String name = req.getParameter("name");
			int price = Integer.parseInt(req.getParameter("price"));

			Product p = new Product();
			p.setName(name);
			p.setPrice(price);

			ProductDAO dao = new ProductDAO();
			int line = dao.insert(p);

			if(line>0) {
				out.println("追加に成功しました。");
			}
		}catch(Exception e) {
			e.printStackTrace(out);
		}

		Page.footer(out);
	}

}
