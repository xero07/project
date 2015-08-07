<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<div id="content">
		<h1 class="hidden">자유게시판</h1>
		
		<nav class="detail-btn">
			<h1 class="hidden">목록버튼</h1>
				<a class="list" href="Board">목록</a> 
				<a class="prev" onclick="return false;" href="#">이전글</a>
				<a class="next" onclick="return false;" href="#">다음글</a>
		</nav>   
		
		<article class="detail">
			<h1 class="hidden">게시판 내용</h1>
			<dl class=>
				<dt class="hidden">말머리</dt>
				<dd class="detail-region">[${n.subject }]</dd>
				<dt class="hidden">제목</dt>
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