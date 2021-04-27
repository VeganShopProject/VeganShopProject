<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 상세페이지</title>
<link href="${pageContext.request.contextPath }/css/community/getCmnt.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript">
function deleteCheck(){
	var url = "./deleteCmnt.co?seq="+form.seq.value;
	var answer = confirm("정말로 삭제하시겠습니까?");
	
	if(answer == true){
		alert("삭제되었습니다.");
		location.href = url;
	}
}

function insertCmnt(){
	var url = "community/insertCmnt.jsp";
	location.href = url;
}

function getCmntList(){
	var url = "./getCmntList.co";
	location.href = url;
}

function updateReply_content(){
	var url = "./updateReply_content.co"; 
	location.href = url;
}
</script>
<body>

<center>
	<input name="seq" type="hidden" value="${community.seq}" />
		<div id="header" >
			<a href="loginPage/main.jsp">Main</a>
		</div>
		
		<table>
			<tr id="title">
				<td>커뮤니티<br><br><br></td>
			</tr>
			<tr>
				<td id="category">제목</td>
				<td id="content">${community.subject }</td>
			</tr>
			<tr>
				<td id="category">작성자</td>
				<td id="content">${community.writer }</td>
			</tr>
			<tr>
				<td id="category">작성일</td>
				<td id="content"><fmt:formatDate value="${community.cmnt_date}" pattern="yyyy-MM-dd"/></td>
				<td id="category">조회수</td>
				<td id="content">${community.readcount }</td>
			</tr>
			<tr>
				<td id="text">
					${community.content }<br>
					<c:if test="${!empty community.cmnt_file }">
						<img src="./communityUpload/${community.cmnt_file }" width="300px">
					</c:if>
				</td>
			</tr>
			<tr>
				<td id="categoryLast">첨부파일</td>
				<td id="contentLast">${community.cmnt_file }</td>
			</tr>
			<tr>
				<td>
					<input type="button" value="목록" id="button" onclick="getCmntList()"/>
				</td>
				<td>
					<form name="form" action="community/updateCmnt.jsp">
						<input type="submit" value="수정" id="button" />
					</form>
					<input type="button" value="삭제" id="button" onclick="deleteCheck()"/>
				</td>
			</tr>
		</table>
		<%-- <c:if test="${community.reply_content } != null"> --%>
			<%@ include file="replyDetail.jsp" %>
		<%-- </c:if> --%>
		<!-- 댓글 -->
		<div id="comment">
			<table>
				<tr id="category">
					<td>댓글달기</td>
				</tr>
				<tr>
					<td>
						이름 : <input type="text" value="${member.name }" id="style">&nbsp;&nbsp;&nbsp;
						비밀번호 : <input type="password" value="${member.pw }" id="style">
					</td>
				</tr>
				<tr>	
					<td>
						<!-- <form action="updateReply_content.co"> -->
							<textarea rows="2" cols="130" name="reply_content"></textarea>
							<!-- <input type="submit" value="확인" id="button_comment"> -->
							<a href="updateReply_content.co?seq=${community.seq }" id="button_comment">확인</a>
							<br><br><br><br><br><br>
						<!-- </form> -->
					</td>
				</tr>
			</table>
		</div>
</center>

</body>
</html>