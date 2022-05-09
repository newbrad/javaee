<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost/iii"
	user="root"
	password="root"
	/>    
<sql:query var="rs">
	SELECT * FROM foods
</sql:query>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<table border="1" width="100%">
	<tr>
		<th>id.</th>
		<th>Name</th>
		<th>Address</th>
		<th>Tel.</th>
		<th>Image</th>
	</tr>
	<c:forEach items="${rs.rows }" var="row">
		<tr>
			<td>${row.id }</td>
			<td>${row.name }</td>
			<td>${row.addr }</td>
			<td>${row.tel }</td>
			<td><img src="${row.picurl }" width="128px" /></td>
		</tr>
	</c:forEach>
	
</table>

</body>
</html>