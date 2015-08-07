<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자_행사</title>
<script type="text/javascript" src="../js/modernizr.js"></script>
<style>
	html, body,
	div, span,
	dl, dt, dd, ul, ol, li,
	h1, h2, h3, h4, h5, h6,
	blockquote, p, address, pre, cite,
	form, fieldset, input, textarea, select,
	table, th, td
	{
		margin: 0;
		padding: 0;
	}
	
	h1, h2, h3, h4, h5, h6 {  
		font-size:100%;   
		font-weight:normal;   
	} 

	ul { list-style:none; }
	
	a{ text-decoration: none; }
	
	#logo
	{
		position: absolute;
		left:15px;
		top:30px;
	}
	#top
	{
		margin:0;
		height: 25px;
		background: #787878;

	}
	#header
	{
		width: 100%;
		height: 105px;
		background: #5AD4C8;
	}
	#page li { display:inline; }
	
	#loginmenu{
		margin-left: 930px;
		padding-top: 5px;
	}
	
	#mainmenu{
		margin-left: 633px;
	}
	
	#mainmenu li {
		font-size: 15px;
		font-weight: bold;
		float:left;
		padding-left: 10px;	
		margin-top: -3px;
	}
	
	
	#loginmenu li
	{	
		font-size:12px;
		font-weight:bold;
		color: #ffffff;
		float:left;
		padding-left: 15px;	
	}
	
	#loginmenu a{color: #ffffff;}
	
	#loginmenu input
	{
		border-style: none;
		border-bottom: thin solid #000000;
		margin-bottom: 5px;
	}
	
	
	/* #mainmenu img{
		width: 80px;
		height: 80px;
	}
	 */
	#body
	{
		height: 1100px;
	}
	
	#aside
	{
		height: inherit;
		width: 25%;
		float: left;
	}
	
	#main
	{
		height: inherit;
		width: 75%;
		float: left;
	}
	
	#footer
	{
		height: 100px;
		background: black;
		clear: left;
	}
	.content-wrapper
	{
		height: 100%;
		width:100%;
		margin-left:auto;
		margin-right:auto;
	}	
	
	.hidden
	{
		display: none !important;
	}
	
</style>
</head>
<body>

	<header id="header">
	<div class="content-wrapper">
	
			<h1 id="logo">
				<a href=""><img src="../images/로고.png" alt="데일리데이트" /></a>
			</h1>
			<nav id="top">
				<h1 class="hidden">회원메뉴</h1>
				<ul id="loginmenu">
					<li><a href="">JOIN US</a></li>
					<li><a href="">LOGIN</a></li>
					<li>
						<input type="text" autofocus/>&nbsp;
						<input type="submit" value="검색" />
					</li> 
				</ul>
			</nav>
			<section>
			<nav>
				<h1 class="hidden">메인메뉴</h1>
				<ul id="mainmenu">
					<li>
					<a href="">
					<img src="../images/코스만들기1.png" onmouseover="this.src='../images/코스만들기2.png'"
						onmouseout="this.src='../images/코스만들기1.png'"/>
					</a>
					</li>
					<li>
					<a href="">
					<img src="../images/추천코스1.png" onmouseover="this.src='../images/추천코스2.png'"
						onmouseout="this.src='../images/추천코스1.png'"/>
					</a>
					</li>
					<li>
					<a href="">
					<img src="../images/커플다이어리1.png" onmouseover="this.src='../images/커플다이어리2.png'"
						onmouseout="this.src='../images/커플다이어리1.png'"/>
					</a>
					</li>
					<li>
					<a href="">
					<img src="../images/내주변1.png" onmouseover="this.src='../images/내주변2.png'"
						onmouseout="this.src='../images/내주변1.png'"/>
					</a>
					</li>
					<li>
					<a href="">
					<img src="../images/장소검색1.png" onmouseover="this.src='../images/장소검색2.png'"
						onmouseout="this.src='../images/장소검색1.png'"/>
					</a>
					</li>
					<li>
					<a href="">
					<img src="../images/행사1.png" onmouseover="this.src='../images/행사2.png'"
						onmouseout="this.src='../images/행사1.png'"/>
					</a>
					</li>
					<li>
					<a href="">
					<img src="../images/게시판1.png" onmouseover="this.src='../images/게시판2.png'"
						onmouseout="this.src='../images/게시판1.png'"/>
					</a>
					</li>
				</ul>
			</nav>
			</section>
			</div>
	</header>
	
	<div id="body">
	<div class="content-wrapper">
	<aside id="aside">
	<h1 class="hidden">세부메뉴</h1>
		<ul>
		<li>회원</li>
		<li><a href="../admin/adminNotice.jsp">게시판</a></li>
		<li>장소</li>
		<li>코스</li>
		<li>행사</li>
		</ul>
	</aside>
	
   <main id="main" class="clearfix">
   <form method="post">
      <section>
         <h1 class="hidden">행사 관리 페이지</h1>
         <section>
            <h1 class="hidden">행사 검색</h1>
               <fieldset>
                  <legend class="hidden">행사 검색 폼</legend>
                  <label class="hidden">행사 검색</label>           
                     <input type="text" name="name" />
                     <input type="submit" value="검색" />                
               </fieldset>
         </section>
         
         <section>      
            <h1 class="hidden">검색결과 표</h1>
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
               
                  <c:forEach var="n" items="${list}">
                  <tbody>
                     <tr>
                        <td><input type="checkbox" value="" /></td>
                        <td>${n.code }</td>
                        <td><a href="adminEventDetail?c=${n.code} ">${n.name}</a></td>
                        <td><fmt:formatDate value="${n.startDate}" pattern="yyyy년MM월dd일"/></td>
                        <td><fmt:formatDate value="${n.endDate}" pattern="yyyy년MM월dd일"/></td>
                        <td>${n.address }</td>
                     </tr>
                  </tbody>
                  </c:forEach>
               </table>
         </section>
      	     </form> 
               
               <section>
                  <h1 class="hidden">버튼 목록</h1>
                  <a  href="adminEventReg">등록</a>
                  <input type="button" value="삭제" />
               </section>
              
               <nav id="page">
                  <h1 class="hidden">페이지</h1>
                  <ul>
                     <li><a href="">1</a></li>
                     <li><a href="">2</a></li>
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
   </div>
   </div>
   
   	<footer id="footer">
   	<div class="content-wrapper">
		<section>
			<h1 class="hidden">저작권 정보</h1>
			<p>Copyright ⓒdailydate.com / member : An, Jung, Bom, JJune, Gyung</p>
		</section>
		</div>
	</footer>
</body>
</html>