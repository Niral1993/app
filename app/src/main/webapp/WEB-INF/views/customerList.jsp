<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer List</title>
<%@ page isELIgnored="false" %>
</head>
<body>
	<table> 
		<tr>
			<th>
				Customer Name
			</th>
		</tr>
		<c:forEach var="cust" items="${customers}">
			<tr>
				<td>${cust.customerName}</td>
			</tr>
		</c:forEach>
	</table>
	<c:set var="baseURL" value="${pageContext.request.localName}"/>
	<a href="http://${baseURL}">Go Home</a>
</body>
</html>