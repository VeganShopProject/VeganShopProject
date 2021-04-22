<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의 글 답글 수정</title>


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
	#qaaAdminDetail{
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
<%@ include file="adminQAADetail.jsp" %> 

<div class="w3-container">
<h3 align="center">문의 답변</h3>
 	 <form action="/board/updateReply.aq" method="post" id="qaaAdminDetail" enctype="multipart/form-data" name="qaaAdminDetail">
         <input type="hidden" name="seq" value="${reply.seq }"/>
         <label for="title">답변 내용</label><br>
		<textarea rows="10" cols="105%"  id="content" name="content">${reply.content}</textarea><br>
		<label for="date">답변 등록일</label>
		<input type="text" id="date" name="date" value="${reply.qaa_date }" readonly/>
		
    	<input type="button" onclick="location.href='/board/getBoardList.aq'" value="글 목록"/>
    	 <input type="button" onclick="location.href='/board/deleteBoard.aq?re_ref=${reply.re_ref}'" value="문의 삭제" id="deleteBoard"/>
    	<input type="button" onclick="location.href='/board/deleteReply.aq?seq=${reply.seq }'" value="답글 삭제" id="deleteReply"/>
	    
	     
          <input type="submit" value="답글 수정" />  
        <br><br> 
 	</form>
 	   </div>


	
</body>
</html>

