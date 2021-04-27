<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 글 작성</title>
<link href="${pageContext.request.contextPath }/css/community/insertCmnt.css" rel="stylesheet" type="text/css">
</head>

<script type="text/javascript">
function getCmntList(){
	var url = "../getCmntList.co";
	location.href = url;
}
</script>
<body>

		<form action="../insertCmnt.co" method="post" enctype="multipart/form-data">
			<input name="writer" type="hidden" value="${member.name }" />
			<table >
				<tr>
					<td id="title">커뮤니티<br><br><br></td>
				</tr>
				<tr>
					<td id="category">카테고리</td>
					<td id="content">
						<select name="category">
							<option value="레시피">레시피</option>
							<option value="식당 정보">식당 정보</option>
						</select>
					</td>
				</tr>
				<tr>
					<td id="category">제목</td>
					<td id="content" ><input type="text" name="subject" /></td>
				</tr>
				<tr>
					<td id="category">작성자</td>
					<td id="content">${member.name }</td>
				</tr>
				<tr>
					<td id="category">내용</td>
					<td id="content"><textarea name="content" cols="40" rows="10"></textarea></td>
				</tr>
				<tr>
					<td id="categoryLast">파일 업로드</td>
					<td id="contentLast"><input type="file" name="file" /></td>
				</tr>
				<tr>
					<td>
						<input type="button" value="목록" id="button" onclick="getCmntList()"/>
					</td>
					<td>
						<input type="submit" value="등록" id="button"/>
						<input type="button" value="취소" id="button" onclick="getCmntList()"/>
					</td>
				</tr>
			</table>
		</form>

</body>
</html>