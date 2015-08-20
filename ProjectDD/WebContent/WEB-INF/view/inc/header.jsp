<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>  

	<div id="header">
	<div class="content-wrapper">
	
			<h1 id="logo">
				<a href="${ctxName }/home/main"><img src="${ctxName }/resource/images/로고.png" alt="데일리데이트" /></a>
			</h1>
			<div id="top">
				<h1 class="hidden">회원메뉴</h1>
				<ul id="loginmenu">
	               <c:if test="${not empty pageContext.request.userPrincipal.name}">
					<li>
	               <security:authorize ifAnyGranted="ROLE_ADMIN">
	                  <a href="${ctxName}/joinus/adminMember">관리자</a>
	               </security:authorize>
	               </li>
	               </c:if>
					<c:if test="${empty pageContext.request.userPrincipal.name}">
					<li><a href="${ctxName}/joinus/join">JoinUs</a></li> 
					<li>&nbsp;
                 	 <a href="${ctxName}/joinus/login">Login</a></li>
               		</c:if>
               		<c:if test="${not empty pageContext.request.userPrincipal.name}">   
               		<li>
               			<a href="#" id="mem-id">
               				${pageContext.request.userPrincipal.name}
               			</a>
               			<div id="box-info">
               				<table>
               					<tr>
               					<td rowspan="3"><img src="${ctxName}/resource/images/test.png"/></td>
               					<td>${pageContext.request.userPrincipal.name}</td></tr>
               					<tr><td><input type="button" value="회원정보수정"/></td></tr>
               					<tr><td><input type="button" value="커플맺기"/></td></tr>
               				</table>
               				<a href="">스크랩장소</a>　　
               				<a href="">좋아요 코스</a>　　
               				<a href="">내 코스</a>
               			</div> 
               		</li> 
                  	<li><a href="${ctxName}/j_spring_security_logout">Logout</a></li>
               		</c:if>  
					<li>
						<input type="text"/>&nbsp;
						<input type="submit" value="검색" class="button-search zoom-button"/>
					</li> 
				</ul>
			</div>
			<section>
			<nav>
				<h1 class="hidden">메인메뉴</h1>
				<ul id="mainmenu">
					<li>
					<a  href="">
					<img src="${ctxName }/resource/images/코스만들기1.png" 
					onmouseover="this.src='${ctxName }/resource/images/코스만들기2.png'"
					onmouseout="this.src='${ctxName }/resource/images/코스만들기1.png'"/>
					
					</a>
					</li>
					<li>
					<a href="">
					<img src="${ctxName }/resource/images/추천코스1.png"
					onmouseover="this.src='${ctxName }/resource/images/추천코스2.png'"
					onmouseout="this.src='${ctxName }/resource/images/추천코스1.png'"/>
					</a>
					</li>
					<li>
					<a href="${ctxName }/diary/diary">
					<img src="${ctxName }/resource/images/커플다이어리1.png"
					onmouseover="this.src='${ctxName }/resource/images/커플다이어리2.png'"
					onmouseout="this.src='${ctxName }/resource/images/커플다이어리1.png'"/>
					</a>
					</li>
					<li>
					<a href="">
					<img src="${ctxName }/resource/images/내주변1.png"
					onmouseover="this.src='${ctxName }/resource/images/내주변2.png'"
					onmouseout="this.src='${ctxName }/resource/images/내주변1.png'"/>
					</a>
					</li>
					<li>
					<a href="${ctxName }/place/place">
					<img src="${ctxName }/resource/images/장소검색1.png"
					onmouseover="this.src='${ctxName }/resource/images/장소검색2.png'"
					onmouseout="this.src='${ctxName }/resource/images/장소검색1.png'"/>
					</a>
					</li>
					<li>
					<a href="${ctxName }/event/event">
					<img src="${ctxName }/resource/images/행사1.png"
					onmouseover="this.src='${ctxName }/resource/images/행사2.png'"
					onmouseout="this.src='${ctxName }/resource/images/행사1.png'"/>
					</a>
					</li>
					<li>
					<a href="${ctxName }/community/Board">
					<img src="${ctxName }/resource/images/게시판1.png"
					onmouseover="this.src='${ctxName }/resource/images/게시판2.png'"
					onmouseout="this.src='${ctxName }/resource/images/게시판1.png'"/>
					</a>
					</li>
				</ul>
			</nav>
			</section>
			</div>
	</div>