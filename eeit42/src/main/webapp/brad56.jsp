<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<c:set var="x" value="123" />
<c:set var="x" value="456" scope="request" />
x = ${x }<br />
page = ${pageScope.x }<br />
request = ${requestScope.x }<br />
session = ${sessionScope.x }<br />
application = ${applicationScope.x }<br />
<hr />
20:Hello, World<br />
21:<%= "Hello, World<br />" %><br />
22:<c:out value="Hello, World<br />" /><br />
23:${"Hello, World<br />" }<br />
<hr />
<c:out value="${x }" /><br />
<c:out value="${param.y }" default="no value" />
<hr />
<jsp:useBean id="member" class="tw.brad.utils.Member"></jsp:useBean>
<c:set target="${member }" property="account">brad</c:set>
<c:set target="${member }" property="id">123</c:set>
<c:set target="${member }" property="realname">趙令文</c:set>
${member.id } : ${member.account } : ${member.realname }<br />
${member }
<hr />
<c:remove var="member"/>
${member }<br />










</body>
</html>