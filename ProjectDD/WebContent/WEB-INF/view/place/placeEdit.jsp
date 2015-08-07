<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<div>
	<form method="POST" action="placeEdit" enctype="multipart/form-data">
		<fieldset>
			<dt>code</dt>
			<dd><input name="code" value="${p.code}"></dd>
			<dt>name</dt>
			<dd><input name="name" value="${p.name}"></dd>
			<dt>region</dt>
			<dd><input name="region" value="${p.region}"></dd>
			<dt>theme</dt>
			<dd><input name="theme" value="${p.theme}"></dd>
			<dt>address</dt>
			<dd><input name="address" value="${p.address}"></dd>
			<dt>cost</dt>
			<dd><input name="cost" value="${p.cost}"></dd>
										
			<div><input type="submit" value="등록"></div>
		</fieldset>
	</form>	
	</div>