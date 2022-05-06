<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String method = request.getMethod();	// request => 隱含物件實體
	ServletRequest sr = pageContext.getRequest();	// pageContext => 隱含物件實體
	if (sr instanceof HttpServletRequest) out.print("OK");
	if (sr == request) out.print("Yes");
	// page < request < session < application
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

</body>
</html>