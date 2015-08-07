<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
 
	<div id="content">
	<form action="placeSearched" method="get">
		<input type="text"  name="c" />
		<input type="submit" value="검색" />
	</form>
	
	<form method="post">
		<table>
			<thead>
				 <tr>
				 	<td>check</td>
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
			
			
			<c:forEach var="p" items="${list}">	
				<tbody>
					 <tr>
					 	<td><input type="checkbox" value="${p.code}"  name="checkbox"></td>
					 	<td>${p.code}</td>
					 	<td><a href="placeDetail?c=${p.code}">${p.name}</a></td>
					 	<td>${p.region}</td>
					 	<td>${p.theme}</td>
					 	<td>${p.address}</td>
					 	<td>${p.cost}</td>
					 	<td>${p.regDate}</td>
					 	<td>${p.starRating}</td>
					 	<td>${p.adminId}</td>
					 </tr>
				</tbody>
			</c:forEach>
		</table>
		<input type="submit" value="삭제" />
		<a href="placeReg">등록</a>
	</form>
	
	<ul>
		<li>
			<a href="place?n=1">1</a>
		</li>
		<li>
			<a href="place?n=2">2</a>
		</li>
		<li>
			<a href="">3</a>
		</li>
		<li>
			<a href="">4</a>
		</li>
		<li>
			<a href="">5</a>
		</li>
	</ul>
	</div>
	