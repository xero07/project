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
<title>다이어리</title>
<link href="${ctxName }/resource/css/place.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctxName }/resource/js/modernizr.js"></script>
<script type="text/JavaScript" src="http://code.jquery.com/jquery-1.7.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${ctxName }/resource/js/subBox.js"></script>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script type="text/javascript">
        function openDaumZipAddress() {

            new daum.Postcode({
                
                oncomplete: function(data) {

                    jQuery('#postcode1').val(data.postcode1);
                    jQuery('#postcode2').val(data.postcode2);
                    jQuery('#address').val(data.address);
                    jQuery('#address_etc').focus();
                    console.log(data);
                }
            }).open();
        }
    </script>
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