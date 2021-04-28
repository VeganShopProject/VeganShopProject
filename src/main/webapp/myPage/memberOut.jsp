<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/myPage/memberPage.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript">
function memberOut(){
	confirm('정말로 탈퇴하시겠습니까?');
	if(answer == true){
		alert('탈퇴되었습니다.');
	}
}
</script>
<body>
<jsp:include page="/main/header.jsp" />
<jsp:include page="/main/banner.jsp" />
	<div id="together">
		<div id="first">
				저희 쇼핑몰을 이용해주셔서 감사합니다.<br>
				${member.name }님은 [씨앗]등급이십니다.
		</div>
		<div id="second">
			가용 적립금 : <br>
			사용 적립금 : <br>
			쿠폰 : <br>
		</div>
		<div id="third">
			총 적립금 : <br>
			총 주문금액 : <br> 
		</div>
	</div>
	
<center>
	<div id="category">
		<b>마이페이지<br></b>
		<table>
			<tr id="hover"><td ><a href="#">주문 내역</a></td></tr>
			<tr id="hover"><td ><a href="#">배송지 관리</a></td></tr>
			<tr id="hover"><td ><a href="#">상품 후기</a></td></tr>
			<tr id="hover"><td ><a href="#">개인정보 수정</a></td></tr>
		</table>
	</div>
	
	<div id="content">
		<b >회원탈퇴<br></b>
		<font size="3">회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인해주세요.</font> <hr>
		<form action="../deleteMember.me" onsubmit="memberOut()">
			<table id="form">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" value="${member.id }"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr>
					<td><input type="submit" value="확인" id="button" ></td>
				</tr>
			</table>
		</form>
	</div>
</center>
<jsp:include page="/main/footer.jsp" />
</body>
</html>