<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


	<section id="content">
		<h1>커플일기</h1>

		<section>
			<h1 class="hidden">커플 일기 내용</h1>
			
			<form method="post" enctype="multipart/form-data" >
				<legend class="hidden">커플 일기 작성</legend>
				<fieldset>
					<table>
						<tr>
							<th>제목 : </th>
							<td>
								<input name="title" type="text" />
							</td>
						</tr>
						<tr>
							<th>이미지 : </th>
							<td>
								<input type="file" multiple name="file">
							</td>
						</tr>
						<tr>
							<th>내용 : </th>
							<td>
								<textarea cols="40" rows="20" name="content"></textarea>
							</td>
						</tr>
					</table>
				</fieldset>
				<div>
					<input type="submit" value="등록" class="btn-simple"/> 
					<a href="diary"><input type="button" value="취소" class="btn-simple"/></a> 
					<a href="diary"><input type="button" value="목록" class="btn-simple"/></a>
				</div>
			</form>
		</section>

		
</section>