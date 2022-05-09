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
<sql:query var="rs1">
	SELECT * FROM foods
</sql:query>

<c:set var="rpp" value="4" />

<c:set var="pages" value=
"${rs1.rowCount % rpp == 0? rs1.rowCount / rpp : (rs1.rowCount - (rs1.rowCount % rpp)) / rpp + 1 }" />

<c:set var="page" value="${param.page == null ?1:param.page }" />
<c:set var="start" value="${(page - 1) * rpp }" />
<c:set var="prev" value="${page == 1? 1: page -1 }" />
<c:set var="next" value="${page == pages? page : page + 1 }" />

<sql:query var="rs">
	SELECT * FROM foods LIMIT ${start }, ${rpp }
</sql:query>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script><title>Brad Big Company</title>
</head>
<body>
<h1>Brad Big Company</h1>
<hr />
<a href="?page=${prev }"><button type="button" class="btn btn-primary">上頁</button></a> 
| 
<a href="?page=${next }"><button type="button" class="btn btn-primary">下頁</button></a>
<hr /> 

rpp : ${rpp }<br />
pages : ${pages }<br />
start : ${start }<br />
prev : ${prev }<br />
next : ${next }<br />


<table border="1" width="100%" class="table">
	<tr>
		<th>id.</th>
		<th>Count</th>
		<th>Name</th>
		<th>Address</th>
		<th>Tel.</th>
		<th>Image</th>
	</tr>
	<c:forEach items="${rs.rows }" var="row" varStatus="status">
		<tr>
			<td>${row.id }</td>
			<td>${status.count }</td>
			<td>${row.name }</td>
			<td>${row.addr }</td>
			<td>${row.tel }</td>
			<td><img src="${row.picurl }" width="128px" /></td>
		</tr>
	</c:forEach>
	
</table>

</body>
</html>