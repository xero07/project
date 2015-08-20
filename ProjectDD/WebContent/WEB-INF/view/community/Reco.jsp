<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>

	<div id="content">
		<h1 class="hidden">추천장소</h1>
		
		<div id="radio">
			 지역 : 
			<input type="radio" name="region" value="1" checked/>서울
			<input type="radio" name="region" value="2"/>경기
		</div>
		
		<div class="button">
			<h1 class="hidden">글쓰기 버튼</h1>
			<!-- <a href="RecoReg">글쓰기</a> -->
			<a href="RecoReg"><input type="button" value="글쓰기" class="btn-simple"/></a>
		</div>
		<div class="list-table">
			<h1 class="hidden">추천장소 목록</h1>
			<table align="center">
				<thead>
					<tr>
						<th>번호</th>
						<th>지역</th>
						<th>제목</th>
						<th>등록일</th>
						<th>테마</th>
						<th>작성자</th>
					</tr>
				</thead>
				<tbody>
				
				<c:forEach var="n" items="${list}"> 
					<tr>
						<td>${n.code }</td>
						<td>${n.region }</td>
						<td class="title"><a href="RecoDetail?c=${n.code} ">${n.title }</a></td>
						<td><fmt:formatDate value="${n.regDate}" pattern="yyyy-MM-dd"/></td>
						<td></td>
						<td>${n.memberId}</td>
					</tr>
				</c:forEach>
				
				</tbody>
			</table>
		</div>
		
		<div class="list_number">
			<p>
			<div class="list_n_menu">
				<span class="disabled">< 이전</span><span class="current">1</span><a
					href="#?page=2">2</a><a href="#?page=3">3</a><a href="#?page=4">4</a><a
					href="#?page=5">5</a><a href="#?page=2">다음 ></a>
			</div>
			</p>
		</div>
		
		<div class="search">
			<h1 class="hidden">게시판 글 검색</h1>
			<form>
				<fieldset>
					<legend class="hidden">검색 폼</legend>
					<select>
						<option>제목+내용</option>
						<option>닉네임</option>
					</select> 
					<input type="text" name="search" /> 
					<input type="submit" value="검색" class="btn-search"/>
				</fieldset>
			</form>
		</div>	
		
	</div>