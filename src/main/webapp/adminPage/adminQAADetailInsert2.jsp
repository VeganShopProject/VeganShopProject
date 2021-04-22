<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
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
	
	<form action="insertReply.aq?re_ref=${adminqaa.re_ref }" method="post" id="insertBoard">
		<table border="1" cellpadding="0" cellspacing="0">
			<tr>
				<th bgcolor="orange" width="70">답변 내용</th>
				<td align="left" colspan="2" >
					<textarea name="content" cols="48" rows="10"></textarea>
				</td>
			</tr>
			
			<tr>
				<td colspan="3" align="center"><input type="submit"
					value="답변 등록" /></td>
			</tr>
		</table>	
	</form>
		

	</center>
</body>
</html>
