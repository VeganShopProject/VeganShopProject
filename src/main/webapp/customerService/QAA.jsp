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
		.float{
	 float: left;
	}
	
	.main{
	padding: 16px;
	  background-color: #fff;
	  position:absolute; 
   	left:50%;
     margin-left:-700px; 
    
	}
	

	.title_wrap h3 {
	  font:400 40px/40px 'Roboto','Nanum Myeongjo';
	  color:#222222;
	  text-align: center;
	  letter-spacing: -0.2px;
	}
	
	.title_wrap h5 {
	  font:400 20px/20px 'Roboto','Nanum Myeongjo';
	  color:#222222;
	  text-align: center;
	  letter-spacing: -0.2px;
	}	

	
	.inquiry_table {	  	
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
	  border-top: 1px solid #F0F0ED;
	  border-bottom: 1px solid #F0F0ED;
	  background-color: #213421;
	  font-weight: normal;
	  color: white;
	}

	
 	.new_inquiry {
 		width: 1000px;
	 	margin: 0 auto;
	 	text-align: right;
 	}
 	
 	.button {
	  	color: white;
	  	background-color: #213421;
	  	text-decoration: none;
	  	border-radius: 5px;
	  	padding: 10px 15px ;
	}
	
	.button:link {
	  	color: white;
	}
	
	.button:visited {
	  	color: white;
	}
	
	.button:hover {
	  	border: 2px solid #213421;
	  	background-color: rgba(249, 225, 205, 0.35);
	  	color: #213421;
	}
 	
	
	.title 	{
	
	text-decoration: none; 
	color: black
	}
	
	.title:hover 	{
	
	text-decoration: underline; 
	color: black}
	
	#subject {
		text-align: left;
		padding-left: 15px;
	}

</style>



</head>
<body>

<div class="main">
	<%@ include file="customerServiceSidenav.jsp" %>
	<div class="float">	
		<div class="title_wrap clfix">
			<h3>1:1 문의 게시판</h3>
			<h5>${member.name }님이 남겨주신 문의 사항입니다. </h5>
		</div>
					
		<div class="inquiry_cont_wrap"><br>			
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
						<td id="subject"><a href="getBoard.qa?re_ref=${board.re_ref}&status=${board.status}&id=${member.id}" class="post-request title">
								${board.subject }</a></td>
								
						<td>${board.status }</td>
						<td>
							<a href="deleteBoard.qa?re_ref=${board.re_ref }&id=${member.id}" id="deleteBoard" class="post-request title">삭제</a>
						</td>
					</tr>
				</c:forEach>
			</table>
			<br><br>
			<div class="new_inquiry">
				<a href="/board/customerService/QAAinsert.jsp" class="post-request button">글쓰기</a>
			</div> 
			<br><br><br><br><br><br><br>
		</div>
	</div>	
</div>



<script type="text/javascript" >
	
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