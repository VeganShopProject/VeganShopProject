<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
* {box-sizing: border-box;}
a{color: inherit; text-decoration: none;}
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
#qaa {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#qaa td, #goods th {
  padding: 8px;
  text-align: center;
}
#qaa tr:nth-child(even){background-color: white;}
#qaa tr:hover {border-color: rgba(223, 249, 205, 0.35);}
#qaa th {
  padding-top: 12px;
  padding-bottom: 12px;
  background-color: #213429;
  color: #ffffff;
}
.button{
	width: 13%;
	color: #ffffff;
	padding: 5px 11px;
	margin: 8px 0;
	float:right; 
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 17px;	
	background-color: #213429;
}
.button:hover{
	background-color:#213429;
	color: #ffffff;
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
	<h3 align="center">1:1 문의 관리</h3><br>
	
	<%-- <table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr>
				<td align="right">
					<form action="getBoardList.aq" method="post">
						<select name="filterCategory">
							<c:forEach items="${categoryMap }" var="option">
								<option value="${option.value }">${option.key }
							</c:forEach>							
						</select> 
						<input type="submit" value="선택"/>
					</form>
				</td>
				<td align="center">
					<form action="getBoardList.aq" method="post">
						<select name="searchCondition">
							<c:forEach items="${conditionMap }" var="option">
								<option value="${option.value }">${option.key }
							</c:forEach>
						</select> 
						<input name="searchKeyword" type="text" /> 
						<input type="submit" value="검색"/>
					</form>
				</td>

				
				
				<td align="right">
					<form action="getBoardList.aq" method="post">
						<select name="filterStatus">
							<c:forEach items="${statusMap }" var="option">
								<option value="${option.value }">${option.key }
							</c:forEach>							
						</select> 
						<input type="submit" value="선택"/>
					</form>
				</td>
			</tr>
		</table> --%>
		
		
	<table id="qaa">
  		<tr>    		
    		
    		<th width="20%">카테고리</th>
    		<th width="30%">제목</th>
    		<th width="15%">작성자</th>
    		<th width="15%">상태</th>
   			<th width="20%">일자</th>
  		</tr>
		<c:forEach items="${qaaBoardList }" var="board">
		<tr>
			
			<td>${board.category }</td>
			<td><a href="getBoard.aq?re_ref=${board.re_ref}&status=${board.status}">${board.subject }</a></td>
			<td>${board.id }</td>
			<td>${board.status }</td>
			<td><fmt:formatDate value="${board.qaa_date}" pattern="yyyy-MM-dd"/></td>
		</tr>
		</c:forEach> 
		
	</table>
	<br><br><br><br>
</div>	
</body>
</html>