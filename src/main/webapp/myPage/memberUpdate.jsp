<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 회원 정보 수정</title>

<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/memberUpdate.css" rel="stylesheet" type="text/css">


</head>
<script type="text/javascript">
function updatePw(){
	var pw = document.getElementById('pw');
	var pwCheck = document.getElementById('pwCheck');
	if(pw != pwCheck){
		alert('비밀번호를 제대로 입력하세요.');
		return false;
	}
	return true;
}

function memberOut(){
	var url = './memberOut.jsp';
	location.href = url;
}
</script>
<body>

	<jsp:include page="/main/header.jsp" />
	<jsp:include page="/main/banner.jsp" />
	
	<div id="member_all_wrap">
		<div id="together">
				<ul>
					<li>
						<div id="first">
							<p> 저희 쇼핑몰을 이용해주셔서 감사합니다. </p>
							<p>${member.name}님은 [씨앗]등급이십니다.</p>
					</div>
				</li>
				<li>
					<div id="second">
						<p>가용 적립금 : </p>
						<p>사용 적립금 : </p>
						<p>쿠폰 : </p>
					</div>
				</li>
				<li>
					<div id="third">
						<p>총 적립금 : </p>
						<p>총 주문금액 : </p>
					</div>
				</li>
			</ul>
		</div>
	
	<div id="category_wrap">
		<div id="category">
				<b>마이페이지</b><!-- 민지 추가 두번째 링크를 마이페이지 에 다 추가해야함. 아래 자바스크립트도-->
				
					<%@ include file="myPageIncludeSide.jsp" %>	
		</div>
	
	
	<div id="title">
		<h3>개인정보 수정</h3>
		<div class="under_line"></div>
		<form action="../updateMember.me" method="post" onsubmit="return updatePw()">
			<table id="update_form" width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td class="category"><p>아이디</p></td>
					<td class="content"><input type="text" name="id" class="input_style" value="${member.id }" ></td>
				</tr>
				<tr> 
					<td class="category"><p>현재 비밀번호</p></td>
					<td class="content"><input type="password" class="input_style" name="beforepw" ></td>
				</tr>
				<tr>
					<td class="category"><p>새 비밀번호</p></td>
					<td class="content"><input type="password" class="input_style" name="pw" ></td>
				</tr>
				<tr>
					<td class="category"><p>새 비밀번호 확인</p></td>
					<td class="content"><input type="password" class="input_style" name="pwCheck" ></td>
				</tr>
				<tr>
					<td class="category"><p>이름</p></td>
					<td class="content"><input type="text" class="input_style" name="name" value="${member.name }" ></td>
				</tr>
				<tr>
					<td class="category"><p>이메일</p></td>
					<td class="content"><input type="text" class="input_style" name="email" value="${member.email }" ></td>
				</tr>
				<tr>
					<td class="categoryLast"><p>휴대폰</p></td>
					<td class="contentLast"><input type="text"  class="input_style" name="phone" value="${member.phone }" ></td>
				</tr>
			</table>
			<table id="update_form2">
				<tr class="submit">
						<td><div class="thin_line"></div></td>
				</tr>
				<tr id="button_wrap" align="center">
					<td ><input type="submit" value="개인정보 수정" class="chk_btn"></td>
					<td><input type="button" value="취소"  class="chk_btn" onclick="cancel()"></td>
					<td ><input type="button" value="탈퇴하기" class="chk_btn" onclick="memberOut()"></td>
				</tr>
			</table>
		</form>
	</div>
</div>
	</div>
	<jsp:include page="/main/footer.jsp" />


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/javaScript.js"></script>
<script>
		//앵커테그 post 방식 전달.
		// GET ALL THE LINKS WE WANT TO DO A POST ON
		// jQuery EQUIVALENT WOULD BE $('.post-request').click(function(e)
		var links = document.querySelectorAll('.post-request');
		 
		// LOOP THROUGH THE FOUND LINKS AND ADD A CLICK HANDLER
		for(var l = 0; l < links.length; l++) {
		  links[l].addEventListener('click', function(e) {
		    // PREVENT DEFAULT click BEHAVIOUR
		    e.preventDefault();
		    
		    // BREAK THE URL INTO TWO action AND parameters
		    var url = this.href.split('?');
		    
		    // ONLY LOOK FOR PARAMS IF THEY WERE SPECIFIED
		    var params = (url.length > 1) ? url[1].split('&') : []
		 
		    // CREATE A FORM
		    var form = document.createElement('form');
		    
		    // MAKE IT POST TO THE URL
		    form.setAttribute('method','post');
		    form.setAttribute('action', url[0]);
		    
		    // LOOP THROUGH THE PARAMETERS AND ADD THEM AS CONTROLS TO THE FORM
		    for(var i = 0; i < params.length;i++) {
		      // CREATE THE <input> AS A text CONTROL
		      var inp = document.createElement('input');
		      inp.setAttribute('type', 'hidden');
		      // SPLIT parameter INTO key / value AND ADD TO input
		      var value = params[i].split('=');
		      inp.setAttribute('name',value[0]);
		      inp.setAttribute('value', value[1]);
		 
		      // APPEND TO <form>
		      form.appendChild(inp);
		    }
		    // APPEND <form> TO BODY AND SUBMIT
		    document.getElementsByTagName('body')[0].appendChild(form);
		    form.submit();
		  });
		}
		
	</script>

</body>
</html>