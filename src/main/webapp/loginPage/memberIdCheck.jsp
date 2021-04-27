<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <% String id = request.getParameter("id"); %>
<% int db_id = (Integer)request.getAttribute("db_id"); %> --%>

<!DOCTYPE html>
<html>
<head>
<title>쇼핑몰</title>
<script>
<%-- function windowclose(){
	opener.document.joinform.id.value="<%=id %>";
	self.close();
} --%>
</script>
</head>
<body bgcolor="#f5f5f5">
<%-- 아이디 중복확인 --%>
<%-- <c:if test="${idCount eq 1 }">
	<table width="360" border="0" cellspacing="0" cellpadding="5">
	<tr align="center">
		<td height="30">
			<font size="2">${idCount } 는 이미 사용 중인 아이디입니다.</font>
		</td>
	</tr>
</table>
<form action="./idCheck.me" name="checkForm" >
<table width="360" border="0" cellspacing="0" cellpadding="5">
	<tr>
		<td align="center">
			<font size="2">다른 아이디를 선택하세요.</font><p>
			<input type="text" size="10" maxlength="12" name="id"/>
			<input type="submit" value="중복확인" />
		</td>				
	</tr>
</table>
</c:if>

<% }else{ %>
<table width="360" border="0" cellspacing="0" cellpadding="5">
	<tr>
		<td align="center">
			<font size="2">입력하신 <%=id %> 는 사용할 수 있는 아이디입니다.</font>
			<br/><br/>
			<input type="button" value="닫기" onclick="windowclose()" />
		</td>
	</tr>
</table>
</form>
<% } %> --%>
</body>
</html>
