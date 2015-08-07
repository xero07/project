<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<div id="content">
		<h1 class="hidden">자유게시판</h1>
		<div>
			<h1 class="hidden">글쓰기 버튼</h1>
			<a href="BoardReg" id="link">글쓰기</a>
		</div>
		<div class="list-table">
			<h1 class="hidden">자유게시판 목록</h1>
			<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>말머리</th>
						<th>제목</th>
						<th>등록일</th>
						<th>조회수</th>
						<th>작성자</th>
					</tr>
				</thead>
				<tbody>
				
				<c:forEach var="n" items="${list}"> 
					<tr>
						<td>${n.code }</td>
						<td>${n.subject }</td>
						<td class="title"><a href="BoardDetail?c=${n.code} ">${n.title }</a></td>
						<td><fmt:formatDate value="${n.regDate}" pattern="yyyy-MM-dd"/></td>
						<td>0</td>
						<td>${n.memberId}</td>
					</tr>
				</c:forEach>
				
				</tbody>
			</table>
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
					<input type="submit" value="검색"/>
				</fieldset>
			</form>
		</div>	
		
		<nav id="pager">
               <h1 class="hidden">페이저</h1>
               <p><a href="">이전</a></p>
               <ul>
                  <li><a href="">1</a></li>
                  <li><a href="">2</a></li>
                  <li><a href="">3</a></li>
                  <li><a href="">4</a></li>
                  <li><a href="">5</a></li>
               </ul>
               <p><a href="">다음</a></p>
        </nav>
	</div>