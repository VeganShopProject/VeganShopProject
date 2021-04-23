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
	<div class="main">
		<div class="title_wrap clfix">
			<h3>문의 사항</h3>
			<h5>${member.name}님이 남겨주신 문의 사항입니다. </h5>
		</div>
		
		<div class="inquiry_cont_wrap">
			<form action="updateBoard.qa" method="post" id="updateBoard" name="updateQaa">
			<table class="inquiry_table">
				<tr>
					<th>카테고리</th>
					<td  colspan="2" name="category">${qaa.category }</td>
				</tr>
				
				<tr>
					<th>제목</th>
					<td colspan="2" name="subject">${qaa.subject }</td>
				</tr>
				
				<tr>
					<th>내용</th>
					<td colspan="2" name="content" id="content">${qaa.content }</td>
				</tr>
				<c:if test='${qaa.image != null}'>
				<tr>
					<th>첨부파일</th>
					<td colspan="2"><img src="${qaa.image }" width="300" height="200"/></td>
				</tr> </c:if>
				<tr>
					<th >등록일</th>
					<td colspan="2">${qaa.qaa_date }</td>
				</tr>
				<tr>
					<td colspan="3"><br>
				</tr>

				<tr>
					<td colspan="3" id="lasttag">
						
						<a href="/board/customerService/QAAinsert.jsp?id=${member.id }" id="insertBoard" class="post-request">새글 등록</a>&emsp;
						<a href="deleteBoard.qa?re_ref=${qaa.re_ref }&id=${member.id }" id="deleteBoard" class="post-request">글삭제</a>&emsp;
						<a href="./getBoardList.qa?id=${member.id }" class="post-request">취소</a>
					</td>
				</tr>
			</table>
		</form>
		<br><br><br><br><br><br><br><br><br>	
		</div>
	</div>



		
	
</body>
</html>
