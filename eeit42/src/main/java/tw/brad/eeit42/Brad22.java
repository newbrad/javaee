package tw.brad.eeit42;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad22")
public class Brad22 extends HttpServlet {
	private Connection conn;
	
    public Brad22() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Properties prop = new Properties();
			prop.put("user", "root");
			prop.put("password", "root");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/iii", prop);
		}catch (Exception e) {
			System.out.println(e.toString());
		}

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		String account = request.getParameter("account");
		String passwd = request.getParameter("passwd");
		String realname = request.getParameter("realname");
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if (!isDupAccount(account)) {
			int row = addMember(account, passwd, realname);
			if (row > 0) {
				// 新增成功
				out.print("新增成功");
			}else {
				// 新增失敗
				out.print("新增失敗");
			}
		}else {
			// 帳號重複
			out.print("帳號重複");
		}
		response.flushBuffer();
	
	}

	private boolean isDupAccount(String account) {
		return true;
	}
	
	private int addMember(String account, String passwd, String realname) {
		return 0;
	}
	
}
