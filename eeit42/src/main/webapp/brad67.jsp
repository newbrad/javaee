<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page import="java.util.*"%>
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
<c:import var="data"
url="https://data.coa.gov.tw/Service/OpenData/ODwsv/ODwsvAgriculturalProduce.aspx" />
<%
	String dataString = (String)pageContext.getAttribute("data");
	JSONArray root = new JSONArray(dataString);
	LinkedList<HashMap<String,String>> gift = new LinkedList<>();
	
	for (int i=0; i<root.length(); i++){
		JSONObject row = root.getJSONObject(i);
		HashMap<String,String> rdata = new HashMap<>();
		rdata.put("Name", row.getString("Name"));
		rdata.put("SalePlace", row.getString("SalePlace"));
		rdata.put("ProduceOrg", row.getString("ProduceOrg"));
		rdata.put("ContactTel", row.getString("ContactTel"));
		gift.add(rdata);
	}
	
	pageContext.setAttribute("gift", gift);
%>

<table border="1" width="100%">
	<tr>
		<th>Name</th>
		<th>SalePlace</th>
		<th>ProduceOrg</th>
		<th>ContactTel</th>
	</tr>
	<c:forEach items="${gift }" var="g">
		<tr>
			<th>${g.Name }</th>
			<th>${g.SalePlace }</th>
			<th>${g.ProduceOrg }</th>
			<th>${g.ContactTel }</th>
		</tr>	
	</c:forEach>
</table>


</body>
</html>