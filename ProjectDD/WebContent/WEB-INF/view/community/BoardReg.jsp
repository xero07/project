<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<div id="content">
		<h1 class="hidden">자유게시판</h1>

		<section class="reg-table">
			<h1 class="hidden">자유게시판 글쓰기</h1>
			<form method="post"> 
			<table align="center">
			<tbody>
				<tr>
					<td>
						<select name="subject">
						<option value="수다">수다</option>
						<option value="질문">질문</option>
						</select>
					</td>
				</tr>
				<tr>
					<td><input type="text" name="title"/></td>
				</tr>
				<tr>
					<td><textarea rows="20" cols="60" name="content"></textarea></td>
				</tr>
				</tbody>
			</table>
			<p>
				<input type="submit" value="등록" class="btn-simple"/>
				<a href="Board"><input type="button" value="취소" class="btn-simple"/></a>
			</p>			
			</form>
		</section>
		
	</div>