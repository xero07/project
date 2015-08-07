<%@page import="com.dailydate.web.dao.mybatis.MyBatisScheduleDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.dailydate.web.dao.ScheduleDao"%>
<%@page import="java.util.Date"%>
<%@page import="com.dailydate.web.vo.Schedule"%>
<%@page import="java.util.Calendar"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(request.getMethod().equals("POST")) //POST요청이라면
	{
		String title= request.getParameter("title");
		String place =  request.getParameter("place");
		String date =  request.getParameter("date");
		String content =request.getParameter("content");
		String st = request.getParameter("st");
		
		DateFormat sdFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date tempDate = sdFormat.parse(date);
		
		Schedule s = new Schedule();
		s.setTitle(title);
		s.setPlace(place);
		s.setRegDate(tempDate);
		s.setContent(content);
		s.setStCode(st);
		
		ScheduleDao scheduleDao = new MyBatisScheduleDao();
		scheduleDao.addSchedule(s);
				
		response.sendRedirect("coupleSchedule.jsp");  //등록 완료 되면 목록으로 이동
	}
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
						<label>코스검색</label> 
						<input type="text" autofocus /> 
						<input type="submit" value="검색" />
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
				<dd><input type="text" name="title"/></dd>
				<dt>장소</dt>
				<dd><input type="text" name="place"/></dd>
				<dt>스티커</dt>
				<dd>
					<input type="radio" name="st" checked/>없음
					<input type="radio" name="st" value="st01" />스티커1
					<input type="radio" name="st" value="st02" />스티커2
					<input type="radio" name="st" value="st03" />스티커3
					<input type="radio" name="st" value="st04" />스티커4
				</dd>
				<dt>날짜</dt>
				<dd>
					<input type="string" name="date"/>
				</dd>
				<dt>내용</dt>
				<dd><textarea rows="20" cols="40" name="content"></textarea></dd>
			</dl>
		</article>

		<nav>
			<h1>버튼</h1>
			<ul>
				<li> <input type="submit" value="등록"> </li>
				<li> <a href="coupleSchedule.jsp">취소</a> </li>
			</ul>
		</nav>
	</form>
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