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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<c:catch var="error">
<sql:transaction>
	<sql:update>
		INSERT INTO member (account,passwd,realname) VALUES (?,?,?)
		<sql:param>testAA</sql:param>
		<sql:param>testBB</sql:param>
		<sql:param>testCC</sql:param>
	</sql:update>
	<sql:query var="lastid">
		SELECT last_insert_id() as newid
	</sql:query>
	<sql:update>
		UPDATE member SET passwd = ? WHERE i = ?
		<sql:param>123456</sql:param>
		<sql:param>444</sql:param>
	</sql:update>
</sql:transaction>
</c:catch>

</body>
</html>