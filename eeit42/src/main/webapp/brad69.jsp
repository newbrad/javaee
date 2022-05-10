<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="brad" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
<brad:test1 />
<hr />
<brad:test2 />
<hr />
<brad:sayHello user="Brad" />
<brad:sayHello user="May" />
<hr />
<brad:calc x="10" y="3">
	10 + 3 = ${add }<br />
	10 - 3 = ${sub }<br />
</brad:calc>
<hr />
<table border="1" width="100%" />
	<tr>
		<th>Name</th>
		<th>Price</th>
	</tr>
	<brad:myjsp pname="Camera" price="100" />
	<brad:myjsp pname="iPhone" price="1000" />
	<brad:myjsp pname="Mouse" price="200" />
	<brad:myjsp pname="Keyboard" price="30" />
</table>




</body>
</html>