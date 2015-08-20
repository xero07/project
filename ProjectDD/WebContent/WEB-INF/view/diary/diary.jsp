<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>

 	<div class="diary-date">
      <%
         //현재 날짜 정보 
         Calendar cr = Calendar.getInstance();
         int year = cr.get(Calendar.YEAR);
         int month = cr.get(Calendar.MONTH);
         int date = cr.get(Calendar.DATE);

         //오늘 날짜
         String today = year + "년" + (month + 1) + "월" + date + "일";

         //선택한 연도 / 월
         String input_year = request.getParameter("year");
         String input_month = request.getParameter("month");

         if (input_month != null) {
            month = Integer.parseInt(input_month) - 1;
         }
         if (input_year != null) {
            year = Integer.parseInt(input_year);
         }
         //1일부터 시작하는 달력을 만들기 위해 오늘의 연도,월을 셋팅하고 일부분은 1을 셋팅한다.
         cr.set(year, month, 1);

         //셋팅한 날짜로 부터 아래 내용을 구함

         //해당 월의 첫날를 구함
         int startDate = cr.getMinimum(Calendar.DATE);

         //해당 월의 마지막 날을 구함
         int endDate = cr.getActualMaximum(Calendar.DATE);

         //1일의 요일을 구함
         int startDay = cr.get(Calendar.DAY_OF_WEEK);

         int count = 0;
      %>

      <form method="post" action="coupleDiary.jsp" name="change">
         <input type="button" value="◀" onClick="monthDown(this.form)">
         <select id="selectbox" name="year" onchange="selectCheck(this.form)">
            <%
               for (int i = year - 10; i < year + 10; i++) {
                  String selected = (i == year) ? "selected" : "";
                  String color = (i == year) ? "#71e6cf" : "#FFFFFF";
                  out.print("<option value=" + i + " " + selected
                        + " style=background:" + color + ">" + i + "</option>");
               }
            %>

         </select> <select id="selectbox" name="month"
            onchange="selectCheck(this.form)">
            <%
               for (int i = 1; i <= 12; i++) {
                  String selected = (i == month + 1) ? "selected" : "";
                  String color = (i == month + 1) ? "#71e6cf" : "#FFFFFF";
                  out.print("<option value=" + i + " " + selected
                        + " style=background:" + color + ">" + i + "</option>");
               }
            %>
         </select> <input type="button" value="▶" onClick="monthUp(this.form)">
      </form>
      
      
     	<p>
			<h1 class="hidden">버튼</h1>
				<a href="diaryReg"><input type="button" value="일기쓰기" class="btn-simple"/></a>
				<input type="button" value="삭제" class="btn-simple"/>
		</p>
      
     <!--  <div class="date-box">
      <div class="date-check">
         <input type="checkbox">
         </div> -->

	<%-- <section id="content">
		<h1>커플일기</h1>

		<section>
			<h1 class="hidden">글쓰기</h1>
				<a href="diaryReg"><input type="button" value="글쓰기" class="btn-simple"/></a>
		</section>

		<div class="list-table">
			<form>
				<h1 class="hidden">일기 목록</h1>

				<table align="center">
				<thead>
					<tr>
						<th></th>
						<th>번호</th>
						<th>제목</th>
						<th>등록일</th>
						<th>작성자</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="n" items="${list}">
						<tr>
							<td><input type="checkbox" /></td>
							<td>${n.code}</td>
							<td class="title"><a href="diaryDetail?c=${n.code}">${n.title}</a></td>
							<td><fmt:formatDate value="${d.regDate}" pattern="yyyy-MM-dd" /></td>
							<td>${n.memberId }</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</form>
		</div> --%>
				
	<div class="date-table">
		<c:forEach var="n" items="${list}">
		<div>
			<table>
				<tr>
					<td><input type="checkbox"></td>
				</tr>
				<tr>
					<td><img src="${ctxName}/resource/upload/diary/${n.imgName}" /></td>
				</tr>
				<tr>
					<td id="title"><a href="diaryDetail?c=${n.code}">"${n.title}"</a></td>
				</tr>
				<tr>
					<td id="date"><fmt:formatDate value="${n.regDate}"
							pattern="yyyy-MM-dd" /></td>
				</tr>
			</table>
			</div>
		</c:forEach>
		</div>
	</div>


		<div class="list_number">
			<p>
			<div class="list_n_menu">
				<span class="disabled">< 이전</span><span class="current">1</span><a
					href="#?page=2">2</a><a href="#?page=3">3</a><a href="#?page=4">4</a><a
					href="#?page=5">5</a><a href="#?page=2">다음 ></a>
			</div>
			</p>
		</div>

	