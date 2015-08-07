<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>  

	<section>
		<h1 class="hidden">행사 등록 화면</h1>
		<section>
			<h1 class="hidden">행사 등록 정보</h1>
			<form method="post">
			<dl>
				<dt>이름</dt>
				<dd><input type="text" name="name"/></dd>
				<dt>주소</dt>
				<dd><input type="text" name="address"/></dd>
				<dt>시작일</dt>
				<dd><input type="date" name="startDate"/></dd>
				<dt>종료일</dt>
				<dd><input type="date" name="endDate"/></dd>
				<dt>주최자</dt>
				<dd><input type="text" name="host"/></dd>	
				<dt>주최자 연락처</dt>
				<dd><input type="text" name="hostContact"/></dd>					
				<dt>파일첨부</dt>
				<dd><input type="file" name="file"/></dd>
				</dl>
				<p>
					<input type="submit" value="등록"/>
					<a href="event">취소</a>
				</p>
			</form>
		</section>
	</section>
