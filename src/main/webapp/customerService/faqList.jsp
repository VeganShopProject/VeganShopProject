<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 목록</title>
<style type="text/css">
	body {
	  font-family: Nanum Myeongjo;
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
	
	.title 	{
	
	text-decoration: none; 
	color: black}
	
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
			<h3>자주 묻는 질문</h3>
			<h5>고객님들께서 자주 남겨주신 문의 사항들입니다. </h5>
		</div>		
		
		<div class="inquiry_cont_wrap"><br>
			<table class="inquiry_table">
				<tr>
					<th width="15%">번호</th>
					<th width="20%">제목</th>
					<th width="40%">내용</th>
					<th width="15%">등록자</th>
					<th width="10%">등록일</th>
				</tr>				
				
				<c:set var="count" value="0"/>
				<c:forEach items="${faqBoardList}" var="board">
					<tr>				
						<c:set var="contentResult" value="${board.content }"/>
						<c:set var="dot" value="..."/>
						<c:set var="count" value="${count +1}"/>
						<td>${count}</td>
						<td><a href="getBoard.fu?seq=${board.seq}" class="title">${board.title }</a></td>
						<td>${fn:substring(contentResult,0,56)}${dot }</td>
						<td>${board.writer }</td>
						<td><fmt:formatDate value="${board.regDate }" pattern="yyyy-MM-dd"/></td>
					</tr>
				</c:forEach>
			</table>
		</div>		
	</div>
</div>


</body>
</html>