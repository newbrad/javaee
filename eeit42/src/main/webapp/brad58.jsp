<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="tw.brad.utils.*" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<c:set var="score">${BradUtils.createScore() }</c:set>
Score: ${score }<br />
<c:if test="${score >= 90 }" var="r1">A</c:if>
<c:if test="${score >= 80 and score < 90}" var="r2">B</c:if>
<c:if test="${score >= 70 && score < 80}" var="r3">C</c:if>
<c:if test="${score >= 60 and score < 70}" var="r4">D</c:if>
<c:if test="${score < 60 }" var="r5">E</c:if>
<hr />
<c:choose>
	<c:when test="${score >= 90 }">A</c:when>
	<c:when test="${score >= 80 }">B</c:when>
	<c:when test="${score >= 70 }">C</c:when>
	<c:when test="${score >= 60 }">D</c:when>
	<c:otherwise>E</c:otherwise>
</c:choose>



</body>
</html>