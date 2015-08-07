<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctxName" value="${pageContext.request.contextPath }" />


	<section id="content">
		<h1 class="hidden">커플일기</h1>

		<section class="detail">
			<h1 class="hidden">일기내용</h1>

			<table>
				<tr>
					<dt class="hidden">제목</dt>
					<dd class="detail-title">${d.title}</dd>
				</tr>
				
				<tr>
					<dt class="hidden">작성자</dt>
					<dd class="detail-id">${d.memberId}</dd>
				</tr>
				
				<tr>
					<dt class="hidden">등록일</dt>
					<dd class="detail-date"><fmt:formatDate value="${d.regDate}" pattern="yyyy-MM-dd" /></dd>
				</tr>
				<tr>
					<dt class="hidden">이미지</dt>
					<dd><img src="${ctxName}/resource/upload/diary/${di.name}" /></dd>
				</tr>
				<tr>
					<dt class="hidden">내용</dt>
					<dd class="detail-content">${d.content}</dd>
				</tr>
			</table>
		</section>

		<section>
			<h1 class="hidden">버튼</h1>
			<form method="post" action="diaryDelete?c=${d.code}">
				<input type="submit" value="삭제" >
				<a href="diaryUdtReg?c=${d.code}">수정</a>
				<a href="diary">목록</a>
				<!-- <input type="button" value="수정" /> <input type="button" value="목록" /> -->
				<!-- <a href="diary">삭제</a> -->
			</form>
			<%-- <form method="post" action="diaryUpdate?c=${d.code}">
				<input type="submit" value="수정">
			</form> --%>
		</section>

	</section>
	