<%@page import="com.dailydate.web.dao.mybatis.MyBatisScheduleDao"%>
<%@page import="com.dailydate.web.vo.Schedule"%>
<%@page import="java.util.List"%>
<%@page import="com.dailydate.web.dao.ScheduleDao"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
	ScheduleDao scheduleDao = new MyBatisScheduleDao();
	List<Schedule> list = scheduleDao.getSchedules(1,"Title","");
	request.setAttribute("list", list);
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
	<h1>일정관리</h1>
	
	<section>
			<h1>일정 목록</h1>
			<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>장소</th>
						<th>날짜</th>
						<th>작성자</th>
					</tr>
				</thead>
				<tbody>
				
				<c:forEach var="n" items="${list}"> 
					<tr>
						<td>${n.code }</td>
						<td><a href="coupleScheduleDetail.jsp?c=${n.code} ">${n.title }</a></td>
						<td>${n.place }</td>
						<td><fmt:formatDate value="${n.regDate}" pattern="yyyy-MM-dd"/></td>
						<td>${n.memberId}</td>
					</tr>
				</c:forEach>
				
				</tbody>
			</table>
		</section>
		
		<nav>
			<h1>글쓰기버튼</h1>
				<a href="coupleScheduleReg.jsp">글쓰기</a>
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