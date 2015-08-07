<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
   <section id="content">
   <form method="get" action="eventSearch?c=${c}">
         <h1 class="hidden">행사 관리 페이지</h1>
         <section>
            <h1 class="hidden">행사 검색</h1>
               <fieldset>
                  <legend class="hidden">행사 검색 폼</legend>
                  <label class="hidden">행사 검색</label>           
                     <input type="text" name="c" />
                     <input type="submit" value="검색" />               
               </fieldset>
		</section>
	</form>
	<form method="POST">     
         <section>      
            <h1 class="hidden">검색결과 표</h1>
               <table>
                  <thead>
                     <tr>
                        <th></th>
                        <th>코드</th>
                        <th>이름</th>
                        <th>시작일</th>
                        <th>종료일</th>
                        <th>장소</th>
                        <th>주최자</th>
                        <th>주최자 연락처</th>
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
                        <td>${e.host}</td>
                        <td>${e.hostContact}</td>
                     </tr>
                  </tbody>
                  </c:forEach>
               </table>
         </section>
         
         <section>
            <h1 class="hidden">버튼 목록</h1>
            <a href="eventReg">등록</a>
            <input type="submit" value="삭제" />
         </section>
	</form>
	              
               <nav id="pager">
                  <h1 class="hidden">페이지</h1>
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
