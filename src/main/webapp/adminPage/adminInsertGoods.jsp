<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
* {box-sizing: border-box;}
a {color: inherit; text-decoration: none;}
* {box-sizing: border-box;}
body {
	margin: 0 auto;
	font-family: Arial, Helvetica, sans-serif;
	width: 60%;
}
.w3-teal{
	padding: 10px;
	background-color: #213429 !important
}
.w3-container {
	padding: 10px;
	background-color: rgba(249, 225, 205, 0.35);
	height:100%;
}
h1{
	text-align: center;
}
#insertGoods{
	width: 100%;
	line-height: 2.2;
	padding-left: 60px;
	padding-right: 60px;
}
input[type=text], select {
 	width: 100%;
	padding: 12px 10px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}
input[type=file] {
	font-size: 15px;
}
input[type=submit] {
	width: 13%;
	color: #ffffff;
	padding: 5px 11px;
	margin: 8px 0;
	float: right;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 17px;
	background-color: #213429;
}
input[type=submit]:hover {
	background-color: #213429;
	color: #ffffff;;
}
</style>
</head>
<body>
<script>

window.onload = function(){	
	document.getElementById('insertGoods').onsubmit=function(){
		
		var output = '';
		
		var category = document.getElementById('category').value;
		var name = document.getElementById('name').value;
		var shortco = document.getElementById('shortco').value;
		var content = document.getElementById('content').value;
		var amount = document.getElementById('amount').value;
		var price = document.getElementById('price').value;
		var image01 = document.getElementById('image01').value;
		var image02 = document.getElementById('image02').value;
		var image03 = document.getElementById('image03').value;


		output +='BeginVegan 상품이 정상적으로 등록되었습니다.\n\n'
		output +='[상품등록정보]\n'		
		output += '카테고리: '+category+'\n';
		output += '상품명: '+name+'\n';
		output += '상품부제: '+shortco+'\n';
		output += '상품설명: '+content+'\n';
		output += '상품수량: '+amount+'\n';
		output += '상품가격: '+price+'\n';
		output += '상품이미지파일명: '+image01+'\n';
		output += '상품이미지파일명: '+image02+'\n';
		output += '상품이미지파일명: '+image03+'\n';
		
		alert(output); 
	};		
};
	
	function w3_open() {
  		document.getElementById("mySidebar").style.display = "block";
	}

	function w3_close() {
		document.getElementById("mySidebar").style.display = "none";
	}

</script>

<div class="w3-sidebar w3-bar-block w3-border-right" style="display:none" id="mySidebar">
	<button onclick="w3_close()" class="w3-bar-item w3-large">Close &times;</button>
		<a href="#" class="w3-bar-item w3-button"></a>
		<a href="../index.jsp" class="w3-bar-item w3-button">HOME</a>
		<a href="#" class="w3-bar-item w3-button">회원관리</a>
		<a href="#" class="w3-bar-item w3-button">주문관리</a>
  		<a href="#" class="w3-bar-item w3-button">고객문의관리</a>
  		<a href="../adminGoodsList.go" class="w3-bar-item w3-button">상품관리</a>
  		<a href="../adminRecipeList.go" class="w3-bar-item w3-button">레시피관리</a>
  		
</div>

<div class="w3-teal">
	<button class="w3-button w3-teal w3-xlarge" onclick="w3_open()">☰</button>
	<h1><a href="../adminPage/adminMain.jsp">BeginVegan</a></h1>
</div>

<div class="w3-container">
	<h3 align="center">상품등록</h3>
 	 <form id="insertGoods" name="goodsform" action="../insertGoods.go" method="post" enctype="multipart/form-data">
   		<label for="category">상품분류</label>
    		<select id="category" name="category" size="1">
				<option value="all" selected></option>
				<option value="dish" >반찬/요리</option>
				<option value="fast">샐러드/간편식/즉석식품</option>
				<option value="drink">두유/요거트/음료</option>
				<option value="source">양념/소스/조미료</option>
				<option value="daily">베이커리/치즈/버터</option>
				<option value="snack">간식/초콜릿</option>
			</select>
        <label for="name">상품명</label>
		<input type="text" id="name" name="name" placeholder="상품명">
		<label for="name">상품부제</label>
		<input type="text" id="shortco" name="shortco" placeholder="상품부제">
    	<label for=content>상품설명</label><br>
    	<textarea rows="10" cols="120" id="content" name="content" placeholder="상품설명을 입력하세요"></textarea><br>
		<label for="amount">상품수량</label>
   		<input type="text" id="amount" name="amount" placeholder="상품수량">
		<label for="price">상품가격</label>
    	<input type="text" id="price" name="price" placeholder="상품가격"><br><br>
	    <label for="file01">상품이미지01</label>&nbsp;&nbsp;
    	<input type="file" id="image01" name="file01"><br><br>
    	<label for="file02">상품이미지02</label>&nbsp;&nbsp;
    	<input type="file" id="image02" name="file02"><br><br>
    	<label for="file03">상품이미지03</label>&nbsp;&nbsp;
    	<input type="file" id="image03" name="file03"><br><br>
        <input type="submit" value="등록" >
        <br><br>
 	</form>
</div>

</body>
</html>