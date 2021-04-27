<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 수정페이지</title>
<link href="${pageContext.request.contextPath }/css/community/updateCmnt.css" rel="stylesheet" type="text/css">
</head>

<script type="text/javascript">
function cancel(){
	history.go(-1);
}

function getCmntList(){
	var url = "../getCmntList.co";
	location.href = url;
}
</script>

<body>

	<form action="../updateCmnt.co" method="post">
		<input name="seq" type="hidden" value="${community.seq}" />
			<table >
				<tr>
					<td id="title">커뮤니티</td>
				</tr>
				<tr>
					<td id="category">제목</td>
					<td id="content">
						<input name="subject" type="text" value="${community.subject }" size="45"/>
					</td>
				</tr>
				<tr>
					<td id="category">작성자</td>
					<td id="content">${community.writer }</td>
				</tr>
				<tr>
					<td id="category">내용</td>
					<td id="content">
						<textarea name="content" cols="45" rows="10"> 
							${community.content }
						</textarea>
					</td>
				</tr>
				<tr>
					<td id="category">첨부파일</td>
					<td id="content">${community.cmnt_file }</td>
				</tr>
				<tr>
					<td id="together">
						
							<input type="submit" value="수정" id="style"/>
						
					</td>
					<td>
						<input type="button" value="취소" id="style" onclick="cancel()"/>
					</td>
					<td>
						<input type="button" value="목록" id="style" onclick="getCmntList()"/>
					</td>
				</tr>
		</table>
	</form>

</body>
</html>