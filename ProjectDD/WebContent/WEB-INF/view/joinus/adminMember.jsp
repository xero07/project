<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>

</head>
<body>
	<header>
		<h1>Daily Date</h1>
		<section>
			<h1>헤더</h1>
			<nav>
				<h1>회원 상태창</h1>
				<ul>
					<li>admin님</li>
					<li>logout</li>
				</ul>
			</nav>
		</section>
	</header>

	<main>
	<section>

		<section>
			<p>회원목록</p>
		</section>

		<section>
			<h1>회원정보목록</h1>
			<table>
				<thead>
					<tr>
						<td> </td>
						<td>닉네임</td>
						<td>E-MAIL</td>
						<td>비밀번호</td>
						<td>가입일</td>
						<td>스크랩</td>
						<td>커플닉네임</td>
						<td>성별</td>
						<td>연령대</td>
					</tr>
				</thead>
				<tbody>
					<form method="post" action="memberDelete">
						<input type="submit" value="삭제" />
							<c:forEach var="n" items="${list}">
						<tr>
								<td><input type="checkbox" name="check" value="${n.id}"></td>
								<td>${n.id}</td>
								<td>${n.email}</td>
								<td>${n.password}</td>
								<td><fmt:formatDate value="${n.regDate}" pattern="yyyy-MM-dd" /></td>
								<td>40</td>
								<td>봄</td>
								<td>${n.gender}</td>
								<td>${n.age}</td>
							</c:forEach>
						</tr>
					</form>


				</tbody>
			</table>
		</section>

	</section>
	</main>
</body>
</html>