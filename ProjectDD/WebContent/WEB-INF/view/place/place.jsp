<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
 
	<div id="content">
	<form action="placeSearched" method="get">
		<input type="text"  name="c" />
		<input type="submit" value="검색" />
	</form>
	
	<div class="list-table">
	<form method="post">
		<table>
			<thead>
				 <tr>
				 	<td></td>
				 	<td>코드</td>
				 	<td>이름</td>
				 	<td>지역</td>
				 	<td>테마</td>
				 	<td class="addr">주소</td>
				 	<td class="price">가격</td>
				 	<td class="reg">등록일</td>
				 	<td class="star">별점</td>
				 	<td>관리자</td>
				 </tr>
			</thead>
			
			
			<c:forEach var="p" items="${list}">	
				<tbody>
					 <tr>
					 	<td><input type="checkbox" value="${p.code}"  name="checkbox"></td>
					 	<td>${p.code}</td>
					 	<td class="title"><a href="placeDetail?c=${p.code}">${p.name}</a></td>
					 	<td>${p.region}</td>
					 	<td>${p.theme}</td>
					 	<td class="addr">${p.address}</td>
					 	<td class="price">${p.cost}</td>
					 	<td class="reg"><fmt:formatDate value="${p.regDate}" pattern="yyyy-MM-dd" /></td>
					 	<td class="star">${p.starRating}</td>
					 	<td>${p.adminId}</td>
					 </tr>
				</tbody>
			</c:forEach>
		</table>
		<input type="submit" value="삭제" />
		<a href="placeReg">등록</a>
	</form>
	</div>
	<nav id="pager">
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
	</nav>
	</div>
	