<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 수정페이지</title>
<style type="text/css">
	#style {width: 70px; padding: .5em .3em;
				border: solid 1px #CACAC6; font-family: inherit; font-size: 2;
				background: url('/image/arrow.jpg') no-repeat 95% 50%;
				border-radius: 5px; appearance: none; 
				-webkit-appearance: none; -moz-appearance: none;}
</style>
</head>

<script type="text/javascript">
function deleteCheck(){
	var url = "./deleteCmnt.co?seq="+form.seq.value;
	var answer = confirm("삭제하시겠습니까?");
	
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
</script>

<body>

	<center>
		<form action="../updateCmnt.co" method="post">
			<input name="seq" type="hidden" value="${community.seq}" />
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="gold" width="70">제목</td>
					<td align="left" width="300" >
						<input name="subject" type="text" value="${community.subject }" size="45"/>
					</td>
				</tr>
				<tr>
					<td bgcolor="gold">작성자</td>
					<td align="left">${community.writer }</td>
				</tr>
				<tr>
					<td bgcolor="gold">내용</td>
					<td align="left">
						<textarea name="content" cols="45" rows="10"> 
							${community.content }
						</textarea>
					</td>
				</tr>
				<tr>
					<td bgcolor="gold">첨부파일</td>
					<td align="left">${community.cmnt_file }</td>
				</tr>
				<tr>
					<td align="center">
						<input type="submit" value="글 수정" id="style"/>
					</td>
					<td align="center">
						<input type="button" value="글 삭제" id="style" onclick="deleteCheck()"/>
					</td>	
					<td align="center">
						<input type="button" value="글 등록" id="style" onclick="insertCmnt()"/> 
					</td>	
					<td align="center">
						<input type="button" value="글 목록" id="style" onclick="getCmntList()"/>
					</td>
				</tr>
			</table>
		</form>
	</center>

</body>
</html>