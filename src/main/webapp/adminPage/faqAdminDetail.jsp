<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>
<script type="text/javascript">
	window.onload = function(){	
		document.getElementById('deleteBoard').onclick = function whenClick(){
			if(confirm('정말 삭제할까요?')==true){
				document.form.submit();
			}else {
				return;
			}
			
		}

	}
		

</script>


</head>
<body>
	<center>
		<h1>글 상세</h1>
		<a href="logout.fa">Log-out</a>
		<hr>
		<form action="updateBoard.fa" method="post" id="updateBoard">
			<input name="seq" type="hidden" value="${board.seq}" />
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70">제목</td>
					<td align="left"><input name="title" type="text"
						value="${board.title }" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">작성자</td>
					<td align="left">${board.writer }</td>
				</tr>
				<tr>
					<td bgcolor="orange">내용</td>
					<td align="left"><textarea name="content" cols="40" rows="10">
						${board.content }</textarea></td>
				</tr>
				<tr>
					<td bgcolor="orange">등록일</td>
					<td align="left">${board.regDate }</td>
				</tr>
				<tr>
					<td bgcolor="orange">조회수</td>
					<td align="left">${board.cnt }</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="글 수정" /></td>
				</tr>
			</table>
		
			
		</form>
		<hr>
		<a href="./adminPage/faqAdminInsert.jsp" id="insertBoard">글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteBoard.fa?seq=${board.seq }" id="deleteBoard">글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getBoardList.fa">글목록</a>
	</center>
</body>
</html>
