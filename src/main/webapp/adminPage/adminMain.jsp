<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Handlee&display=swap" rel="stylesheet">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<style>
a {color: inherit; text-decoration: none;}
* {box-sizing: border-box;}
body {
	margin: 0 auto;
	font-family: Arial, Helvetica, sans-serif;
	width: 60%;
	color: #213421
}
.w3-teal{
	padding: 10px;
	background-color: #213421 !important
}
.w3-container {
	background-color: rgba(249, 225, 205, 0.35);
	padding: 5%;
}
.w3-row-padding{
padding: 2%;
margin-left: 3%;}
.hello{
	margin-bottom: 10%;}
h1{
	text-align: center;
}
.p01{
	text-align: justify;
}
.icon{
margin-bottom: 40px;
}
.w3-third p{
text-align: left;
}
</style>
</head>

<body>

<script>
	function w3_open() {
		document.getElementById("mySidebar").style.display = "block";	
	}
	function w3_close() {
  		document.getElementById("mySidebar").style.display = "none";
	}
</script>

<%@ include file="adminMainIncludeHeaderHamburger.jsp" %> 

<div class="w3-container">
<div class="hello">
<font style="font-size: 70px; font-family: 'Handlee', cursive;">Hello, BeginVegan!</font><br><br>
<p class="p01">BeginVegan is an illustrator specialising in deceptively simple, colourful and characterful illustrations with limited colour palettes and strong lines.
Sit amet nulla facilisi morbi tempus. Nulla facilisi cras fermentum odio eu. Etiam erat velit scelerisque in dictum non consectetur a erat. Enim nulla 
aliquet porttitor lacus luctus accumsan tortor posuere. Ut sem nulla pharetra diam. Fames ac turpis egestas maecenas. Bibendum neque egestas congue quisque 
egestas diam. BeginVegan is an illustrator specialising in deceptively simple, colourful and characterful illustrations with limited colour palettes and strong lines.
Sit amet nulla facilisi morbi tempus. Nulla facilisi cras fermentum odio eu. Etiam erat velit scelerisque in dictum non consectetur a erat.</p>


</div>
<div class="w3-row-padding">
  <div class="w3-third">
  	<div class="icon">
  	<i class="far fa-calendar-alt fa-8x" onclick="location.href='/board/adminGoodsList.go'"></i>
  	</div>
  	<h3>상품관리</h3>
    <p>상품등록/확인/수정/삭제</p>
    <p>Add or manage product BeginVegan is an illustrator specialising in deceptively simple, colourful and characterful illustrations</p>
  </div>

  <div class="w3-third">
  	<div class="icon">
  	<i class="fas fa-cart-arrow-down fa-8x" onclick="location.href='/board/orderList.od'"></i>
  	</div>
    <h3>주문관리</h3>
    <p>주문내역확인/수정/삭제</p> 
    <p>View and manage orders BeginVegan is an illustrator specialising in deceptively simple, colourful and characterful illustrations</p>
  </div>

  <div class="w3-third">
  	<div class="icon">
    <i class="far fa-address-card fa-8x" onclick="location.href='/board/memberList.ad'"></i>
    </div>
    <h3>회원관리</h3>
    <p>가입회원확인/수정/삭제</p>
    <p>Add or manage users BeginVegan is an illustrator specialising in deceptively simple, colourful and characterful illustrations</p>
  </div>
</div>

<div class="w3-row-padding">
  <div class="w3-third">
  	<div class="icon">
    <i class="far fa-comment-dots fa-8x" onclick="location.href='/board/getBoardList.aq'"></i>
    </div>
    <h3>고객문의관리</h3>
    <p>고객문의확인/답변작성/수정/삭제</p>
    <p>Answer the user's questions BeginVegan is an illustrator specialising in deceptively simple, colourful illustrations</p>
  </div>

  <div class="w3-third">
  	<div class="icon">
  	<i class="fas fa-cookie-bite fa-8x" onclick="location.href='/board/adminRecipeList.go'"></i>
  	</div>
    <h3>레시피관리</h3>
    <p>레시피등록/확인/수정/삭제</p> 
    <p>Add or manage recipe BeginVegan is an illustrator specialising in deceptively simple, colourful and characterful illustrations</p>
  </div>

  <div class="w3-third">
  	<div class="icon">
  	<i class="far fa-list-alt fa-8x" onclick="location.href='/board/getBoardList.fa'"></i>
  	</div>
    <h3>자주묻는질문관리</h3>
    <p>자주묻는질문작성/확인/수정/삭제</p>
    <p>Answer the user's frequently asked questions is an illustrator specialising in deceptively simple illustrations</p>
  </div>
</div>

</div>

</body>
</html>