package tw.brad.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;

public class BradUtils {
	public static String loadView(String view) {
		String loadfile = 
			String.format("C:/Users/USER/git/repository2/eeit42/src/main/webapp/views/%s.html",
					view);
		File source = new File(loadfile);
		StringBuffer sb = new StringBuffer();
		try (FileInputStream fin = new FileInputStream(source);
				InputStreamReader ir = new InputStreamReader(fin, "UTF-8");
				BufferedReader reader = new BufferedReader(ir)) {
			String line;
			while ( (line = reader.readLine()) != null) {
				sb.append(line);
			}
		}catch (Exception e) {
			System.out.println(e.toString());
		}
		return sb.toString();
	}
	
	public static int createLottery() {
		return (int)(Math.random()*49+1);
	}
	
	public static final String MATH_ADD = "1";
	public static final String MATH_SUB = "2";
	public static final String MATH_MUL = "3";
	public static final String MATH_DIV = "4";

	public static String cal(String x, String y, String op) {
		try {
			int intX = Integer.parseInt(x);
			int intY = Integer.parseInt(y);
			switch(op) {
				case MATH_ADD: return "" + (intX + intY);
				case MATH_SUB: return "" + (intX - intY);
				case MATH_MUL: return "" + (intX * intY);
				case MATH_DIV: return "" + (intX / intY) + " ...... " + (intX % intY);
				default: return "";
			}
		}catch (Exception e) {
			return "";
		}
	}
}




