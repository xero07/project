<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


	<section id="content">
		<h1>커플일기</h1>

		<section>
			<h1 class="hidden">글쓰기</h1>
			<ul>
				<li><a href="diaryReg">글쓰기</a></li>
			</ul>
		</section>

		<div class="list-table">
			<form>
				<h1 class="hidden">일기 목록</h1>

				<table>
				<thead>
					<tr>
						<th></th>
						<th>번호</th>
						<th>제목</th>
						<th>등록일</th>
						<th>작성자</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="n" items="${list}">
						<tr>
							<td><input type="checkbox" /></td>
							<td>${n.code}</td>
							<td class="title"><a href="diaryDetail?c=${n.code}">${n.title}</a></td>
							<td><fmt:formatDate value="${d.regDate}" pattern="yyyy-MM-dd" /></td>
							<td>${n.memberId }</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</form>
		</div>

		<nav id="pager">
			<h1 class="hidden">페이지</h1>
			<ul>
				<li><a href="">1</a></li>
				<li><a href="">2</a></li>
				<li><a href="">3</a></li>
				<li><a href="">4</a></li>
				<li><a href="">5</a></li>
			</ul>
		</nav>

	</section>
	