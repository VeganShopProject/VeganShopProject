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
function formSubmit(){
	var forms = document.getElementById("findform");
	
	if ((forms.name.value=="") ||
		(forms.name.value.length<=1)){
		alert("이름을 정확히 입력해 주십시오.");
		forms.name.focus();
        return false;
	}else if((forms.jumin1.value=="") ||
			(forms.jumin1.value.length<6)){
		alert("주민등록번호를 정확히 입력해 주십시오.");
   		forms.jumin1.focus();
        return false;
 	}else if((forms.jumin2.value=="")||
 			(forms.jumin2.value.length<7)){
		alert("주민등록번호를 정확히 입력해 주십시오.");
      	forms.jumin2.focus();
        return false;
	}
	return true;
}
</script>
</head>
<body>
<jsp:include page="/main/header.jsp" />
<jsp:include page="/main/banner.jsp" />
<table width="960" cellspacing="0" cellpadding="0" border="0" align="center">
	<tr>
		<td colspan="2" align="center" style="font-family: 'Do Hyeon', sans-serif; font-size: 25pt;">
			<br>비밀번호 찾기<br><br></td>
			<table border="0" cellpadding="0" cellspacing="0" width="500" align="center">
				<!--회원 로그인 -->
				<tr>
					<td>
						<table width="500" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td >
									<table width="500" border="0" cellspacing="4" cellpadding="0">
										<tr>
											<td valign="top" bgcolor="#FFFFFF">
												<table width="100%" border="0" cellspacing="0" cellpadding="0">
													<tr>
														<td align="center">
															<form action="../memberLogin.me" method="post" id="loginform"
																	onsubmit="return blankCheck()">
																<table cellpadding=0 cellspacing=0 border=0>
																	<tr>
																		<td width=103 style="font-family: 'Nanum Gothic', sans-serif; font-size: 8pt;">이름</td>
																	</tr>
																	<tr>
																		<td width=103 height="56">
																			<input type=text name="id" size=43 maxlength=20 
																						placeholder="고객님의 이름을 입력해주세요" 
																						style="font-family: 'Nanum Gothic', sans-serif; height: 40px; "><br>
																		</td>
																	</tr>
																	<tr>
																		<td width=103 style="font-family: 'Nanum Gothic', sans-serif; font-size: 8pt;">아이디</td>
																	</tr>
																	<tr>
																		<td width=103 height="56">
																			<input type=password name="pw" size=43 maxlength=12
																						placeholder="고객님의 아이디를 입력해주세요"
																						style="font-family: 'Nanum Gothic', sans-serif; height: 40px; "><br>
																		</td>
																	</tr>
																	<tr>
																		<td width=103 style="font-family: 'Nanum Gothic', sans-serif; font-size: 8pt;">이메일</td>
																	</tr>
																	<tr>
																		<td width=103 height="56">
																			<input type=password name="pw" size=43 maxlength=12
																						placeholder="가입시 등록하신 이메일 주소를 입력해주세요"
																						style="font-family: 'Nanum Gothic', sans-serif; height: 40px; "><br>
																		</td>
																	</tr>
																	<tr>
																		<td height=35 align="center" colspan=4 valign="middle">
																			<br><a href="../memberLogin.me" id="style"
																				style="font-family: 'Nanum Gothic', sans-serif; text-decoration: none; vertical-align:middle;
																						display: inline-block; width: 300px; height:30px; margin: 0 10 0 10;">
																					찾기
																			</a>
																		</td>
																	</tr>
																</table>
															</form>
														</td>
													</tr>
													<tr>
														<td style="padding: 15 0 15 70;" align="center">
														<table width="400" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td width="8"><img src="#" width="8" height="7"></td>
																<td width="392" align="center"></td>
															</tr>
															<tr>
																<td><img src="#" width="8" height="7"></td>
																<td align="center"></td>
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
						</table><br><br><br><br><br><br><br><br>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<jsp:include page="/main/footer.jsp" />
</body>
</html>
