package tw.brad.eeit42;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/Brad17")
@MultipartConfig(
		location = "C:\\Users\\USER\\git\\repository2\\eeit42\\src\\main\\webapp\\upload"
		)
public class Brad17 extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String account = request.getParameter("account");
		Part part = request.getPart("upload");
		
//		Collection<Part> parts = request.getParts();
//		for (Part part : parts) {
//			String type = part.getContentType();
//			String name = part.getName();
//			String sname = part.getSubmittedFileName();
//			System.out.println(type);
//			System.out.println(name);
//			System.out.println(sname);
//			System.out.println("----");
//		}
		
		part.write("OK.java");
	
	}

}
