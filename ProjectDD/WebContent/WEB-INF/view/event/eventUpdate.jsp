<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>  

	<section>
		<h1 class="hidden">행사 등록 화면</h1>
		<section>
			<h1 class="hidden">행사 등록 정보</h1>
			<form method="post" action="eventUpdate" enctype="multipart/form-data">
			<dl>
				<dt>코드</dt>
				<dd><input name="code" value="${e.code}"></dd>
				<dt>이름</dt>
				<dd><input type="text" name="name" value="${e.name}"/></dd>
				<dt>주소</dt>
				<dd><input type="text" name="address" value="${e.address}"/></dd>
				<%-- <dt>시작일</dt>
				<dd><input type="date" name="startDate" value="${startDate}"/></dd>
				<dt>종료일</dt>
				<dd><input type="date" name="endDate" value="${endDate}"/></dd> --%>
				<dt>주최자</dt>
				<dd><input type="text" name="host" value="${host}"/></dd>	
				<dt>주최자 연락처</dt>
				<dd><input type="text" name="hostContact" value="${e.hostContact}"/></dd>					
				<dt>파일첨부</dt>
				<dd><input type="file" name="file" value="${e.image}"/></dd>
				</dl>
				<div>
					<input type="submit" value="수정"/>
					<a href="event">취소</a>
				</div>
			</form>
		</section>
	</section>