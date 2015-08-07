<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<title>관리자_행사</title>
</head>
<body>
	<header id="header">
	<h1>
		<input type="image" src="../images/로고.png" alt="로고">
	</h1>

	<section>
	<h1>머릿말</h1>
	
	<nav>
	<h1>회원메뉴</h1>
	<ul>
		<li><a href="">JOIN US</a></li>
		<li><a href="">LOGIN</a></li>
	</ul>
	</nav> 
	
	<section>
	<h1>코스검색폼</h1>
	<form>
		<fieldset>
			<legend>검색정보</legend>
			<label>코스검색</label> <input type="text" autofocus /> <input
				type="submit" value="검색" />
		</fieldset>
	</form>
	</section> 
	
	<nav>
	<h1>메인메뉴</h1>
	<ul>
		<li>코스만들기</li>
		<li>추천코스</li>
		<li>커플다이어리</li>
		<li>내주변</li>
		<li>장소검색</li>
		<li>행사</li>
		<li>게시판</li>
	</ul>
	</nav> 
	</section> 
	</header>

	<aside>
	<h1>세부메뉴</h1>
	<ul>
		<li>회원</li>
		<li>게시판</li>
		<li>장소</li>
		<li>코스</li>
		<li>행사</li>
	</ul>
	</aside>

	<main> 
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
		<dt>이미지</dt>
		<dd><img src="${ctxName}/resource/upload/event/${e.image}" /></dd>
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
	</main>
	
	<footer> 
		<section>
		<h1>저작권 정보</h1>
		<p>Copyright ⓒdailydate.com / member : An, Jung, Bom, JJune, Gyung</p>
		</section> 
	</footer>
</body>
</html>