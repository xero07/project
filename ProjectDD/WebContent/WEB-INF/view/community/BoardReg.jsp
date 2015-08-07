<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<div id="content">
		<h1 class="hidden">자유게시판</h1>

		<section class="reg-table">
			<h1 class="hidden">자유게시판 글쓰기</h1>
			<form method="post"> 
			<table>
			<tbody>
				<tr>
					<th>말머리</th>
					<td>
						<select name="subject">
						<option value="수다">수다</option>
						<option value="질문">질문</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title"/></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="20" cols="50" name="content"></textarea></td>
				</tr>
				</tbody>
			</table>
			<p>
				<input type="submit" value="등록" class="btn"/>
				<a href="Board" class="btn">취소</a>
			</p>			
			</form>
		</section>
		
	</div>