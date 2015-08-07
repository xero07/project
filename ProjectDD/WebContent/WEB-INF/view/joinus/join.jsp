<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>


<div id="joinMem-header">

			<img src="${ctxName}/resource/images/memberJoin.png">

			<form id="joinMem" method="post">
				<fieldset>
					<table>
						<thead>
							<tr>
								<td><font size="3" color="#58E2B9">필수항목</font></td>
							</tr>
						</thead>
						<tr>
							<td width="120">닉네임</td>
							<td width="300"><input type="text" name="id" value=""
								size="5" maxlength="10"> <input type="button"
								name="checknname" value="중복확인" onClick="javascript:checkId()"></input></td>
							<td width="300"><font size="2">* 한글/영문 대소문자/숫자, 최대
									10글자</font></td>
						</tr>

						<tr>

							<td>이메일</td>
							<td width="400"><input type="text" name="email" size="10"></input>
								@ <select name="email2">
									<option value=' '>선택</option>
									<option value="naver.com">naver.com</option>
									<option value="nate.com">nate.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="yahoo.co.kr">yahoo.co.kr</option>
							</select></td>
							<td><font size="2">* 이메일은 비밀번호를 찾을 때 사용됩니다.</font></td>
						</tr>


						<tr>
							<td>비밀번호</td>
							<td><input type="password" name="password"></td>
							<td><font size="2">* 영문 대소문자/숫자를 혼용하여 6~16글자</font></td>
						</tr>

						<tr>
							<td>비밀번호 확인</td>
							<td><input type="password" name="checkpwd"></td>
						</tr>

						<tr>
							<td>성별</td>
							<td><input type="radio" name="gender" value="남" />남
								<hr> <input type="radio" name="gender" value="여" />여</td>
						</tr>


						<tr>
							<td>연령대</td>
							<td><input type="radio" name="age" value="10대" />10대 <input
								type="radio" name="age" value="20대" />20대 <input type="radio"
								name="age" value="30대" /> 30대</td>
						</tr>

					</table>

					<table>
						<thead>
							<tr>
								<td><font size="3" color="#58E2B9">선택항목</font></td>
								<td><font size="2">미리보기</font></td>
							</tr>
						</thead>
						<tr>
							<td width="120">사진</td>
							<td width="300">
								<div id="imagePreview"></div> <br> <input id="image"
								type="file" onchange="InputImage();"> <input
								type="reset" name="삭제" value="삭제">
							</td>
							<td width="300"></td>

						</tr>
					</table>
				</fieldset>
				
				<div id="join-btn">
					<input type="submit"  value="가입" /> 
					<!-- <a href="login"  class="button join-button"><span>가입</span></a> -->
					<a href="${ctxName}/home/main" ><span>취소</span></a>
				</div>
			</form>
</div>