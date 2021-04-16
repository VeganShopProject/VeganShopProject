<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 상세페이지</title>
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
	<input name="seq" type="hidden" value="${community.seq}" />
	<input name="readcount" type="hidden" value="${community.readcount}" />
	<center>
		<table cellpadding="10" cellspacing="0" width="1000" height="800" border="1">
			<tr>
				<td align="center" colspan="6" style="font-size:16pt">커뮤니티</td>
			</tr>
			<form name="form" action="./updateCmnt.jsp" method="post">
				<tr  style="font-size: small;">
					<td bgcolor="#F0F0ED" width="100" >제목</td>
					<td align="left">${community.subject }</td>
				</tr>
				<tr  style="font-size: small;">
					<td bgcolor="#F0F0ED">작성자</td>
					<td align="left">${community.writer }</td>
				</tr>
				<tr  style="font-size: small;" >
					<td bgcolor="#F0F0ED" >작성일</td>
					<td align="left" width="100"><fmt:formatDate value="${community.cmnt_date}" pattern="yyyy-MM-dd"/></td>
					<td bgcolor="#F0F0ED" width="100">조회수</td>
					<td align="left">${community.readcount }</td>
				</tr>
				<tr  style="font-size: small; " valign="top">
					<td align="" height="200" colspan="2" >${community.content }</td>
				</tr>
				<tr  style="font-size: small;">
					<td bgcolor="#F0F0ED">첨부파일</td>
					<td align="left" >${community.cmnt_file }</td>
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
					<td align="left">
						<input type="button" value="글 목록" id="style" onclick="getCmntList()"/>
					</td>
				</tr>
			</form>
		</table>
	</center>

</body>
</html>