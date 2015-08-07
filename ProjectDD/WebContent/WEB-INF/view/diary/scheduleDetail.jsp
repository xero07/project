<%@page import="com.dailydate.web.dao.mybatis.MyBatisScheduleDao"%>
<%@page import="com.dailydate.web.vo.Schedule"%>
<%@page import="com.dailydate.web.dao.ScheduleDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
	ScheduleDao scheduleDao = new MyBatisScheduleDao();
	String code = request.getParameter("c");
	Schedule n = scheduleDao.getSchedule(code);
	request.setAttribute("n", n);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DailyDate</title>
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
			<li>일정관리</li>
			<li>커플일기</li>
		</ul>
	</aside>

	<main>
	<section>
		<h1>커플일기</h1>
		<form method="post">

		<article>
			<h1>게시판 내용</h1>
			<dl>
				<dt>제목</dt>
				<dd>${n.title }</dd>
				<dt>장소</dt>
				<dd>${n.place }</dd>
				<dt>스티커</dt>
				<dd>${n.stCode }</dd>
				<dt>날짜</dt>
				<dd>
					<fmt:formatDate value="${n.regDate}" pattern="yyyy년MM월dd일" />
				</dd>
				<dt>작성자</dt>
				<dd>${n.memberId }</dd>
				<dt>내용</dt>
				<dd>${n.content }</dd>
			</dl>
		</article>

		<nav>
			<h1>버튼</h1>
			<ul>
				<li> <a href="coupleScheduleUpdate.jsp">수정</a>  </li>
				<li> <a href="coupleSchedule.jsp">목록</a> </li>
			</ul>
		</nav>
	</form>
	</section>
	</main>
	<footer>
		<section>
			<h1>저작권 정보</h1>
			<p>Copyright ⓒdailydate.com / member : An, Jung, Bom, JJune,
				Gyung</p>
		</section>
	</footer>
</body>
</html>