package tw.brad.eeit42;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad11")
public class Brad11 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String x = request.getParameter("x");
		String y = request.getParameter("y");
		String z = request.getParameter("z");
		
		PrintWriter out = response.getWriter();
		out.print("Hello, Brad11<br>");
		out.print("Brad11: " + x + ":" + y + ":" + z);
		response.flushBuffer();
	
	}

}
