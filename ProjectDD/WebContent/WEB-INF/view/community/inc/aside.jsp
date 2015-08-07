<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>  
	<aside id="aside">
	<h1>커뮤니티</h1> <br/>
		<ul class="clearfix">
		<li><a href="${ctxName }/community/Board">자유게시판</a></li>
		<li><a href="${ctxName }/community/Reco">추천장소</a></li>
		</ul>
	</aside>