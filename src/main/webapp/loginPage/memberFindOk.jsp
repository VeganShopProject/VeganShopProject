<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<% String member = (String)request.getAttribute("member"); %>

<!DOCTYPE html>
<html>
<head>
<script>
function windowclose(){
	self.close();
}
</script>
</head>
<body>
<table width="450px" height="35px">
	<tr>
		<td align="left">
			<b>아이디/비밀번호 찾기</b><br/><br/>
		</td>
	</tr>
</table>
	
<table width="440px">
	<thead>검색된 아이디/비밀번호입니다.<br/></thead>
	<tr><td align="left">아이디 : <%= member %></td></tr>
	<tr><td align="left">비밀번호 : <%= member %></td></tr>
</table>

<table width="450px">
	<tr>
		<td align="center">	
			<hr/><br/><input type="button" value="닫기" onclick="windowclose()"/>
		</td>
	</tr>
</table>
</body>
</html>
