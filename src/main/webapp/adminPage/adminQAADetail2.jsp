<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
		<h1></h1>
		<a href="logout.do">Log-out</a>
		<hr>
		<form action="updateBoard.aq" method="post" id="updateBoard">
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<th bgcolor="orange" width="70">제목</th>
					<td name="category"  width="150" align="center">${adminqaa.category }</td>
					<td align="left" width="200">${adminqaa.subject }"</td>
				</tr>
				
				<tr>
					<th bgcolor="orange">내용</th>
					<td align="left" colspan="2" height="300">${adminqaa.content }</td>
				</tr>
				<tr>
					<th bgcolor="orange">등록일</th>
					<td align="left" colspan="2">${adminqaa.qaa_date }</td>
				</tr>
				
			</table>
		</form>
		
		<%-- <a href="getReply.aq?re_ref=${adminqaa.re_ref}" id="getReply" align="center">답글 모드</a> --%>
		

	</center>
</body>
</html>
