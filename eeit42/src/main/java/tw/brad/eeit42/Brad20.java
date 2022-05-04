package tw.brad.eeit42;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
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

		Font font = new Font(null, Font.BOLD, 64);
		
		AffineTransform tran = new AffineTransform();
		tran.rotate(Math.toRadians(Math.random()*60-30));
		Font font1 = font.deriveFont(tran);
		tran.rotate(Math.toRadians(Math.random()*60-30));
		Font font2 = font.deriveFont(tran);
		tran.rotate(Math.toRadians(Math.random()*60-30));
		Font font3 = font.deriveFont(tran);
		
		Graphics2D g2d = bimg.createGraphics();
		g2d.setColor(Color.BLUE);
		g2d.setFont(font1);
		g2d.drawString("資", 100, 200);

		g2d.setFont(font2);
		g2d.drawString("策", 160, 200);

		g2d.setFont(font3);
		g2d.drawString("會", 220, 200);

		response.setContentType("image/jpeg");
		OutputStream out = response.getOutputStream();
//		ImageIO.write(bimg, "jpeg", out);
//		response.flushBuffer();
		
		String target = 
				"C:\\Users\\USER\\git\\repository2\\eeit42\\src\\main\\webapp\\upload\\coffee2.jpg";
		FileOutputStream fout = new FileOutputStream(target);
		ImageIO.write(bimg, "jpeg", fout);
		fout.close();
		out.flush();
		out.close();
		response.flushBuffer();
		
		
		
		
	}

}
