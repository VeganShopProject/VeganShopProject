<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta  http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1:1문의 게시판</title>
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css">

<style type="text/css">
	
	* {
	box-sizing: border-box;
	font-family: 'Nanum Myeongjo';
}

html, body {
	margin: 0;
	padding: 0;
}

h1, h2, h3, h4, h5, h6, p {
	margin: 0;
}

header, section, article, main, nav, aside, footer {
	display: block;
}

header:after, section:after, article:after, main:after, nav:after, aside:after,
	footer:after {
	content: "";
	display: block;
	clear: both;
}


ul, ol {
	list-style: none;
	margin: 0;
	padding: 0;
}

a {
	color: inherit;
	text-decoration: none;
}

button{
	background: inherit ; 
	border:none; 
	box-shadow:none; 
	border-radius:0; 
	padding:0; 
	overflow:visible;
	 cursor:pointer;
} 




#category_wrap{
	width: 80%;
	padding-bottom:100px;
	padding-top: 100px;
	margin-left: auto;
	margin-right: auto;
	min-height: 900px;
	background-color: white;
}



#order_wrap{
	display:inline-block;
	width:75%;
}

#order_wrap .member_name{
	text-align: center;
	vertical-align:top;
	
	margin-bottom: 50px;
}



.chk_btn{
    border-radius: 8px;
    font-size: 14px;
    padding: 15px 50px;
    background-color: #213421;
    transition: all 0.3s;
    color: #ffffff;
    border:none;
    transition:all 0.3s;
}

.chk_btn:hover{
    background-color: #649E64;

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
	 	width: 90%;
	 	margin: 0 auto;
	 	border-collapse: collapse;
  		
	 	
	 }
	 
	 .inquiry_table th, .inquiry_table td {
	 	border-bottom: 1px solid #ddd;
  	font-weight: normal;
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
	 
	  color: white;
	}
	
 	.new_inquiry {
 		width: 90%;
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
	
	.under_line {
	border-bottom: 2px solid #243421;
	width:100%;
}
</style>



</head>
<body>

<jsp:include page="/main/header.jsp" />
	<jsp:include page="/main/banner.jsp" />
<div class="under_line"></div>
<div  id="member_all_wrap">

	<div  id="category_wrap">
		
		<%@ include file="customerServiceSidenav.jsp" %>	
			
				<div id="order_wrap">	
		<div class="title_wrap clfix">
			<h3>1:1 문의 게시판</h3><br>
			<h5>${member.name }님이 남겨주신 문의 사항입니다. </h5><br><br>
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
			
			
			
			
<%-- 			<div id="order_wrap">
				<div class="member_name">
					<h1>1:1 문의 게시판</h1>
					<h3>${member.name }님이 남겨주신 문의 사항입니다. </h3>
				</div>
				
				<div class="under_line"></div>
			
				<table width="85%" align="center" id="member_table" cellpadding="0" cellspacing="0">
					<tr height=26 bgcolor=243421 >
						<td height="3" colspan="5" align=right></td>
					</tr>
					<tr>

						<th width="20%" class="under__line">등록 일자</th>
						<th width="20%" class="under__line">카테고리</th>
						<th width="35%" class="under__line">제목</th>
						<th width="15%" class="under__line">상태</th>
						<th width="10%" class="under__line">기능</th>
					</tr>
					<c:forEach items="${qaaBoardList }" var="board">
						<tr align=center class="order_foreach">	
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
						<tr>
							<td colspan="5" style="text-align: right; padding-right: 10px;">
								<br><br>
								<a href="/board/customerService/QAAinsert.jsp" class="post-request chk_btn">글쓰기</a>
							</td>
						</tr>
					
					
					</table>
					
							
			
			
			
			</div> --%>
			
	
	</div>
	<br><br>
					
	<br>
</div>
	<jsp:include page="/main/footer.jsp" />


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