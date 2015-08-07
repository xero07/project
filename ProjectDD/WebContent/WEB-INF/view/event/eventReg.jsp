<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
		<h1>행사 등록 화면</h1>
		<section>
			<h1>행사 등록 정보</h1>
			<form method="post" enctype="multipart/form-data">
			<dl>
				<dt>이름</dt>
				<dd><input type="text" name="name"/></dd>
				<dt>주소</dt>
				<dd><input type="text" name="address"/></dd>
				<dt>시작일</dt>
				<dd><input type="date" name="startDate"/></dd>
				<dt>종료일</dt>
				<dd><input type="date" name="endDate"/></dd>
				<dt>주최자</dt>
				<dd><input type="text" name="host"/></dd>	
				<dt>주최자 연락처</dt>
				<dd><input type="text" name="hostContact"/></dd>					
				<dt>파일첨부</dt>
				<dd><input type="file" name="file"/></dd>
				</dl>
				<p>
					<input type="submit" value="등록"/>
					<a href="event">취소</a>
				</p>
			</form>
		</section>
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