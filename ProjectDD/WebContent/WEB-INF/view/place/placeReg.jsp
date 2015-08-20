<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<div>
		<h1>장소등록</h1>
			<form method="POST" enctype="multipart/form-data">
				<fieldset>
					<dt>장소명</dt>
					<dd><input name="name"></dd>
					<dt>지역</dt>
					<dd>
						<input type="radio" name="region" value="강남"/>서울 강남
						<input type="radio" name="region" value="건대"/>서울 건대
						<input type="radio" name="region" value="대학로"/>서울 대학로
						<input type="radio" name="region" value="명동"/>서울 명동
						<input type="radio" name="region" value="신촌"/>서울 신촌
						<input type="radio" name="region" value="왕십리"/>서울 왕십리
						<input type="radio" name="region" value="홍대"/>서울 홍대
						<input type="radio" name="region" value="경기"/>경기
					</dd>
					<dt>테마</dt>
					<dd><input name="theme"></dd>
					<dt>주소</dt>
					<dd><!-- <input name="address"> -->
					<input type="text" id = "address" name = "address" value = "" style = "width:240px;" readonly/>
					<input type="text" id = "address_etc" name = "address_etc" value = "" style = "width:200px;"/>
					<input type = "button" onClick = "openDaumZipAddress()" value = "주소 찾기" />
					</dd>
					<dt>데이트 비용(1인기준)</dt>
					<dd><input name="cost"></dd>
					<dt>첨부파일</dt>
					<dd><input type="file" id="txtFile" name="file"/></dd>
					 
												
					<div><input type="submit" value="등록"></div>
				</fieldset>
			</form>	
</div>