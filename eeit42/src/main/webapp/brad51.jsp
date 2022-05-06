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
	<input name="x" type="number" value="${param.x }" />
	<select name="op">
		<option value="1" ${(param.op == "1")?"selected":"" }>+</option>
		<option value="2" ${(param.op == "2")?"selected":"" }>-</option>
		<option value="3" ${(param.op == "3")?"selected":"" }>x</option>
		<option value="4" ${(param.op == "4")?"selected":"" }>/</option>
	</select>
	<input name="y" type="number" value="${param.y }" />
	<input type="submit" value="=" />
	<span>${BradUtils.cal(param.x, param.y, param.op) }</span> 
</form>

</body>
</html>