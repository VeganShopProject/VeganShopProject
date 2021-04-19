<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<li><a href="/board/getBoard.qa?re_ref=${board.re_ref}&status=${board.status}&id=${member.id}">문의 글 상세보기</a></li>
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
			<h5>${member.name}님이 남겨주신 문의 사항입니다. </h5>
		</div>
		<div class="inquiry_cont_wrap">
			
			<form action="updateBoard.qa" method="post" id="updateBoard" name="updateQaa">
				<table class="inquiry_table">
					<tr>
					<th>카테고리</th>
					<td  colspan="2" name="category">${qaa.category }</td>
				</tr>
				
				<tr>
					<th>제목</th>
					<td colspan="2">
						<input name="subject" type="text" value="${qaa.subject }" />
					</td>
				</tr>

				
				<tr>
					<th>내용</th>
					<td colspan="2"><textarea name="content" id="content">${qaa.content }</textarea></td>
				</tr>
				<tr>
					<th >등록일</th>
					<td colspan="2">${qaa.qaa_date }</td>
				</tr>
				<tr>
					<td colspan="3"><br>
				</tr>
				<tr>
					<td colspan="3" id="lasttag">
					<input name="id" type="hidden" value="${member.id}" />
						<a href="/board/customerService/insertQAA.jsp?id=${member.id }" id="insertBoard" class="post-request">새글 등록</a>&emsp;
						<a href="javascript:updateQaa.submit()" class="post-request">수정 하기</a>&emsp;
						<a href="/board/deleteBoard.qa?re_ref=${qaa.re_ref }&id=${member.id }" id="deleteBoard" class="post-request">글삭제</a>&emsp;
						<a href="/board/getBoardList.qa?id=${member.id }" class="post-request">취소</a>
					</td>
		
				</tr>
				</table>
			</form>
			<br><br><br><br><br><br><br><br><br>
			
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