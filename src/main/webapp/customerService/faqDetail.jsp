<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>
<link href="${pageContext.request.contextPath}/resources/css/main1.css" rel="stylesheet" type="text/css">
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
	
	
	.title_wrap {
	  position: relative;
	  margin: 80px 0 50px;
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
	 	font-size: 12pt;
  		
	 	
	 }
	 
	.inquiry_table tr td:not(#lasttag), .inquiry_table tr th{
		border-top: 1px solid #ddd;
		border-right: 1px solid white;
	 	border-left: 1px solid white;
	
	}
	
	#firstLastTag th, #firstLastTag td {
		border-bottom: 1px solid #ddd;
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
	
	#content {
		vertical-align: top;
		height: 200px;
	  	font-size: 12pt;
	}
	


</style>
</head>
<body>
	<jsp:include page="/main/header.jsp" />
	<jsp:include page="/main/banner.jsp" />
	

<div class="main">
	<%@ include file="customerServiceSidenav.jsp" %>
	<div class="float">
		<div class="title_wrap clfix">
			<h3>자주 묻는 질문</h3>
			<h5>고객님들께서 자주 남겨주신 문의 사항들입니다. </h5>
		</div>
		
		<div class="inquiry_cont_wrap">
			<form action="updateBoard.qa" method="post" id="updateBoard" name="updateQaa">
				<table class="inquiry_table">
					<tr>
						<th>제목</th>
						<td colspan="2" name="title">${board.title }</td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="2" name="content" id="content">${board.content }</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td  colspan="2" name="writer">${board.writer }</td>
					</tr>
					<tr>
						<th >등록일</th>
						<td colspan="2">${board.regDate }</td>
					</tr>
					<tr>
						<td colspan="3"><br>
					</tr>
	
					<tr>
						<td colspan="3" id="lasttag">
							
							<a href="/board/getBoardList.fu" class="button">글 목록</a>
						</td>
					</tr>
				</table>
			</form>
			<br><br><br><br><br><br><br><br><br>	
		</div>
	</div>	
</div>
	<jsp:include page="/main/footer.jsp" />

</body>
</html>