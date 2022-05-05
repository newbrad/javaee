<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int lottery = (int)(Math.random()*49+1);

	application.setAttribute("lottery", lottery);	// int => Integer
			
			
			
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
Lottery = <%= lottery %>

<hr />
<hr />

</body>
</html>