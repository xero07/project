<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	/* if (request.getMethod().equals("POST")) {
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String pwd = request.getParameter("checkpwd");
		int gender = Integer.parseInt(request.getParameter("gender"));
		int age = Integer.parseInt(request.getParameter("age"));
		
		Member member = new Member();
		member.setId(id);
		member.setEmail(email);
		member.setPassword(password);
		member.setGender(gender);
		member.setAge(age);

		MemberDao memberDao = new MyBatisMemberDao();
		memberDao.addMember(member);

		response.sendRedirect("adminMember.jsp");
	} */
%>
<!DOCTYPE html>
<html>
<head>

<link href="style.css" rel="stylesheet" type="text/css">

<!-- 이미지 미리보기 -->
<script type="text/javascript">
   var InputImage = (function loadImageFile() {
      if (window.FileReader) {
         var ImagePre;
         var ImgReader = new window.FileReader();
         var fileType = /^(?:image\/bmp|image\/gif|image\/jpeg|image\/png|image\/x\-xwindowdump|image\/x\-portable\-bitmap)$/i;

         ImgReader.onload = function(Event) {
            if (!ImagePre) {
               var newPreview = document.getElementById("imagePreview");
               ImagePre = new Image();
               ImagePre.style.width = "200px";
               ImagePre.style.height = "140px";
               newPreview.appendChild(ImagePre);
            }
            ImagePre.src = Event.target.result;

         };

         return function() {

            var img = document.getElementById("image").files;

            if (!fileType.test(img[0].type)) {
               alert("이미지 파일을 업로드 하세요");
               return;
            }

            ImgReader.readAsDataURL(img[0]);
         }

      }

      document.getElementById("imagePreview").src = document
            .getElementById("image").value;

   })();
   </script>

<!--    아이디 중복확인 -->
<script>
function checkId()
{
var sid= document.writeForm.id.value  /*  아이디값 가져오기 */
if(sid="") alert("입력된 아이디가 없습니다.")   /* 없는 경우 메세지 출력 */
else window.open("checkId.jsp?id="+sid,"","width=400 height=150")
</script>

<title>회원 가입하기</title>
</head>
<body>

	<header id="header">

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
							<td>* 한글/영문 대소문자/숫자, 최대 10글자</td>
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
							<td>* 이메일은 비밀번호를 찾을 때 사용됩니다.</td>
						</tr>

						<tr>
							<td>· 사진</td>
							<td>미리보기<br />
								<div id="imagePreview"></div> <br>
							</td>
							<td><input id="image" type="file" onchange="InputImage();">
								<br /> <input type="reset" name="삭제" value="삭제"></td>


						</tr>

						<tr>
							<td>* 비밀번호</td>
							<td><input type="password" name="password"></td>
							<td>* 영문 대소문자/숫자를 혼용하여 6~16글자</td>
						</tr>

						<tr>
							<td>* 비밀번호 확인</td>
							<td><input type="password" name="checkpwd"></td>
						</tr>

						<tr>
							<td>* 성별</td>
							<td><input type="radio" name="gender" value="1" />남 <input
								type="radio" name="gender" value="2" />여</td>
						</tr>

						<tr>
							<td>* 연령대</td>
							<td><input type="radio" name="age" value="1" />10대 <input
								type="radio" name="age" value="2" />20대 <input type="radio"
								name="age" value="3" /> 30대</td>
						</tr>
					</table>
				</fieldset>
				<div>
					<input type="submit" value="회원가입" />
				</div>
			</form>
		</section>
	</header>
</body>
</html>