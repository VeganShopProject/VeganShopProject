<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%-- <% String member = (String)request.getAttribute("member"); %> --%>

<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Nanum+Gothic&display=swap" rel="stylesheet">

<link href="${pageContext.request.contextPath}/resources/css/main1.css" rel="stylesheet" type="text/css">
<style type="text/css">
input:focus { /* 아이디/비밀번호 커서로 클릭했을 때 */
	outline-color: #213421;
}
	
#style { /* 로그인 */
	width: 70px; padding: .5em .3em;
	border: 1px solid #CACAC6;
	font-family: inherit; font-size: 2;
	background-color:#213429; color:white;
	border-radius: 5px; appearance: none; 
	-webkit-appearance: none; -moz-appearance: none;
}
	
#style:hover { /* input 단추 hover */
	background-color: #3d5b3d;
	color: white;
}

#style2 { /* 회원가입 */
	width: 70px; padding: .5em .3em;
	border: 1px solid #CACAC6;
	font-family: inherit; font-size: 2;
	background-color:white; color:#213429;
	border-radius: 5px; appearance: none; 
	-webkit-appearance: none; -moz-appearance: none;
}

#idpw {
	width: 70px; padding: .5em .3em;
	font-family: inherit; font-size: 10pt;
	background-color:white; color: #213429;
	border-radius: 5px; appearance: none;  
	-webkit-appearance: none; -moz-appearance: none;
}
font {
	font-family: 'Nanum Gothic', sans-serif; text-decoration: none; 
	display: inline-block; line-height:2; width: 280px; height:30px; margin: 0 10 0 10; 
}
</style>
</head>
<body>
<jsp:include page="/main/header.jsp" />
<jsp:include page="/main/banner.jsp" />
<table width="960" cellspacing="0" cellpadding="0" border="0" align="center">
	<table width="630" border="0" cellspacing="4" cellpadding="0" align="center"> 
		<tr>
			<td >
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td align="center">
							<form action="../memberFind.me" method="post" name="searchform">
								<table width="100%" cellpadding=0 cellspacing=0 border=0>
									<tr>
										<td colspan="2" align="center" style="font-family: 'Do Hyeon', sans-serif; font-size: 25pt;">
											<br>아이디 찾기<br><br>
										</td>
									</tr>
									<tr>
										<td align="center" style="padding: 10px; ">
											<font color="#213429" size="5pt"><b>고객님의</b></font><br>
											<font color="#213429" size="5pt" style="width: 400px;"><b>아이디 찾기가 완료되었습니다!</b></font><br>
										</td>
									</tr>
									<tr>
										<td align="center">
											<font size="2pt">아이디 : ${memberId }</font>
										</td>
									</tr>
									<tr>
										<td height=35 align="center" colspan=4 ><br>
											<a href="./login.jsp" id="style"
												style="font-family: 'Nanum Gothic', sans-serif; text-decoration: none; vertical-align:middle;
														display: inline-block; line-height:2; width: 280px; height:30px; margin: 0 10 0 10;">
													로그인하기
											</a>
										</td>
									</tr>
								</table>
							</form>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</table>
<jsp:include page="/main/footer.jsp" />
</body>
</html>
