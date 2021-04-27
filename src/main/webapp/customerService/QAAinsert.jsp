<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/main1.css" rel="stylesheet" type="text/css">
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



.order_wrap{
	display:inline-block;
	width:75%;
}

.order_wrap .member_name{
	text-align: center;
	vertical-align:top;
	
	margin-bottom: 50px;
}

	

	
	.title_wrap h3 {
	  font:400 40px/40px 'Roboto','Noto Sans KR';
	  color:#222222;
	  text-align: center;
	  letter-spacing: -0.2px;
	}
	.title_wrap h5 {
	  font:400 20px/20px 'Roboto','Noto Sans KR';
	  color:#222222;
	  text-align: center;
	  letter-spacing: -0.2px;
	}
	


	 .inquiry_table {	  	
	 	width: 90%;
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
	 	
 		padding: 10px;
  		text-align: left;
  		font-weight: normal;
	 
	 }
	
	.inquiry_table th {
		padding: 4px;
		text-align: center;
	  	color: white;
	  	width: 15%;
	  	    background-color: #213421;
	  	font-weight: normal;
	}
	
	#lasttag {
		
		text-align: center;

	}

	
	.inquiry_table input[type=text] {
	  	height: 25px;
	  	font-size: 13pt;
	  	border: 1px solid #ddd;
	}
	
	#content {
		vertical-align: top;
		height: 200px;
	  	font-size: 11pt;
	  	width: 100%;
	  	border: 1px solid #ddd;
	}
	.inquiry_table input[type=file] {
	  	height: 30px;
	  	font-size: 13pt;
	  	
	}
	
	.inquiry_table select {
	  	height: 25px;
	  	font-size: 13pt;
	  	border: 1px solid #ddd;
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
	



</style>
</head>

<body>

	<jsp:include page="/main/header.jsp" />
	<jsp:include page="/main/banner.jsp" />



<div class="under_line"></div>
<div  id="member_all_wrap">

	<div  id="category_wrap">
		
		<%@ include file="customerServiceSidenav.jsp" %>	
		
		
		<div class="order_wrap">
			<div class="title_wrap clfix">
				<h3>1:1 문의 게시판</h3><br>
				<h5>문의를 남겨주시면, 신속하게 도와 드리겠습니다.</h5><br><br>
			</div>
			<div class="inquiry_cont_wrap"><br>			
				<form action="../insertBoard.qa" method="post" enctype="multipart/form-data" name="insertQaa">
				
					<table class="inquiry_table">
						<tr >
						<th>카테고리</th>
						<td colspan="2" >
							<select name="category">
								<option value="회원문의">회원문의</option>
								<option value="주문/결제">주문/결제</option>
								<option value="배송문의">배송문의</option>
								<option value="취소/교환/반품">취소/교환/반품</option>
								<option value="서비스 이용 및 기타">서비스 이용 및 기타</option>					
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
							<input  class="button" value="등록 하기" type="submit"/>&emsp;						
							<a href="/board/getBoardList.fu" class="button">취소</a>
						</td>
			
					</tr>
					</table>
				</form>
				
			</div>
	</div>
		
		</div>
		
		
		
		</div>


	
		<jsp:include page="/main/footer.jsp" />



</body>
</html>