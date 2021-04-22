<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<!-- <script type="text/javascript">
	$().ready(function() {
		alert("로그인이 필요합니다.");
	});
</script> -->


</head>
<body>

<table width="960" cellspacing="0" cellpadding="0" border="0" align="center">
	<tr>
		<td colspan="2" align="center" >
			<table border="0" cellpadding="0" cellspacing="0" width="500">
				<!--회원 로그인 -->
				<tr>
					<form action="./filterQaaLogin.me" method="post" name="loginform">
					<td><br><br>
						<table width="500" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td bgcolor="f6f6f6">
									<table width="500" border="0" cellspacing="4" cellpadding="0">
										<tr>
											<td valign="top" bgcolor="#FFFFFF">
												<table width="100%" border="0" cellspacing="0" cellpadding="0">
													<tr>
														<td align="center">
															<table cellpadding=0 cellspacing=0 border=0>
																<tr>
																	<td width=63>아이디</td>
																	<td width=9>:</td>
																	<td width=103>
																		<input type=text name="id" size=12 maxlength=20>
																	</td>
																</tr>
																<!-- <tr>
																	<td colspan=3 height=4></td>
																</tr> -->
																<tr>
																	<td width=63>비밀번호</td>
																	<td width=9>:</td>
																	<td width=103>
																	<input type=password name="pw" size=12 maxlength=12>
																	</td>
																</tr>
																<tr>
																	<td height=35 align="center" colspan=4><input type="submit" value="로그인"></td>
																</tr>
																<tr>
																	<td height=25 colspan=6 align="center">
																		<input
																			type="button" value="회원가입"
																			onclick="javascript:window.location='./loginPage/memberJoin.jsp'">
																		<a href="#">
																		<input type="button" value="아이디/비밀번호 찾기"
																			onclick="openConfirmId(this.form)">
																		</a>
																	</td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td style="padding: 15 0 15 70;" align="center">
														<table width="400" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td width="8"><img src="#" width="8" height="7"></td>
																<td width="392" align="center">
																	<font size=2 color="565656" >
																	아이디가 없을 경우 '회원가입'을 클릭하십시오.
																	</font>
																</td>
															</tr>
															<tr>
																<td><img src="#" width="8" height="7"></td>
																<td align="center">
																	<font size=2 color="565656">
																	아이디 또는 비밀번호를 잊어버렸을 경우 '아이디/비밀번호 찾기'를 클릭하십시오.
																	</font>
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
					</td>
					</form>
				</tr>
			</table>
			<!-- 회원 로그인 -->
		</td>
	</tr>
</table>	

</body>
</html>