<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="ctxName" value="${pageContext.request.contextPath }" />

	<section>
		<h1 class="hidden">커플일기</h1>

		<section>
			<h1 class="hidden">커플 일기 내용</h1>
			
			<form method="post" enctype="multipart/form-data">
				<legend class="hidden">커플 일기 작성</legend>
				<fieldset>
					<table>
						<tr>
							<dt>제목</dt>
							<dd>
								<input name="title" type="text" value="${d.title}">
							</dd>
						</tr>
						<tr>
							<dt>이미지</dt>
							<dd>
								<input type="file" multiple name="file">
								<img src="${ctxName}/resource/diary/upload/${di.name}" />
							</dd>
						</tr>
						<tr>
							<dt>내용</dt>
							<dd>
								<textarea cols="40" rows="20" name="content" `></textarea>
							</dd>
						</tr>
					</table>
				</fieldset>
				<div>
					<input type="submit" value="수정" />
				</div>
			</form>
		</section>

	</section>
