package tw.brad.eeit42;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad20")
public class Brad20 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String source = 
				"C:\\Users\\USER\\git\\repository2\\eeit42\\src\\main\\webapp\\upload\\coffee.jpg";
		File file = new File(source);
		BufferedImage bimg = ImageIO.read(file);
		
		//Graphics2D g2d = bimg.createGraphics();
		
		response.setContentType("image/jpeg");
		OutputStream out = response.getOutputStream();
		ImageIO.write(bimg, "jpeg", out);
		
		response.flushBuffer();
		
		
		
		
	}

}
