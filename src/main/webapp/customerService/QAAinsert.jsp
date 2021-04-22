<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
	  font-family: Arial;
	  margin: 0;
	}
	

	.main{
		padding: 16px;
	  background-color: #fff;
	}
	
	.main .title_wrap {
	  position: relative;
	  margin: 80px 0 50px;
	}
	
	.main .title_wrap h3 {
	  font:400 40px/40px 'Roboto','Noto Sans KR';
	  color:#222222;
	  text-align: center;
	  letter-spacing: -0.2px;
	}
	.main .title_wrap h5 {
	  font:400 20px/20px 'Roboto','Noto Sans KR';
	  color:#222222;
	  text-align: center;
	  letter-spacing: -0.2px;
	}
	


	 .inquiry_table {	  	
	 	width: 1000px;
	 	margin: 0 auto;
	 	border-collapse: collapse;
	 	font-size: 12pt;
  		
	 	
	 }

	 
	.inquiry_table tr td:not(#lasttag), .inquiry_table tr th{
		border-top: 1px solid #ddd;
		border-right: 1px solid white;
	 	border-left: 1px solid white;
	
	}
	

	 
	.inquiry_table td {
	 	
 		padding: 20px;
  		text-align: left;
  		font-weight: normal;
	 
	 }
	
	.inquiry_table th {
		padding: 8px;
		text-align: center;
	  	color: black;
	  	width: 20%;
	  	background-color: #F0F0ED;
	  	font-weight: normal;
	}
	
	#lasttag {
		
		text-align: center;

	}
	
	#lasttag a {
	  	color: white;
	  	background-color: #4C874E;
	  	text-decoration: none;
	  	border-radius: 5px;
	  	padding: 10px 15px ;
	}
	
	#lasttag a:link {
	  	color: white;
	}
	
	#lasttag a:visited {
	  	color: white;
	}
	
	#lasttag a:hover {
	  	border: 2px solid #4C874E;
	  	background-color: white;
	  	color: #4C874E;
	}
	
	.inquiry_table input[type=text] {
	  	height: 25px;
	  	font-size: 15pt;
	  	border: 1px solid #ddd;
	}
	
	#content {
		vertical-align: top;
		height: 200px;
	  	font-size: 12pt;
	  	width: 100%;
	  	border: 1px solid #ddd;
	}
	.inquiry_table input[type=file] {
	  	height: 30px;
	  	font-size: 13pt;
	  	
	}
	
	.inquiry_table select {
	  	height: 25px;
	  	font-size: 15pt;
	  	border: 1px solid #ddd;
	}
	

	
		/* The Modal (background) */
	.modal {
	 display: none; /* Hidden by default */
	  position: fixed; /* Stay in place */
	  z-index: 1; /* Sit on top */
	  left: 0;
	  top: 0;
	  width: 100%; /* Full width */
	  height: 100%; /* Full height */
	  overflow: auto; /* Enable scroll if needed */
	  background-color: rgb(0,0,0); /* Fallback color */
	  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
	  -webkit-animation-name: fadeIn; /* Fade in the background */
	  -webkit-animation-duration: 0.4s;
	  animation-name: fadeIn;
	  animation-duration: 0.4s
	}
	
	/* Modal Content */
	.modal-content {
		 position: fixed;
		 top: 50%;
		left: 50%;
		margin-top: -100px; /* Negative half of height. */
		margin-left: -250px; /* Negative half of width. */
	  background-color: #fefefe;
	  width: 20%;
	  height: 150px;
	  -webkit-animation-name: slideIn;
	  -webkit-animation-duration: 0.4s;
	  animation-name: slideIn;
	  animation-duration: 0.4s;
	  border: 2px solid black;
	}
	
	/* The Close Button */
	.close, #close {
	  color:white;
	  background-color: black;
	  float: right;
	  width: 30px;
	  height: 30px;
	  font-size: 28px;
	  font-weight: normal;
	  text-align: center;
	   text-decoration: none;
	}
	
	.close:hover,
	.close:focus {
	  color: white;
	  text-decoration: none;
	  cursor: pointer;
	}
	
	.modal-header {
	  padding: 0px 0px;
	  background-color: white;
	  
	}
	
	.modal-body {
	padding: 10px 16px;
	text-align: center;
	
	}
	
	.modal-footer {
	  padding: 2px 16px;
	  background-color: white;
	  text-align: center;
	  
	}
	

	
 	.modal-confirm {
	  	color: white;
	  	background-color: #4C874E;
	  	text-decoration: none;
	  	border-radius: 20px;
	  	padding: 10px 15px ;
	  	
	}
	
	.modal-confirm:link {
	  	color: white;
	}
	

	
	.modal-confirm:hover {
	  	border: 2px solid #4C874E;
	  	background-color: white;
	  	color: #4C874E;
	} 
	
	/* Add Animation */
	@-webkit-keyframes slideIn {
	  from {bottom: -300px; opacity: 0} 
	  to {bottom: 0; opacity: 1}
	}
	
	@keyframes slideIn {
	  from {bottom: -300px; opacity: 0}
	  to {bottom: 0; opacity: 1}
	}
	
	@-webkit-keyframes fadeIn {
	  from {opacity: 0} 
	  to {opacity: 1}
	}
	
	@keyframes fadeIn {
	  from {opacity: 0} 
	  to {opacity: 1}
	}
	


</style>
</head>

<body>
	<!-- The Modal -->
	<div id="myModal" class="modal">
	
		  <!-- Modal content -->
		  <div class="modal-content">
			    
			    <div class="modal-header">
			     	 <span class="close"><a href="javascript:insertQaa.submit()" id="close" class="post-request">&times;</a></span>
			     </div>
			    
			    <div class="modal-body">
			      	<h3>문의 글을 등록하시겠습니까?</h3>		
			    </div>
			    
			    <div class="modal-footer">			    
			    		<a class="modal-confirm" href="javascript:insertQaa.submit()" class="post-request">확인</a>			      
			    </div>
		  </div>	
	</div>



	<div class="main">
		<div class="title_wrap clfix">
			<h3>1:1 문의 게시판</h3>
			<h5>문의를 남겨주시면, 신속하게 도와 드리겠습니다.</h5>
		</div>
		<div class="inquiry_cont_wrap">
			
			<form action="../insertBoard.qa" method="post" enctype="multipart/form-data" name="insertQaa" class="post-request">
			
				<table class="inquiry_table">
					<tr>
					<th>카테고리</th>
					<td colspan="2">
						<select name="category">
							<option value="cate1">cate1</option>
							<option value="cate2">cate2</option>
							<option value="cate3">cate3</option>
							<option value="cate4">cate4</option>					
						</select> 
					</td>
				</tr>
				
				<tr>
					<th>제목</th>
					<td colspan="2">
						<input type="hidden" name="id" value="${member.id }"/>
						<input type="text" name="subject" size="50" placeholder="제목을 적어주세요."/></td>
				</tr>

				
				<tr>
					<th>내용</th>
					<td colspan="2"><textarea name="content" id="content" placeholder="원하시는 내용을 남겨주세요."></textarea></td>
				</tr>
				<tr>
					<th>파일 첨부</th>
					<td align="left" colspan="2"><input type="file" name="uploadFile"/></td>
				</tr>
				<tr>
					<td colspan="3"><br>
				</tr>
				<tr>
					<td colspan="3" id="lasttag">
						<a id="myBtn">등록 하기</a>&emsp;						
						<a href="/board/getBoardList.fu">취소</a>
					</td>
		
				</tr>
				</table>
			</form>
			
		</div>
	</div>

<script type="text/javascript">
	//Get the modal
	var modal = document.getElementById("myModal");
	
	// Get the button that opens the modal
	var btn = document.getElementById("myBtn");
	
	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];
	var confirm = document.getElementsByClassName("modal-confirm")[0];
	
	
	// When the user clicks the button, open the modal 
	btn.onclick = function() {
	  modal.style.display = "block";
	}
	
	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	  modal.style.display = "none";
	}
	confirm.onclick = function() {
		  modal.style.display = "none";
	}
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	  if (event.target == modal) {
	    modal.style.display = "none";
	  }
	}
	
	

</script>	
</body>
</html>