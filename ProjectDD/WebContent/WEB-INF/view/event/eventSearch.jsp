<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
				<!-- <form>
					<fieldset>
						<legend>검색정보</legend>
						<label>코스검색</label> 
						<input type="text" autofocus="autofocus"/> 
						<input type="submit"value="검색" />
					</fieldset>
				</form> -->
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
		<li><a href="../admin/adminNotice.jsp">게시판</a></li>
		<li>장소</li>
		<li>코스</li>
		<li>행사</li>
		</ul>
	</aside>
	
   <main>
   <form method="get" action="eventSearch?c=${c}">
      <section>
         <h1>행사 관리 페이지</h1>
         <section>
            <h1>행사 검색</h1>
               <fieldset>
                  <legend>행사 검색 폼</legend>
                  <label>행사 검색</label>           
                     <input type="text" name="c" />
                     <input type="submit" value="검색" />               
               </fieldset>
		</section>
	</form>
	<form method="POST">     
         <section>      
            <h1>검색결과 표</h1>
               <table>
                  <thead>
                     <tr>
                        <th>체크박스</th>
                        <th>코드</th>
                        <th>이름</th>
                        <th>시작일</th>
                        <th>종료일</th>
                        <th>장소</th>
                     </tr>
                  </thead>
               
                  <c:forEach var="e" items="${list}">
                  <tbody>
                     <tr>
                        <td><input type="checkbox" value="${e.code}" name="checkbox"/></td>
                        <td>${e.code}</td>
                        <td><a href="eventDetail?c=${e.code}">${e.name}</a></td>
                        <td><fmt:formatDate value="${e.startDate}" pattern="yyyy년MM월dd일"/></td>
                        <td><fmt:formatDate value="${e.endDate}" pattern="yyyy년MM월dd일"/></td>
                        <td>${e.address}</td>
                     </tr>
                  </tbody>
                  </c:forEach>
               </table>
         </section>
         
         <section>
            <h1>버튼 목록</h1>
            <a href="eventReg">등록</a>
            <input type="submit" value="삭제" />
         </section>
	</form>
	              
               <nav>
                  <h1>페이지</h1>
                  <ul>
                     <li><a href="event?c=1">1</a></li>
                     <li><a href="event?c=2">2</a></li>
                     <li><a href="">3</a></li>
                     <li><a href="">4</a></li>
                     <li><a href="">5</a></li>
                     <li><a href="">6</a></li>
                     <li><a href="">7</a></li>
                     <li><a href="">8</a></li>
                     <li><a href="">9</a></li>
                     <li><a href="">10</a></li>
                  </ul>
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