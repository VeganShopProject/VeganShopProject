<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta  http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1:1문의 게시판</title>
<style type="text/css">
	body {
	  font-family: Arial;
	  margin: 0;
	}
	
	.header {
	  background-color: #f1f1f1;
	  padding: 30px;
	  text-align: center;
	}
	
	.location_wrap{
	  border-top: 1px solid #e5e5e5;
	  position: relative;
	  height: 40px;
	  background-color: #194B30;
	  color: #f1f1f1;
	  text-align: left;
	}
	
		
	.location_wrap .location_inner{
	  width: 1220px;

	  
	  text-align: left;
	  
	  
	  
	}
	
	.location_wrap .location_inner li{
	  display: inline-block;
	  	  margin-top: -23px;
	
	}
	
	.location_wrap .location_inner li::after{
	  content: '>';
	  width: 5px;
	  height: 9px;
	  display: inline-block;
	  margin: 21px 10px 0;
	  vertical-align: baseline;
	  
	}
	
	.location_wrap .location_inner li:last-child::after{
	  display: none;
	}
	
	.location_wrap .location_inner li a{
	  font:300 16px/50px 'Roboto','Noto Sans KR';
	  color: white;
	  text-align: left;
	  letter-spacing: -0.2px;
	}
	
	.location_wrap .location_inner li a:link{
	  text-decoration: none;
	}
	
	.sticky {
	  position: fixed;
	  top: 0;
	  width: 100%;
	}
	
	.sticky + .main {
	  padding-top: 102px;
	}
	
	.sidenav {
	  width: 130px;
	  position: fixed;
	  z-index: 1;
	  top: 300px;
	  right: 30px;
	  background: #eee;
	  overflow-x: hidden;
	  padding: 8px 0;
	}

	.sidenav a {
	  padding: 6px 8px 6px 16px;
	  text-decoration: none;
	  font-size: 25px;
	  color: #2196F3;
	  display: block;
	}

	.sidenav a:hover {
	  color: #064579;
	}
	
	

	@media screen and (max-height: 450px) {
	  .sidenav {padding-top: 15px;}
	  .sidenav a {font-size: 18px;}
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
	
 	.main .inquiry_cont_wrap .new_inquiry {
 		width: 1000px;
	 	margin: 0 auto;
	 	text-align: right;
 	}
 	
 	.main .inquiry_cont_wrap .new_inquiry a {
 		color: white;
	  	background-color: #4C874E;
	  	text-decoration: none;
	  	border-radius: 5px;
	  	padding: 10px 15px ;
 
 	}
 	
 	.main .inquiry_cont_wrap .new_inquiry a:link {
 			color: white;
 	}
 	.main .inquiry_cont_wrap .new_inquiry a:visited {
 		
 		color: white;
 	} 	
 	
 	
 	.main .inquiry_cont_wrap .new_inquiry a:hover {
 		border: 2px solid #4C874E;
	  	background-color: white;
	  	color: #4C874E;
 	
 	}
 	

 	
	 .main .inquiry_cont_wrap .inquiry_table {	  	
	 	width: 1000px;
	 	margin: 0 auto;
	 	border-collapse: collapse;
  		
	 	
	 }
	 
	 .inquiry_table th, .inquiry_table td {
	 	border-bottom: 1px solid #ddd;
 
  		padding: 8px;
  		text-align: center;
	 
	 }
	
	.inquiry_table tr:not(:first-child):hover {

		background-color: #F0F0ED;
	}
	
	
	.inquiry_table th {
	  padding-top: 12px;
	  padding-bottom: 12px;
	  border-top: 1px solid #4C874E;
	  border-bottom: 1px solid #F0F0ED;
	  background-color: #F0F0ED;
	  
	  color: black;
	}
	
	a 	{
	
	text-decoration: none; 
	color: black}
	
	a:hover 	{
	
	text-decoration: underline; 
	color: black}
	
	#subject {
		text-align: left;
		padding-left: 15px;
	}

</style>



</head>
<body>

	<div class="header">
	  <h1>Header Area</h1>
	</div>
	
	<div class="location_wrap" id="myHeader">
		<div class="location_inner">
			<ul>
				<li><a href="/board/loginPage/main.jsp?id=${member.id }" class="post-request">홈</a></li>
				<li><a href="javascript:void(0);">고객의 소리</a></li>
				<li><a href="/board/getBoardList.qa?id=${member.id }" class="post-request">1:1 문의 게시판</a></li>
			</ul>
		</div>
	</div>

	<div class="sidenav">
	  <a href="#about">About</a>
	  <a href="#services">Services</a>
	  <a href="#clients">Clients</a>
	  <a href="#contact">Contact</a>
	</div>
	
	<div class="main">
		<div class="title_wrap clfix">
			<h3>1:1 문의 게시판</h3>
			<h5>${member.name }님이 남겨주신 문의 사항입니다. </h5>
		</div>
					
		<div class="inquiry_cont_wrap">

			<br>
			
			<table class="inquiry_table">
				<tr>
					<th width="15%">등록 일자</th>
					<th width="20%">카테고리</th>
					<th width="40%">제목</th>
					<th width="15%">상태</th>
					<th width="10%">기능</th>
				</tr>
				<c:forEach items="${qaaBoardList }" var="board">
					<tr>
						<td><fmt:formatDate value="${board.qaa_date}" pattern="yyyy-MM-dd"/></td>
						<td>${board.category }</td>
						<td id="subject"><a href="getBoard.qa?re_ref=${board.re_ref}&status=${board.status}&id=${member.id}" class="post-request">
								${board.subject }</a></td>
								
						<td>${board.status }</td>
						<td>
							<a href="deleteBoard.qa?re_ref=${board.re_ref }&id=${member.id}" id="deleteBoard" class="post-request">삭제</a>
						</td>
					</tr>
				</c:forEach>
			</table>
					
	
		<br><br>
			<div class="new_inquiry">
				<a href="/board/customerService/insertQAA.jsp" class="post-request">글쓰기</a>
			</div> 
			<br><br><br><br><br><br><br>
		</div>
	</div>
	




	<script type="text/javascript">
		
		window.onscroll = function() {myFunction()};
		
		var header = document.getElementById("myHeader");
		var sticky = header.offsetTop;
		
		function myFunction() {
		  if (window.pageYOffset > sticky) {
		    header.classList.add("sticky");
		  } else {
		    header.classList.remove("sticky");
		  }
		}
		
		
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