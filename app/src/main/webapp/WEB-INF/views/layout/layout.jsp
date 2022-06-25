<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>
			<tiles:insertAttribute name="title" ignore="true"/>
		</title>
		
		<!-- custom fonts for this template -->  
	    <link href="<c:url value="/resources/app/font/all.min.css" />" rel="stylesheet">
		
		<!-- google font -->
		<link href="<c:url value="/resources/app/font/googleFonts.css" />" rel="stylesheet">
	
	    <!-- custom styles for this template -->
	    <link href="<c:url value="/resources/app/css/sb-admin-2.min.css" />" rel="stylesheet">  
		
		<!-- bootstrap core JavaScript -->
		<script src="<c:url value="/resources/js/jquery.min.js"></c:url>" type="text/javascript"></script>
	    <script src="<c:url value="/resources/bootstrap/js/bootstrap.bundle.min.js"></c:url>" type="text/javascript"></script>
	
	    <!-- custom scripts for all pages -->
	    <script src="<c:url value="/resources/app/js/sb-admin-2.min.js"></c:url>" type="text/javascript"></script>
		
		<!-- sweetalert - css -->
		<link href="<c:url value="/resources/css/sweetalert.css" />" rel="stylesheet"> 
		
		<!--   sweetalert js   -->
		<script src="<c:url value="/resources/js/sweetalert.js"></c:url>" type="text/javascript"></script>
		
		<!-- custom fonts for this template -->
	    <link href="<c:url value="/resources/lib/fontawesome/css/fontawesome.min.css" />" rel="stylesheet"> 
	
	</head>
	<body>
		<div>
			<tiles:insertAttribute name="header"></tiles:insertAttribute>
			<!-- body content margin -->
			<div id="body-margin"></div>
			<tiles:insertAttribute name="body"></tiles:insertAttribute>
			<tiles:insertAttribute name="footer"></tiles:insertAttribute>  
		</div>
	</body>
</html>