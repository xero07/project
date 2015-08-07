<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<section>
			<h1>회원가입하기</h1>
			<br /> <b>중요!</b>*는 필수 입력 사항입니다.

			<legend>회원 가입 폼</legend>
			<form method="post">
				<fieldset>
					<table>

						<tr>
							<td>* 닉네임</td>
							<td><input type="text" name="id" value="" size="10"
								maxlength="12"> <input type="button" name="checknname"
								value="중복확인" onClick="javascript:checkId()"></input></td>
						</tr>

						<tr>

							<td>* 이메일</td>
							<td><input type="text" name="email" size="10"></input> @ <select
								name="email2">
									<option value=' '>선택</option>
									<option value="naver.com">naver.com</option>
									<option value="nate.com">nate.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="yahoo.co.kr">yahoo.co.kr</option>
							</select></td>
						</tr>
					</table>
				</fieldset>
			</form>
		</section>

</body>
</html>