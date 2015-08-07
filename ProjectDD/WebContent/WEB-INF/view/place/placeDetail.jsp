<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
	<div>
	<table>
		<thead>
			<tr>
				<td>�ڵ�</td>
			 	<td>�̸�</td>
			 	<td>����</td>
			 	<td>�׸�</td>
			 	<td>�ּ�</td>
			 	<td>����</td>
			 	<td>�����</td>
			 	<td>����</td>
			 	<td>������</td>
			</tr>
		</thead>
		
		<tbody>
			<tr>
				<td>${p.code}</td>
			 	<td>${p.name}</td>
			 	<td>${p.region}</td>
			 	<td>${p.theme}</td>
			 	<td>${p.address}</td>
			 	<td>${p.cost}</td>
			 	<td>${p.regDate}</td>
			 	<td>${p.starRating}</td>
			 	<td>${p.adminId}</td>
			</tr>
		</tbody>
	</table>
	
 	<table>
	<dt>�̹���</dt>
    	<dd><img src="${ctxName}/resource/upload/place/${pf.name}" /></dd>
	 	
 		<thead>
 			<tr>
 				<td>�ڵ�</td>
 				<td>����ڵ�</td>
 				<td>���̵�</td>
 				<td>�����</td>
 				<td>����</td>
 			</tr>
 		</thead>
 		<tbody>
		 	<c:forEach var="pc" items="${pc}">	
			 <tr>
			 	<td>${pc.code}</td>
			 	<td>${pc.placeCode}</td>
			 	<td>${pc.memberId}</td>
			 	<td>${pc.regDate}</td>
			 	<td>${pc.content}</td>
			 </tr>
			</c:forEach>
		</tbody>
	</table>
	
	
	
	<form method="POST" action="placeCommentAdd" enctype="multipart/form-data">
		<fieldset>
			<dt>placeCode</dt>
			<dd><input name="placeCode" value="${p.code}"></dd>
			<dt>MemberId</dt>
			<dd><security:authentication property="name"/></dl>
			<dt>content</dt>
			<dd><input name="content"></dl>
												
			<div><input type="submit" value="���"></div>
		</fieldset>
	</form>	
	 	
 	<form method="POST" action="placeDelete?c=${p.code}">
 		<input type="submit" value="����">
 	</form>
 	<%-- <form method="GET" action="placeEdit?c=${p.code}">
 		<input type="submit" value="����"> --%>
 	<a href="placeEdit?c=${p.code}">����</a>
 	
</div>
