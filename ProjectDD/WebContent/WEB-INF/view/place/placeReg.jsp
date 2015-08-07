<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<div>
		<h1>장소등록</h1>
			<form method="POST" enctype="multipart/form-data">
				<fieldset>
					<dt>name</dt>
					<dd><input name="name"></dd>
					<dt>region</dt>
					<dd><input name="region"></dd>
					<dt>theme</dt>
					<dd><input name="theme"></dd>
					<dt>address</dt>
					<dd><input name="address"></dd>
					<dt>cost</dt>
					<dd><input name="cost"></dd>
					<dt>첨부파일</dt>
					<dd><input type="file" id="txtFile" name="file"/></dd>
												
					<div><input type="submit" value="등록"></div>
				</fieldset>
			</form>	
</div>