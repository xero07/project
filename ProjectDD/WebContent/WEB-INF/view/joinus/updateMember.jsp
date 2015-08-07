<%@page import="com.dailydate.web.dao.mybatis.MyBatisMemberDao"%>
<%@page import="com.dailydate.web.dao.MemberDao"%>
<%@page import="com.dailydate.web.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	if (request.getMethod().equals("POST")) {
		
		Member member = new Member();
	

		MemberDao memberDao = new MyBatisMemberDao();
		String id = request.getParameter("i");
		Member m = memberDao.getMember(id);
		
		request.setAttribute("m", m);
		

		
		response.sendRedirect("adminMember.jsp");
		
		/* NoticeDao noticeDao = new MyBatisNoticeDao();
		String code = request.getParameter("c");
		Notice n = noticeDao.getNotice(code);
		request.setAttribute("n", n); */
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	</nav> <section>
	<h1>코스검색폼</h1>
	<form>
		<fieldset>
			<legend>검색정보</legend>
			<label>코스검색</label> <input type="text" autofocus /> <input
				type="submit" value="검색" />
		</fieldset>
	</form>
	</section> <nav>
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
	</nav> </section> </header>
	
	<main>
		<section>
			<h1>회원 정보수정</h1>
			
			<form method="post">
			<fieldset>
			<table>
						<tr>
							<td>* 닉네임</td>
							<td><input type="text" name="id" value="" size="10"
								maxlength="12"></td>
						</tr>

						<tr>

							<td>* 이메일</td>
							<td><input type="text" name="email" size="10"></input> @ <select
								name="email2">
									<option value=' '>선택</option>
									<option value="naver.com">naver.com</option>
									<option value="nate.com">nate.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="yahoo.co.kr">yahoo.co.kr</option>
							</select></td>
							<td>* 이메일은 비밀번호를 찾을 때 사용됩니다.</td>
						</tr>

						<tr>
							<td>· 사진</td>
							<td>미리보기<br />
								<div id="imagePreview"></div> <br>
							</td>
							<td><input id="image" type="file" onchange="InputImage();">
								<br /> <input type="reset" name="삭제" value="삭제"></td>


						</tr>

						<tr>
							<td>* 비밀번호</td>
							<td><input type="password" name="password"></td>
							<td>* 영문 대소문자/숫자를 혼용하여 6~16글자</td>
						</tr>

						<tr>
							<td>* 비밀번호 확인</td>
							<td><input type="password" name="checkpwd"></td>
						</tr>

						<tr>
							<td>* 성별</td>
							<td><input type="radio" name="gender" value="1" />남 <input
								type="radio" name="gender" value="2" />여</td>
						</tr>

						<tr>
							<td>* 연령대</td>
							<td><input type="radio" name="age" value="1" />10대 <input
								type="radio" name="age" value="2" />20대 <input type="radio"
								name="age" value="3" /> 30대</td>
						</tr>
					</table>
					</fieldset>
					<div>
					<input type="submit" value="수정" />
					<input type="submit" value="탈퇴" />
					<input type="reset" value="취소" />
				</div>
					</form>
			
			
	</main>

</body>
</html>