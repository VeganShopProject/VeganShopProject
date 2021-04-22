<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<style>
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
	#faqAdmindetail{
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
		color: #fffff;
	}
	input[type=button] {
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
	input[type=button]:hover{
		background-color: #213429;
		color: #fffff;
	}
	input[type=submit], input[type=button]{
		display: inline;
		margin: 10px;
		float: right;
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
<h3 align="center">자주하는 질문</h3>
 	 <form id="faqAdmindetail" name="faqAdmindetail" action="/board/updateBoard.fa" method="post" enctype="multipart/form-data">
         <input name="seq" type="hidden" value="${board.seq}" />
         <label for="title">제목</label><br>
		<textarea rows="2" cols="105%"  id="title" name="title">${board.title}</textarea><br>
		<label for="writer">작성자</label>
		<input type="text" id="writer" name="writer" value="${board.writer}">
		<label for="content">내용</label>
    	<br><textarea rows="10" cols="105%"  id="content" name="content">${board.content}</textarea><br>
    	
    
	     <input type="button" onclick="location.href='/board/getBoardList.fa'" value="글목록"/>
	     <input type="button" onclick="location.href='/board/deleteBoard.fa?seq=${board.seq}'" value="삭제"/>
          <input type="submit" value="수정" />  
        <br><br> 
 	</form>
 	   </div>


	
</body>
</html>

