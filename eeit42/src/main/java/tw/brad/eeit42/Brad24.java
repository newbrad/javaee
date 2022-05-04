package tw.brad.eeit42;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad24")
public class Brad24 extends HttpServlet {
    public Brad24() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR
				,"get out here");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String account = request.getParameter("account");
		String passwd = request.getParameter("passwd");
		
		try {
			if (login(account, passwd)) {
				response.sendRedirect("brad25.html");
			}else {
				response.sendRedirect("brad24.html");
			}
		}catch (Exception e) {
			response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR
					,e.toString());
		}
		
	}

	private boolean login(String account, String passwd)
		throws Exception
		{
	
		return false;
	}
	
}
