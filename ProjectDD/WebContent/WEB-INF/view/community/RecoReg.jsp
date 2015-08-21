<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<div id="content">
		<h1 class="hidden">자유게시판</h1>

		<section class="reg-table">
			<h1 class="hidden">자유게시판 글쓰기</h1>
			<form method="post" enctype="multipart/form-data"> 
			<table align="center">
			<tbody>
				<tr>
					<td><input type="text" name="title" /></td>
				</tr>
				<tr>
					<td>
						지역 : 
						<input type="radio" name="region" value="서울"/>서울
						<input type="radio" name="region" value="경기"/>경기
					</td>
				</tr>
				<tr>
					<td><textarea rows="20" cols="60" name="content"></textarea></td>
				</tr>
				<tr>
					<td><input type="file" multiple name="file"/></td>
				</tr>
				</tbody>
			</table>
			<p>
				<input type="submit" value="등록" class="btn-simple"/>
				<a href="Reco">취소</a>
			</p>			
			</form>
		</section>
		
	</div>