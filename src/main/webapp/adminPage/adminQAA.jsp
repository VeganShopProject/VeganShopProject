<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta  http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1:1문의 관리 게시판</title>
</head>
<body>
	<center>
		<h1>1:1 문의 관리</h1>
		<!-- session.setAttribute("userName", user.getName()); -->
		
		<!-- 검색 시작 -->
		<table border="0" cellpadding="0" cellspacing="0" width="700">
			<tr>
				<td align="center">
					<form action="getBoardList.aq" method="post">
						<select name="searchCondition">
							<c:forEach items="${conditionMap }" var="option">
								<option value="${option.value }">${option.key }
							</c:forEach>
						</select> 
						<input name="searchKeyword" type="text" /> 
						<input type="submit" value="검색"/>
					</form>
				</td>
				<td align="right">
					<form action="getBoardList.aq" method="post">
						<select name="filterCategory">
							<c:forEach items="${categoryMap }" var="option">
								<option value="${option.value }">${option.key }
							</c:forEach>							
						</select> 
						<input type="submit" value="선택"/>
					</form>
				</td>
				
				
				<td align="right">
					<form action="getBoardList.aq" method="post">
						<select name="filterStatus">
							<c:forEach items="${statusMap }" var="option">
								<option value="${option.value }">${option.key }
							</c:forEach>							
						</select> 
						<input type="submit" value="선택"/>
					</form>
				</td>
			</tr>
		</table>
		
		<!-- 검색 종료 -->
		
		<table border="1" cellpadding="0" cellspacing="0" width="700">
			<tr>
				<th bgcolor="orange" width="150">일자</th>
				<th bgcolor="orange" width="100">작성자</th>
				<th bgcolor="orange" width="150">카테고리</th>
				<th bgcolor="orange" width="200">제목</th>
				<th bgcolor="orange" width="100">상태</th>
				
			</tr>
			<c:forEach items="${qaaBoardList }" var="board">
				<tr>
					<td align="center"><fmt:formatDate value="${board.qaa_date}" pattern="yyyy-MM-dd"/></td>
					<td align="center">${board.id }</td>
					<td align="center">${board.category }</td>
					<td align="left"><a href="getBoard.aq?re_ref=${board.re_ref}&status=${board.status}">
							${board.subject }</a></td>
					
					<td align="center">${board.status }</td>
					
				</tr>
			</c:forEach>
		</table>
		
	</center>
</body>
</html>