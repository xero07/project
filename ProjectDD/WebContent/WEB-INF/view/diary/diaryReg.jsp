<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<div id="content">
		<h1>커플일기</h1>

		<div class="reg-table">
			<h1 class="hidden">커플 일기 내용</h1>
			
			<form method="post" enctype="multipart/form-data" >
				<legend class="hidden">커플 일기 작성</legend>
				<fieldset>
					<table align="center">
						<tr>
							<th class="hidden">제목</th>
							<td id="today">
								<div>
								<jsp:useBean id="now" class="java.util.Date"/>
								<fmt:formatDate value="${now}" pattern="yyyy.MM.dd"/>
								</div> 
							</td>
						</tr>
						<tr id="reg-file">
							<th class="hidden">이미지</th>
							<td>
								<input name="title" type="text" />
								<div class="filebox">
									<label for="file-up">이미지</label> 
									<input type="file" id="file-up" multiple name="file">
								</div>
							</td>
						</tr>
						<tr>
							<th class="hidden">내용</th>
							<td>
								<textarea cols="60" rows="20" name="content"></textarea>
							</td>
						</tr>
					</table>
				</fieldset>
				
				<div id="reg-btn">
					<input type="submit" value="등록" class="btn-simple"/> 
					<a href="diary"><input type="button" value="취소" class="btn-simple"/></a> 
					<a href="diary"><input type="button" value="목록" class="btn-simple"/></a>
				</div>
			</form>
		</div>

		
</div>