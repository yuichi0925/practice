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

public class Transaction extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		Page.header(out);
		try {
			InitialContext ic = new InitialContext();
			DataSource ds = (DataSource)ic.lookup("java:/comp/env/jdbc/practice");
			Connection con = ds.getConnection();

			String name = req.getParameter("name");
			int price = Integer.parseInt(req.getParameter("price"));

			con.setAutoCommit(false);

			PreparedStatement st = con.prepareStatement(
					"insert into product values(null, ?, ?)");
			st.setString(1, name);
			st.setInt(2, price);
			st.executeUpdate();

			st = con.prepareStatement(
					"select * from product where name=?");
			st.setString(1, name);
			ResultSet rs = st.executeQuery();
			int line = 0;
			while(rs.next()) {
				line++;
			}

			if(line==1) {
				con.commit();
				out.println("商品を登録しました。");
			}else {
				con.rollback();
				out.println("商品はすでに登録されています。");
			}

			con.setAutoCommit(true);

			st.close();
			con.close();
		}catch(Exception e) {
			e.printStackTrace(out);
		}

		Page.footer(out);
	}

}
