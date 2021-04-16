<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자-회원목록</title>
</head>
<body>

	<center>
		<h1>회원 목록</h1>
		<h3><a href="./memberLogout.me">Log-out</a></h3>
		</h3>
		<!-- 검색 시작 -->
		<form action="./memberList.ad" method="post">
			<table border="1" cellpadding="0" cellspacing="0" width="700">
				<tr>
					<td align="right">
					<select name="searchCondition">
						<c:forEach items="${conditionMap }" var="option">
							<option value="${option.value }">${option.key }
						</c:forEach>							
					</select> 
					<input type="text" name="searchKeyword" /> 
					<input type="submit" value="검색" /></td>
				</tr>
			</table>
		</form>
		<!-- 검색 종료 -->
		<table border="1" cellpadding="0" cellspacing="0" width="700">
			<tr>
				<th bgcolor="LightSkyBlue" width="100">아이디</th>
				<th bgcolor="LightSkyBlue" width="200">비밀번호</th>
				<th bgcolor="LightSkyBlue" width="150">이름</th>
				<th bgcolor="LightSkyBlue" width="150">핸드폰 번호</th>
			</tr>
			<c:forEach items="${memberList }" var="members">
				<tr>
					<td>${members.id }</td>
					<td>	${members.pw }</td>
					<td>${members.name }</td>
					<td>${members.phone }</td>
				</tr>
			</c:forEach>
		</table>
	</center>	

</body>
</html>