<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">


</head>

<body>

<div class="w3-sidebar w3-bar-block w3-border-right" style="display:none" id="mySidebar">
	<button onclick="w3_close()" class="w3-bar-item w3-large">Close &times;</button>
		<a href="#" class="w3-bar-item w3-button"></a>
		<a href="/board/index.jsp" class="w3-bar-item w3-button">HOME</a>
		<a href="/board/memberList.ad" class="w3-bar-item w3-button">회원관리</a>
		<a href="#" class="w3-bar-item w3-button">주문관리</a>
  		<a href="/board/getBoardList.aq" class="w3-bar-item w3-button">고객문의관리</a>
  		<a href="/board/getBoardList.fa" class="w3-bar-item w3-button">자주묻는질문관리</a>
  		<a href="/board/adminGoodsList.go" class="w3-bar-item w3-button">상품관리</a>
  		<a href="/board/adminRecipeList.go" class="w3-bar-item w3-button">레시피관리</a>
  		
</div>

<div class="w3-teal">
	<button class="w3-button w3-teal w3-xlarge" onclick="w3_open()">☰</button>
	<h1><a href="/board/adminPage/adminMain.jsp">BeginVegan</a></h1>
</div>


</body>
</html>