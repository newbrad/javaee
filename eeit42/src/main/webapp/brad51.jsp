<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="tw.brad.utils.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<form action="brad51.jsp">
	<input name="x" />
	+
	<input name="y" />
	<input type="submit" value="=" />
	<span>${BradUtils.cal(param.x, param.y) }</span> 
</form>

</body>
</html>