<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

	<section>
	<h1>행사 내용</h1>

	<article>
	<h1>행사 내용</h1>
	<dl>
		<dt>이름</dt>
		<dd>${e.name}</dd>
		<dt>기간</dt>
		<dd>
			<fmt:formatDate value="${e.startDate}" pattern="yyyy년MM월dd일" />
			~
			<fmt:formatDate value="${e.endDate}" pattern="yyyy년MM월dd일" />
		</dd>
		<dt>장소</dt>
		<dd>${e.address}</dd>
		<dt>주최자</dt>
		<dd>${e.host}</dd>
		<dt>주최측연락처</dt>
		<dd>${e.hostContact}</dd>
	</dl>
	</article> 
	
	<nav>
	<h1>버튼</h1>
	<div>
		<a href="eventUpdate?c=${e.code}">수정</a>
		<a href="eventDelete?c=${e.code}">삭제</a>
		<a href="event">목록</a>
	</div>
	</nav> 
	</section> 
