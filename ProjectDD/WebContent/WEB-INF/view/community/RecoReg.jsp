<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<div id="content">
		<h1 class="hidden">자유게시판</h1>

		<section class="reg-table">
			<h1 class="hidden">자유게시판 글쓰기</h1>
			<form method="post" enctype="multipart/form-data"> 
			<table>
			<tbody>
				<tr>
					<th>추천 장소명</th>
					<td><input type="text" name="title" /></td>
				</tr>
				<tr>
					<th>지역</th>
					<td>
						<input type="radio" name="region" value="서울"/>서울
						<input type="radio" name="region" value="경기"/>경기
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="20" cols="50" name="content"></textarea></td>
				</tr>
				<tr>
					<th>이미지</th>
					<td><input type="file" multiple name="file"/></td>
				</tr>
				</tbody>
			</table>
			<p>
				<input type="submit" value="등록" />
				<a href="Reco">취소</a>
			</p>			
			</form>
		</section>
		
	</div>