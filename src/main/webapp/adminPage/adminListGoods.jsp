<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
* {box-sizing: border-box;}
a{color: inherit; text-decoration: none;}
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
#goods {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#goods td, #goods th {
  padding: 8px;
  text-align: center;
}
#goods tr:nth-child(even){background-color: white;}
#goods tr:hover {border-color: rgba(223, 249, 205, 0.35);}
#goods th {
  padding-top: 12px;
  padding-bottom: 12px;
  background-color: #213429;
  color: #ffffff;
}
.button{
	width: 13%;
	color: #ffffff;
	padding: 5px 11px;
	margin: 8px 0;
	float:right; 
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 17px;	
	background-color: #213429;
}
.button:hover{
	background-color:#213429;
	color: #ffffff;
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

<div class="w3-sidebar w3-bar-block w3-border-right" style="display:none" id="mySidebar">
	<button onclick="w3_close()" class="w3-bar-item w3-large">Close &times;</button>
		<a href="#" class="w3-bar-item w3-button"></a>
		<a href="./index.jsp" class="w3-bar-item w3-button">HOME</a>
		<a href="#" class="w3-bar-item w3-button">회원관리</a>
		<a href="#" class="w3-bar-item w3-button">주문관리</a>
  		<a href="#" class="w3-bar-item w3-button">고객문의관리</a>
  		<a href="adminGoodsList.go" class="w3-bar-item w3-button">상품관리</a>
  		<a href="./adminRecipeList.go" class="w3-bar-item w3-button">레시피관리</a>
  		
</div>

<div class="w3-teal">
	<button class="w3-button w3-teal w3-xlarge" onclick="w3_open()">☰</button>
	<h1><a href="./adminPage/adminMain.jsp">BeginVegan</a></h1>
</div>

<div class="w3-container">
	<h3 align="center">상품목록</h3>
	<table id="goods">
  		<tr>
    		<th>번호</th>
    		<th>카테고리</th>
    		<th>상품명</th>
    		<th>상품부제</th>
    		<th>상품수량</th>
    		<th>상품가격</th>
    		<th>상품등록날짜</th>
  			</tr>
		<c:forEach items="${list}" var="goods">
		<tr>
			<td>${goods.seq}</td>
			<td>${goods.category}</td>
			<td><a href="adminGoodsDetail.go?seq=${goods.seq}">${goods.name}</a></td>
			<td>${goods.shortco}</td>
			<td>${goods.amount}</td>
			<td>${goods.price}</td>
			<td><fmt:formatDate value="${goods.goods_date}" pattern="yyyy-MM-dd"/></td>
		</tr>
		</c:forEach> 
	</table>
	<button class="button" onclick="location.href='./adminPage/insertGoods.jsp'">등록</button>
</div>	
</body>
</html>