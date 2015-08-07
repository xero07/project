<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DailyDate</title>
<link href="${ctxName }/resource/css/base.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctxName }/resource/js/modernizr.js"></script>

</head>
<body> 
	<!-- 헤더 영역 -->
	<tiles:insertAttribute name="header" />
	
	<div id="body">
	<div class="content-wrapper clearfix">
	
	<main id="main">
	<!-- 바디 영역 -->
	<tiles:insertAttribute name="body" />
	
	</main>
	</div>
	</div>
	<!-- 푸터 영역 -->
	<tiles:insertAttribute name="footer" />
</body>
</html>