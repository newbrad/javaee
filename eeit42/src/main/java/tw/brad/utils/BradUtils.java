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
}
