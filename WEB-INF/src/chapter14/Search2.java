package chapter14;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import tool.Page;

public class Search2 extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		Page.header(out);
		try {
			InitialContext ic = new InitialContext();
			DataSource ds = (DataSource)ic.lookup("java:/comp/env/jdbc/practice");
			Connection con = ds.getConnection();

			int price = Integer.parseInt(req.getParameter("price"));

			PreparedStatement st = con.prepareStatement("select * from product where price<=?");
			st.setInt(1,price);
			ResultSet rs = st.executeQuery();

			while(rs.next()) {
				out.println(rs.getInt("id"));
				out.println(":");
				out.println(rs.getString("name"));
				out.println(":");
				out.println(rs.getString("price"));
				out.println("<br>");
			}

			st.close();
			con.close();
		}catch(Exception e) {
			e.printStackTrace(out);
		}

		Page.footer(out);
	}



}
