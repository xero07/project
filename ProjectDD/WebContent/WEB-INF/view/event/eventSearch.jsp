<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div>
	<form method="get" action="eventSearch?c=${key}">
		<section>
			<h1>행사 관리 페이지</h1>
			<section>
				<h1>행사 검색</h1>
				<fieldset>
					<legend>행사 검색 폼</legend>
					<label>행사 검색</label> <input type="text" name="c" /> <input
						type="submit" value="검색" />
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
							<td><input type="checkbox" value="${e.code}" name="checkbox" /></td>
							<td>${e.code}</td>
							<td><a href="eventDetail?c=${e.code}">${e.name}</a></td>
							<td><fmt:formatDate value="${e.startDate}"
									pattern="yyyy년MM월dd일" /></td>
							<td><fmt:formatDate value="${e.endDate}"
									pattern="yyyy년MM월dd일" /></td>
							<td>${e.address}</td>
						</tr>
					</tbody>
				</c:forEach>
			</table>
		</section>

		<section>
			<h1>버튼 목록</h1>
			<a href="eventReg">등록</a> <input type="submit" value="삭제" />
		</section>
	</form>

	<nav>
		<h1>페이지</h1>
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
</div>