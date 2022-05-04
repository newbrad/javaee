<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
Hello, World<br />

<%
	// pageScope => requestScope => sessionScope => applicationScope
	int lottery = (int)(Math.random()*49+1);
	out.print("I am JSP:" + lottery);
%>


</body>
</html>