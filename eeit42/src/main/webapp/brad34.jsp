<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

	<table border="1" width="100%">
		<%
			final int ROWS = 4;
			final int COLS = 6;
			final int START = 2;
			
			for (int k=0; k<ROWS; k++){
				out.println("<tr>");
				for (int j=START; j<(START+COLS); j++){
					int newj = j + COLS*k;
					if (COLS % 2 == 0){
						if (k % 2 == 0){
							if (newj % 2 == 0){
								out.println("<td bgcolor='pink'>");
							}else{
								out.println("<td bgcolor='yellow'>");
							}
						}else{
							if (newj % 2 != 0){
								out.println("<td bgcolor='pink'>");
							}else{
								out.println("<td bgcolor='yellow'>");
							}
							
						}
					}else{
						if (newj % 2 == 0){
							out.println("<td bgcolor='pink'>");
						}else{
							out.println("<td bgcolor='yellow'>");
						}
					}
					for (int i=1; i<=9; i++){
						int r = newj * i;
						out.println(String.format("%d x %d = %d<br />",newj,i,r));
					}
					out.println("</td>");					
				}
				out.println("</tr>");				
			}
		%>

	</table>


</body>
</html>