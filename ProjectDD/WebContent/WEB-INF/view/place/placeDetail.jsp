<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
	<div>
	<table>
		<thead>
			<tr>
				<td>코드</td>
			 	<td>이름</td>
			 	<td>지역</td>
			 	<td>테마</td>
			 	<td>주소</td>
			 	<td>가격</td>
			 	<td>등록일</td>
			 	<td>별점</td>
			 	<td>관리자</td>
			</tr>
		</thead>
		
		<tbody>
			<tr>
				<td>${p.code}</td>
			 	<td>${p.name}</td>
			 	<td>${p.region}</td>
			 	<td>${p.theme}</td>
			 	<td>${p.address}</td>
			 	<td>${p.cost}</td>
			 	<td><fmt:formatDate value="${p.regDate}" pattern="yyyy-MM-dd" /></td>
			 	<td>${p.starRating}</td>
			 	<td>${p.adminId}</td>
			</tr>
		</tbody>
	</table>
	
 	<table>
	<dt>이미지</dt>
    	<dd><img src="${ctxName}/resource/upload/place/${pf.name}" /></dd>
	 	
 		<thead>
 			<tr>
 				<td>코드</td>
 				<td>장소코드</td>
 				<td>아이디</td>
 				<td>등록일</td>
 				<td>내용</td>
 			</tr>
 		</thead>
 		<tbody>
		 	<c:forEach var="pc" items="${pc}">	
			 <tr>
			 	<td>${pc.code}</td>
			 	<td>${pc.placeCode}</td>
			 	<td>${pc.memberId}</td>
			 	<td>${pc.regDate}</td>
			 	<td>${pc.content}</td>
			 </tr>
			</c:forEach>
		</tbody>
	</table>
	
	
	<form method="POST" action="placeCommentAdd" enctype="multipart/form-data">
      <fieldset>
         <dt class="hidden">placeCode</dt>
         <dd><input name="placeCode" value="${p.code}"></dd>
         <dt>MemberId</dt>
         <dd><security:authentication property="name"/></dl>
         <dt>내용</dt>
         <dd><input name="content"></dl>
                                    
         <div><input type="submit" value="등록"></div>
      </fieldset>
   </form>   
	 	
	<div> 	
		<h1 class="hidden">버튼 목록</h1>
	 	<form method="POST" action="placeDelete?c=${p.code}">
	 		<input type="submit" value="삭제">
	 	</form>
	 	<%-- <form method="GET" action="placeEdit?c=${p.code}">
	 		<input type="submit" value="수정"> --%>
	 	<a href="placeEdit?c=${p.code}">수정</a>
	 	<a href="place">목록</a>
 	</div>
</div>
