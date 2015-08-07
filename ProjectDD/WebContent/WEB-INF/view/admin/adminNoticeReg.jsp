<%@page import="com.dailydate.web.dao.mybatis.MyBatisNoticeDao"%>
<%@page import="com.dailydate.web.dao.NoticeDao"%>
<%@page import="com.dailydate.web.vo.Notice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
 <%
 	if(request.getMethod().equals("POST")) //POST요청이라면
	{
		String title = request.getParameter("title");
		String content =  request.getParameter("content");
		
		Notice notice = new Notice();
		notice.setTitle(title);
		notice.setContent(content);
		notice.setAdminId("admin");
		
		NoticeDao noticeDao = new MyBatisNoticeDao();
		noticeDao.addNotice(notice);
				
		response.sendRedirect("adminNotice.jsp");  //등록 완료 되면 목록으로 이동
	}
 %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자_공지사항</title>
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
		<li>회원</li>
		<li>게시판</li>
		<li>장소</li>
		<li>코스</li>
		<li>행사</li>
		</ul>
	</aside>
	
   <main>
      <section>
         <h1>공지사항 관리 페이지</h1>
         <nav>
         	<h1>게시판 세부메뉴</h1>
         	<ul>
         		<li>공지사항</li>
         		<li><a href="../board/Board.jsp">자유게시판</a></li>
         		<li>추천장소</li>
         	</ul>
         </nav>
         
        <section>
			<h1>공지사항 등록 정보</h1>
			<form method="post" >
			<dl>
				<dt>제목</dt>
				<dd><input type="text" name="title"/></dd>
				<dt>내용</dt>
				<dd>
					<textarea rows="20" cols="40" name="content"></textarea>
				</dd>
			</dl>
            <p>
				<input type="submit" value="등록"/>
				<a  href="adminNotice.jsp">취소</a>
			</p> 
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