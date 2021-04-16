<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 글 작성</title>
</head>
<body>

	<center>
		<h1>커뮤니티 글 등록</h1>
		<hr>
		<form name="insertform" id="insertform" action="../insertCmnt.co" method="post" enctype="multipart/form-data">
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="gold" align="center">카테고리</td>
					<td>
						<select name="category">
							<option value="레시피">레시피</option>
							<option value="식당 정보">식당 정보</option>
						</select>
					</td>
				</tr>
				<tr>
					<td bgcolor="gold" width="100" align="center">제목</td>
					<td align="left"><input type="text" name="subject" /></td>
				</tr>
				<tr>
					<td bgcolor="gold" align="center">작성자</td>
					<td align="left"><input type="text" name="writer" size="10" /></td>
				</tr>
				<tr>
					<td bgcolor="gold" align="center">내용</td>
					<td align="left"><textarea name="content" cols="40" rows="10"></textarea></td>
				</tr>
				<tr>
					<td bgcolor="gold" align="center">파일 업로드</td>
					<td align="left"><input type="file" name="file" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value=" 새 글 등록 " />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="../getCmntList.co">글 목록 가기</a><br><br><br><br><br>
		<a href="./memberLogout.me">Log-out</a>
	</center>	

</body>
</html>