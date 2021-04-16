<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<script>
function check(){
	var v_id=joinform.id.value;
	var v_password1=joinform.pw.value;
	var v_password2=joinform.pw2.value;
	var v_email1=joinform.email1.value;
	var v_email2=joinform.email2.value;
	var v_phone=joinform.phone.value;
	var v_addr1=joinform.addr1.value;
	var v_addr2=joinform.addr2.value;
	var v_mobile=joinform.mobile.value;
	
	var forms = document.getElementById("joinform");

	if ((forms.name.value=="")||(forms.name.value.length<=1)){
		alert("이름을 제대로 입력해 주세요.");
		forms.name.focus();
         		return false;
	}
	if(v_id.length == 0){
		alert("아이디를 입력하세요.");
		joinform.id.focus();
		return false;
	}
	if(v_password1.length == 0){
		alert("비밀번호를 입력하세요.");
		joinform.pw.focus();
		return false;
	} 
	if(v_password1 != v_password2){
		alert("비밀번호가 일치하지 않습니다.");
		joinform.pw.value="";
		joinform.pw2.value="";
		joinform.pw.focus();
		return false;
	}
	if((forms.jumin1.value=="")||(forms.jumin1.value.length<6)){
		alert("주민등록번호 앞의 6자리를 입력해 주세요.");
      	forms.jumin1.focus();
        return false;
 	}
 	if((forms.jumin2.value=="")||(forms.jumin2.value.length<7)){
		alert("주민등록번호 뒤의 7자리를 입력해 주세요.");
      	forms.jumin2.focus();
        return false;
	} 
	if(v_email1.length == 0 || v_email2.length ==0){
		alert("이메일을 제대로 입력하세요.");
		joinform.email1.focus();
		return false;
	}
	if(v_phone.length == 0){
		alert("집 전화를 입력하세요.");
		joinform.phone.focus();
		return false;
	} 
	if((forms.zipcode1.value=="")||(forms.zipcode1.value.length<3)){
		alert("우편번호 앞의 3자리를 입력해 주세요.");
      	forms.zipcode1.focus();
        return false;
 	}
 	if((forms.zipcode2.value=="")||(forms.zipcode2.value.length<3)){
		alert("우편번호 뒤의 3자리 입력해 주세요.");
      	forms.zipcode2.focus();
        return false;
	}  
	if(v_addr1.length == 0){
		alert("집 주소를 입력하세요.");
		joinform.addr1.focus();
		return false;
	} 
	if(v_addr2.length == 0){
		alert("상세 주소를 입력하세요.");
		joinform.addr2.focus();
		return false;
	} 
	if(v_mobile.length == 0){
		alert("휴대폰 번호를 입력하세요.");
		joinform.mobile.focus();
		return false;
	}
	
	alert("환영합니다, "+joinform.name.value+"님!");
	return true;
}

function openConfirmId(joinform, w, h){			
	var v_id=joinform.id.value;
	var url="../idCheck.me?id="+joinform.id.value;
	
	if(v_id.length == 0){
		alert("아이디를 입력하세요.");
		joinform.id.focus();
		return false;
	}
	
	//아이디 중복확인
	open(url, "confirm", "toolbar=no,location=no,status=no,menubar=no,"+
			"scrollbars=no,resizable=no,width=400,height=200,left=700,top=100");
}

function openZipcode(joinform){			
	var url="./memberZipcode.jsp"
	open(url, "confirm", "toolbar=no,location=no,"
								+"status=no,menubar=no,"
								+"scrollbars=yes,resizable=no,"
								+"width=600,height=400,left=700,top=100");
}

function gNumCheck(){
	if(event.keyCode >=48 && event.keyCode <=57) { //숫자인 경우만 true
		return true;
	}else{
		event.returnValue=false;	
	}
}		
</script>
<body>

<table width="960" cellspacing="0" cellpadding="0" border="0" align="center">
	<tr>
		<td colspan=2>
			<!-- 회원가입 -->
			<form name="joinform" id="joinform" action="../insertMember.me" method="post"
				onsubmit="return check()"> 
				<p align="center">	
				<table border="1" width="80%" height="80%">
					<tr>
						<td width="17%" bgcolor="#f5f5f5">
							<font size="2">&nbsp;&nbsp;&nbsp;&nbsp;이름</font>
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;
							<input type="text" name="name" size="20"/>
						</td>
					</tr>
					<tr>
						<td bgcolor="#f5f5f5">
							<font size="2">&nbsp;&nbsp;&nbsp;&nbsp;아이디</font>
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;
							<input type="text" name="id" size="10" maxlength=15/>
							<input type="button" name="confirm_id" value="중복확인" 
								onclick="openConfirmId(this.form)" /> 
						</td> 
					</tr>
					<tr>
						<td bgcolor="#f5f5f5">
							<font size="2">&nbsp;&nbsp;&nbsp;&nbsp;비밀번호</font>
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;
							<input type="password" name="pw" size="15"/>
						</td>
					</tr>
					<tr>
						<td bgcolor="#f5f5f5">
							<font size="2">&nbsp;&nbsp;&nbsp;&nbsp;비밀번호 확인</font>
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;
							<input type="password" name="pw2" size="15" />
						</td>
					</tr>
					<tr>
						<td bgcolor="#f5f5f5">&nbsp;</td>
						<td>
							<font size="2">&nbsp;&nbsp;&nbsp;
							(아이디와 비밀번호는 문자와 숫자를 조합하여 2~12자리로 만들어 주세요)</font>
						</td>
					</tr>
					<tr>
						<td bgcolor="#f5f5f5">
							<font size="2">&nbsp;&nbsp;&nbsp;&nbsp;주민등록번호</font>
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;
							<input type="text" name="jumin1" size="12" 
								 maxlength="6" onkeypress="gNumCheck()"/>
							<input type="text" name="jumin2" size="12" 
								 maxlength="7" onkeypress="gNumCheck()"/> 
						</td>
					</tr>
					<tr>
						<td bgcolor="#f5f5f5">
							<font size="2">&nbsp;&nbsp;&nbsp;&nbsp;이메일 주소</font>
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;
							<input type="text" name="email1" size="13"/>@
							<input type="text" name="email2" size="15"/> 
						</td>
					</tr>
					<tr>
						<td bgcolor="#f5f5f5">
							<font size="2">&nbsp;&nbsp;&nbsp;&nbsp;메일 수신 여부</font>
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;
							<input type="radio" name="email_get" value="YES" checked/>
							<font size="2">수신</font>
							&nbsp;&nbsp;<input type="radio" name="email_get" value="NO"/>
							<font size="2">수신 안함</font>
						</td>
					</tr>
					<tr>
						<td bgcolor="#f5f5f5">
							<font size="2">&nbsp;&nbsp;&nbsp;&nbsp;집전화</font>
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;
							<input type="text" name="phone" size="24"/>
						</td>
					</tr>
					<tr>
						<td bgcolor="#f5f5f5">
							<font size="2">&nbsp;&nbsp;&nbsp;&nbsp;우편번호</font>
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;
							<input type="text" name="zipcode1" size="6" 
								 maxlength="3" onkeypress="gNumCheck()"/>
							<input type="text" name="zipcode2" size="6" 
								 maxlength="3" onkeypress="gNumCheck()"/>&nbsp;&nbsp; 
							<input type="button" name="zipcode" value="우편번호 검색" 
								 onclick="openZipcode(this.form)"/> 
						</td>
					</tr>
					<tr>
						<td bgcolor="#f5f5f5">
							<font size="2">&nbsp;&nbsp;&nbsp;&nbsp;집주소</font>
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;
							<input type="text" name="addr1" size="50" />
						</td>
					</tr>
					<tr>
						<td bgcolor="#f5f5f5">
							<font size="2">&nbsp;&nbsp;&nbsp;&nbsp;상세주소</font>
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;
							<input type="text" name="addr2" size="50" />
						</td>
					</tr>
					<tr>
						<td bgcolor="#f5f5f5">
							<font size="2">&nbsp;&nbsp;&nbsp;&nbsp;휴대폰</font>
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;
							<input type="text" name="mobile" size="24" />
						</td>
					</tr>
				</table>
				<table width="80%">
					<tr>
						<td align="center">
							<br/><input type="submit" value=" 가입하기 " />
						</td>
					</tr>
				</table>
			</form>
			<!-- 회원가입 -->	
		</td>
	</tr>
</table>

</body>
</html>