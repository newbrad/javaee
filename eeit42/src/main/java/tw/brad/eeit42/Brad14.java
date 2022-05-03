package tw.brad.eeit42;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.brad.utils.Brad15;

@WebServlet("/Brad14")
public class Brad14 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// Controller
		// 1. 接收參數, 整理
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		
		// 2. Model => 演算法
		Brad15 model = new Brad15(x, y);
		double result = model.operator();
		System.out.println(result);
		
		// 3. 呈現 => View
		request.getRequestDispatcher("Brad16?result=" + result)
			.forward(request, response);;
		
	}

}
