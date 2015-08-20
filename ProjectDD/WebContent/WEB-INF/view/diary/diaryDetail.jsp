<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctxName" value="${pageContext.request.contextPath }" />


	<div id="content">
		<h1 class="hidden">커플일기</h1>

		<div id="detail-diary">
			<h1 class="hidden">일기내용</h1>

			<table align="right">
				<tr>
					<th class="hidden">제목</th>
					<td id="detail-title">"${d.title}"</td>
				</tr>

				<tr>
					<th class="hidden">등록일</th>
					<td id="detail-date"><fmt:formatDate value="${d.regDate}" pattern="yyyy년 MM월 dd일 " /></td>
				</tr>
				<tr>
					<th class="hidden">이미지</th>
					<td id="detail-img" ><img src="${ctxName}/resource/upload/diary/${di.name}" align="middle"/></td>
				</tr>
				<tr>
					<th class="hidden">내용</th>
					<td id="detail-content">${d.content}</td>
				</tr>
			</table>
		</div>

		<div id="detail-btn">
			<h1 class="hidden">버튼</h1>
			<form method="post" action="diaryDelete?c=${d.code}">
				<input type="submit" value="삭제" class="btn-simple"/>
			</form>
				<a href="diaryUdtReg?c=${d.code}"><input type="button" value="수정" class="btn-simple"/></a>
				<a href="diary"><input type="button" value="목록" class="btn-simple"/></a>
		</div>

	</div>
	