<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<div id="content">
		<h1 class="hidden">추천장소</h1>
		
		<nav class="detail-btn">
			<h1 class="hidden">목록버튼</h1>
				<a class="list" href="Reco">목록</a> 
				<a class="prev" onclick="return false;" href="#">이전글</a>
				<a class="next" onclick="return false;" href="#">다음글</a>
		</nav> 
		
		 <article class="detail">
			<h1 class="hidden">추천장소 내용</h1>
			<dl class="clearfix">
				<dt class="hidden">지역</dt>
				<dd class="detail-region">[${n.region }]</dd>
				<dt class="hidden">장소명</dt>
				<dd class="detail-title">${n.title}</dd>
				<dt class="hidden">작성자</dt>
				<dd class="detail-id">${n.memberId }</dd>
				<dt class="hidden">등록일</dt>
				<dd class="detail-date"><fmt:formatDate value="${n.regDate}" pattern="yyyy-MM-dd"/></dd>
				<dt class="hidden">내용</dt>
				<dd class="detail-content">${n.content }</dd>
			</dl>
		</article>     
	</div>