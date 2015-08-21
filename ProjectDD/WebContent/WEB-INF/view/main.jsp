<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
	
	<div id="warp">
		<div id="prev-btn" onclick="prev()">
			<img src="${ctxName }/resource/images/prev-btn.png">

		</div>
		<div id="next-btn" onclick="next()">
			<img src="${ctxName }/resource/images/next-btn.png">
		</div>
		<div id="mask">
			<div id="content">
				<dl>
					<dt></dt>
					<dd>
						<img src="${ctxName }/resource/images/course1.png">
						<div id="course-text">TODAY'S COURSE | 오늘의 추천코스</div>
						<div id="course-title">
							<a href="">삼청동 거리 데이트</a>
						</div>
					</dd>
					<dd>
						<img src="${ctxName }/resource/images/dog1.jpg">
						<div id="course-title">
							<a href="">일곱글 자만 해야해</a>
						</div>
					</dd>
					<dd>
						<img src="${ctxName }/resource/images/dog2.jpg">
						<div id="course-title">
							<a href="">일곱글 자만 가능해</a>
						</div>
					</dd>
					<dd>
						<img src="${ctxName }/resource/images/dog3.jpg">
						<div id="course-title">
							<a href="">데이트 제목 일곱자</a>
						</div>
					</dd>
					<dd>
						<img src="${ctxName }/resource/images/dog4.jpg">
						<div id="course-title">
							<a href="">제목은 일곱 글자야</a>
						</div>
					</dd>
				</dl>
			</div>
		</div>
		<div id="go-btn">
			<a href=""><img src="${ctxName }/resource/images/go-btn.png"></a>
		</div>
		<div id="page">
			<ul>
				<li class="page-btn" onmouseover="page1()"></li>
				<li class="page-btn" onmouseover="page2()"></li>
				<li class="page-btn" onmouseover="page3()"></li>
				<li class="page-btn" onmouseover="page4()"></li>
				<li class="page-btn" onmouseover="page5()"></li>
			</ul>
		</div>
	</div>
	<div id="favorite-img">
		<img src="${ctxName }/resource/images/favorite.png">
	</div>


	<div id="map">
		<img id="map-img" src="${ctxName }/resource/images/favorite-map.png"> <a href=""><img
			id="map-bar" src="${ctxName }/resource/images/favorite-bar.png"></a> <a href=""><img
			id="map-cafe" src="${ctxName }/resource/images/favorite-cafe.png"></a> <a href=""><img
			id="map-food" src="${ctxName }/resource/images/favorite-food.png"></a> <a href=""><img
			id="map-play" src="${ctxName }/resource/images/favorite-play.png"></a>

	</div>

	<div id="favorite-place">
		<table>
			<tr>
				<td><a href=""><img src="${ctxName }/resource/images/favorite-place-img1.png"></a></td>
			</tr>
			<tr>
				<td>인기장소</td>
			</tr>
			<tr>
				<td><font size="2">별점</font></td>
			</tr>
			<tr>
				<td><font size="1">가격</font></td>
			</tr>
		</table>
	</div>
	<div id="favorite-place">
		<table>
			<tr>
				<td><a href=""><img src="${ctxName }/resource/images/favorite-place-img2.png"></a></td>
			</tr>
			<tr>
				<td>인기장소</td>
			</tr>
			<tr>
				<td><font size="2">별점</font></td>
			</tr>
			<tr>
				<td><font size="1">가격</font></td>
			</tr>
		</table>
	</div>
	<div id="favorite-place">
		<table>
			<tr>
				<td><a href=""><img src="${ctxName }/resource/images/favorite-place-img3.png"></a></td>
			</tr>
			<tr>
				<td>인기장소</td>
			</tr>
			<tr>
				<td><font size="2">별점</font></td>
			</tr>
			<tr>
				<td><font size="1">가격</font></td>
			</tr>
		</table>
	</div>
	<div id="favorite-place">
		<table>
			<tr>
				<td><a href=""><img src="${ctxName }/resource/images/favorite-place-img4.png"></a></td>
			</tr>
			<tr>
				<td>인기장소</td>
			</tr>
			<tr>
				<td><font size="2">별점</font></td>
			</tr>
			<tr>
				<td><font size="1">가격</font></td>
			</tr>
		</table>
	</div>
	<div id="favorite-place">
		<table>
			<tr>
				<td><a href=""><img src="${ctxName }/resource/images/favorite-place-img5.png"></a></td>
			</tr>
			<tr>
				<td>인기장소</td>
			</tr>
			<tr>
				<td><font size="2">별점</font></td>
			</tr>
			<tr>
				<td><font size="1">가격</font></td>
			</tr>
		</table>
	</div>

	<div id="special-img">
		<img src="${ctxName }/resource/images/special.png">
	</div>

	<div id="special-place">
		<table>
			<tr>
				<td id="special-place-region" colspan="2">[지역]동네</td>
			</tr>
			<tr>
				<td id="special-place-text">이색장소 설명</td>
				<td rowspan="3"><a href=""> <img id="special-place-img"
						src="${ctxName }/resource/images/course1.png"></a></td>
			</tr>
			<tr>
				<td id="special-place-title">이색장소</td>
			</tr>
			<tr>
				<td><a href=""> <img id="special-place-btn"
						src="${ctxName }/resource/images/special-place-btn.png"></a></td>
			</tr>
		</table>
	</div>
	<div id="special-place">
		<table>
			<tr>
				<td id="special-place-region" colspan="2">[지역]동네</td>
			</tr>
			<tr>
				<td id="special-place-text">이색장소 설명</td>
				<td rowspan="3"><a href=""><img id="special-place-img"
						src="${ctxName }/resource/images/course1.png"></a></td>
			</tr>
			<tr>
				<td id="special-place-title">이색장소</td>
			</tr>
			<tr>
				<td><a href=""><img id="special-place-btn"
						src="${ctxName }/resource/images/special-place-btn.png"></a></td>
			</tr>
		</table>
	</div>
	<div id="special-place">
		<table>
			<tr>
				<td id="special-place-region" colspan="2">[지역]동네</td>
			</tr>
			<tr>
				<td id="special-place-text">이색장소 설명</td>
				<td rowspan="3"><a href=""><img id="special-place-img"
						src="${ctxName }/resource/images/course1.png"></a></td>
			</tr>
			<tr>
				<td id="special-place-title">이색장소</td>
			</tr>
			<tr>
				<td><a href=""><img id="special-place-btn"
						src="${ctxName }/resource/images/special-place-btn.png"></a></td>
			</tr>
		</table>
	</div>
	<div id="event-img">
		<img src="${ctxName }/resource/images/event.png">
	</div>

	<a href="">
	<div id="event-place" style="background: url(${ctxName }/resource/images/event-img1.png) no-repeat;">
		<div id="event-text">

			<ul>
				<li id=event-region>[지역]</li>
				<li id="event-title">제목</li>
				<li id="event-date">날짜</li>
			</ul>
		</div>
	</div>
	</a>
	
		<a href="">
	<div id="event-place" style="background: url(${ctxName }/resource/images/event-img1.png) no-repeat;">
		<div id="event-text">

			<ul>
				<li id=event-region>[지역]</li>
				<li id="event-title">제목</li>
				<li id="event-date">날짜</li>
			</ul>
		</div>
	</div>
	</a>
	
		<a href="">
	<div id="event-place" style="background: url(${ctxName }/resource/images/event-img1.png) no-repeat;">
		<div id="event-text">

			<ul>
				<li id=event-region>[지역]</li>
				<li id="event-title">제목</li>
				<li id="event-date">날짜</li>
			</ul>
		</div>
	</div>
	</a>
