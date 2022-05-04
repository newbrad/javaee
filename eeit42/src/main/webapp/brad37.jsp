<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page errorPage="brad38.jsp" %>    
<%
	String xStr = "", yStr = "", rStr = "";
	
	if (request.getParameter("x") != null){
		xStr = request.getParameter("x");
		yStr = request.getParameter("y");
	}
	
	try{
		int x = Integer.parseInt(xStr);
		int y = Integer.parseInt(yStr);
		int r = x + y;
		rStr = r + "";
	}catch(Exception e){
		
	}
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<form>
	<input type="number" name="x" value="<%= xStr %>" />
	+
	<input type="number" name="y" value="<%= yStr %>" />
	<input type="submit" value="=" />
	<span><%= rStr %></span>
</form>

</body>
</html>