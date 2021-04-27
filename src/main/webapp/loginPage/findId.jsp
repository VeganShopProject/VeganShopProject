<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
</style>
<script>
function blankCheck(){
	var name = searchform.name.value;
	var email = searchform.email.value;
	
	if(name.length == 0){
		alert('이름을 입력해주세요');
		searchform.name.focus();
		return false;
	}
	if(email.length == 0){
		alert('이메일 주소를 입력해주세요');
		searchform.email.focus();
		return false;
	}
	searchform.submit();
	return true;
}
</script>
</head>
<body>
<jsp:include page="/main/header.jsp" />
<jsp:include page="/main/banner.jsp" />

<table width="960" cellspacing="0" cellpadding="0" border="0" align="center">
	<table width="500" cellpadding="0" cellspacing="0" border="0" align="center">
		<tr>
			<td>
				<table width="500" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td >
							<table width="500" border="0" cellspacing="4" cellpadding="0">
								<tr>
									<td >
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td align="center">
													<form action="../memberFind.me" method="post" name="searchform">
														<table cellpadding=0 cellspacing=0 border=0>
															<tr>
																<td colspan="2" align="center" style="font-family: 'Do Hyeon', sans-serif; font-size: 25pt;">
																	<br>아이디 찾기<br><br></td>
															<tr>
																<td width=103 style="font-family: 'Nanum Gothic', sans-serif; font-size: 8pt;">이름</td>
															</tr>
															<tr>
																<td width=103 height="56">
																	<input type=text name="name" size=43 maxlength=20 
																				placeholder="고객님의 이름을 입력해주세요" 
																				style="font-family: 'Nanum Gothic', sans-serif; height: 40px; "><br>
																</td>
															</tr>
															<tr>
																<td width=103 style="font-family: 'Nanum Gothic', sans-serif; font-size: 8pt;">이메일</td>
															</tr>
															<tr>
																<td width=103 height="56">
																	<input type=text name="email" size=43 maxlength=30
																				placeholder="가입시 등록하신 이메일 주소를 입력해주세요"
																				style="font-family: 'Nanum Gothic', sans-serif; height: 40px; "><br>
																</td>
															</tr>
															<tr>
																<td height=35 align="center" colspan=4 valign="middle"><br>
																	<a href="javascript:blankCheck();" id="style"
																		style="font-family: 'Nanum Gothic', sans-serif; text-decoration: none; vertical-align:middle;
																				display: inline-block; line-height:2; width: 280px; height:30px; margin: 0 10 0 10;">
																			확인
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
