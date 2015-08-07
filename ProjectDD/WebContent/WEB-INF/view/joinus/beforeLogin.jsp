<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
               <li><a href="memberReg">JOIN US</a></li>
               <li><a href="../joinus/login">LOGIN</a></li>
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

   <main>
   <section>
      <h1>메인화면</h1>
      <table border="1">
         <tr align="center">
            <td colspan="2">추천코스</td>
         </tr>
         <tr>
            <td>인기장소</td>
            <td>이달의 행사</td>
         </tr>
         <tr>
            <td>New 장소</td>
            <td>테마별 장소</td>
         </tr>
      </table>
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