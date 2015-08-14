<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<div>
		<h1>장소등록</h1>
			<form method="POST" enctype="multipart/form-data">
				<fieldset>
					<dt>장소명</dt>
					<dd><input name="name"></dd>
					<dt>지역</dt>
					<dd><input name="region"></dd>
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