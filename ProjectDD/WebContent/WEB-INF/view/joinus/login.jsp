<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctxName" value="${pageContext.request.contextPath }" />

		<section  id="login-header">
			<img src="${ctxName }/resource/images/memberLogin.png">

			<form id="login" method="post" action="${ctxName}/j_spring_security_check">
				<fieldset>
					<table>
						<tr height="20">
						</tr>
						<tr height="60">
							<td width="350"><input name="j_username" type="text"
								maxlength="20" value="아이디를 입력하세요." onFocus="clearText(this)" /></td>
						</tr>
						<tr height="60">
							<td><input type="text" id="pwd" name="j_password" value="비밀번호를 입력하세요"
								style="width: 200x;" onfocus="changeType(this);"
								onblur="changeType(this);" /></td>
						<tr height="100">
							<!-- <td><a href="diary/diary" class="button login-button"><span>로그인</span></a> -->
							<td><input type="submit" value = "로그인">
							</td>
						</tr>
					</table>
				</fieldset>
			</form>
			<fieldset>
				<form id="login">
					<div class="text">


						<a href="join" class="text"><font size="3"> > 회원가입</font></a> 
						<a href=" " class="text"><font size="3"> > 비밀번호 찾기</font></a>

					</div>
				</form>
			</fieldset>
		</section>
