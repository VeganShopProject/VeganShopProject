<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="adminQAADetail.jsp" %> 
	<center>	
		<h1>문의 답변</h1>
			
				<form action="updateReply.aq" method="post" id="updateBoard">
				<table border="1" cellpadding="0" cellspacing="0">
					<tr>2
						<th bgcolor="orange" width="70">답변 내용</th>
						<td align="left" colspan="2" >
							<input type="hidden" name="seq" value="${reply.seq }"/>
							<textarea name="content" cols="48" rows="10" >${reply.content}</textarea>
						</td>
					</tr>
					<tr>
						<th bgcolor="orange" width="70">등록일</th>
						<td align="left" width="350">${reply.qaa_date }</td>
					</tr>
					<tr>
						<td colspan="3" align="center"><input type="submit"
							value="답변 수정" /></td>
					</tr>
				</table>	
			</form>

		
		
		<hr>			
			<a href="deleteReply.aq?seq=${reply.seq }" id="deleteReply">답글 삭제</a>&nbsp;&nbsp;&nbsp;
			<a href="deleteBoard.aq?re_ref=${reply.re_ref}" id="deleteBoard">문의 삭제</a>&nbsp;&nbsp;&nbsp;
			<a href="getBoardList.aq">글목록</a>
	</center>
</body>
</html>