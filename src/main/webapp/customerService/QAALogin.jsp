<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
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
<script type="text/javascript" >
/* $('#loginform').click(function(){
	var id = $('#id').val();
	var pw = $('#pw').val();
	$.ajax({
		type: "POST",
		url: '/loginPage/login.jsp',
		data: 'id='+id+'&pw='+pw,
		dataType: 'text',
		success: function(data, textStatus, xhr){
			if(data == 'loginFail'){
				alert('아이디와 비밀번호를 확인해주세요.');
			}else{
				window.location.href = 'myPage/memberPage.jsp';
			}
		},
		error: function(request, status, error){
			alert('code:' + request.status + '\n' + 'error:' + error);
		}
	});
}); */
/* $(document).ready(function() {
	$("#login").click(function() {
		var action = $("#loginform").attr('action');
		var form_data = {
			user_id: $("#id").val(),
			user_pw: $("#pw").val(),
			is_ajax: 1
		};
		$.ajax({
			type: "POST",
			url: action,
			data: form_data,
			success: function(response) {
				if(response == 'success') {
					$("#message").html("<p style='color:green;font-weight:bold'>로그인 성공!</p>");
					$("#loginform").slideUp('slow');
				}
				else {
					$("#message").html("<p style='color:red'>아이디 또는 비밀번호가 잘못되었습니다.</p>");
				}
			}
		});
		return false;
	});
}); */

function blankCheck(formId){
	var id = loginform.id.value;
	var pw = loginform.pw.value;
	
	if(id.length <= 0){
		alert('아이디를 입력해주세요.');
		loginform.id.focus();
		return false;
	}
	if(pw.length <= 0){
		alert('비밀번호를 입력해주세요.');
		loginform.pw.focus();
		return false;
	}
		return true;
}

function action(){
	loginform.action = './filterQaaLogin.me';
	loginform.method = 'post';
	loginform.submit();
}
</script>
</head>
<body>

	<jsp:include page="/main/header.jsp" />
	<jsp:include page="/main/banner.jsp" />

<table width="960" cellspacing="0" cellpadding="0" border="0" >
	<table width="500" cellpadding="0" cellspacing="0" border="0" align="center">
		<tr>
			<td>
				<table width="500" border="0" cellspacing="4" cellpadding="0">
					<tr>
						<td >
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td align="center">
										<form action="./filterQaaLogin.me" method="post" id="loginform">
											<table cellpadding=0 cellspacing=0 border=0>
												<tr>
													<td align="center" style="font-family: 'Do Hyeon', sans-serif; font-size: 25pt;">
														<br>로그인<br><br></td>
												</tr>
												<tr>
													<td width=103 height="56">
														<input type=text name="id" size=43 maxlength=20 
																	placeholder="아이디를 입력해주세요" 
																	style="font-family: 'Nanum Gothic', sans-serif; height: 40px; margin: 5px 5px; width: 305px;">
													</td>
												</tr>
												<tr>
													<td width=103>
														<input type=password name="pw" size=43 maxlength=12
																	placeholder="비밀번호를 입력해주세요"
																	style="font-family: 'Nanum Gothic', sans-serif; height: 40px; margin: 5px 5px; width: 305px;">
													</td>
												</tr>
												<tr>
													<td width="13" height=25 align="right">
														<a href="/board/loginPage/findId.jsp" id="idpw"
															style="font-family: 'Nanum Gothic', sans-serif; text-decoration: none;">
																아이디 찾기
														</a> |
														<a href="/board/loginPage/findPw.jsp" id="idpw"
															style="font-family: 'Nanum Gothic', sans-serif; text-decoration: none;">
																비밀번호 찾기
														</a><br>
													</td>
												</tr>
												<tr>
													<td >
														<input type="submit" value="로그인" id="style" onclick="return blankCheck()"
																	style="font-family: 'Nanum Gothic', sans-serif; font-size:12pt;
																		width: 310px; height:50px; margin: 10px; ">
													</td>
												</tr>
												<tr>
													<td align="center">
														<div style="line-height: 2;">
															<a href="/board/loginPage/memberJoin.jsp" id="style2"
																style="font-family: 'Nanum Gothic', sans-serif; text-decoration: none; vertical-align:middle;
																		display: inline-block; width: 300px; height:30px;">
																	회원가입
															</a>
														</div>
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
				</table><br><br><br><br><br><br><br><br>
			</td>
		</tr>
	</table>
</table>
	<jsp:include page="/main/footer.jsp" />
</body>
</html>