<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%-- <%@ page import="com.vegan.admin.member.repository.MemberVO" %>
<% MemberVO member = (MemberVO)session.getAttribute("member"); %> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글</title>
</head>
<body>

	<input name="seq" type="hidden" value="${community.seq}" />
	<div id="comment">
		<table>
			<tr>
				<td >${member.name }</td>
				<td ><fmt:formatDate value="${community.cmnt_date}" pattern="yyyy-MM-dd"/></td>
				<td >${community.reply_content }</td>
				<td><input type="button" value="수정"></td>
				<td><input type="button" value="삭제"></td>
			</tr>
		</table>
	</div>

</body>
</html>