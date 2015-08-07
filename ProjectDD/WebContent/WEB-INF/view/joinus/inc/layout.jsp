<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link href="${ctxName}/resource/css/joinMem.css" rel="stylesheet" type="text/css">
<script type="text/javascript"	src="${ctxName }/resource/js/modernizr.js"></script>
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
					ImagePre.style.height = "200px";
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


	function clearText(field) {
		if (field.defaultValue == field.value)
			field.value = "";
	}

	//onfocus : 탭키 또는 마우스 등을 이용해 커서가 그 안에 들어온경우, onblur : 커서가 그 개체를 벗어난 경우

	function changeType(obj) { //비밀번호
		//defaultValue 란 속성은 개체에 이미 기본으로 값을 넣어놨을때 그 값을 가리킨다.
		if (obj.value == obj.defaultValue) {
			obj.value = "";
			obj.type = "Password"; //input type을 password 로 변경
		} else {
			if (obj.value.split(" ").join("") == "") //space 까지 확인하여 공백인지를 확인
			{
				obj.value = obj.defaultValue;
				obj.type = "text";//input type을 text 로 변경
			} else {
				return;
			}
		}
	}
</script>

</head>
<body>
	<!-- 헤더 영역 -->
	<tiles:insertAttribute name="header" />

	<div id="body">
		<div class="content-wrapper clearfix">

			<main id="main"> <!-- 바디 영역 --> 
				<tiles:insertAttribute name="body" /> 
			</main>
		</div>
	</div>
	<!-- 푸터 영역 -->
	<tiles:insertAttribute name="footer" />
</body>
</html>