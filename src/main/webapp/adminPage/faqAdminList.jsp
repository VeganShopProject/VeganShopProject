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
#faq {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#title, #content{
	padding: 8px;
	text-align: left;
}
#faq td:not(#title):not(#content), #faq th {
  padding: 8px;
  text-align: center;
}
#faq tr:nth-child(even){background-color: white;}
#faq tr:hover {border-color: rgba(223, 249, 205, 0.35);}
#faq th {
  padding-top: 12px;
  padding-bottom: 12px;
  background-color: #213421;
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

<script>
	
	function w3_open() {
		document.getElementById("mySidebar").style.display = "block";
	}

	function w3_close() {
		document.getElementById("mySidebar").style.display = "none";
	}


	
</script>
</head>

<body>
	
<%@ include file="adminMainIncludeHeaderHamburger.jsp" %> 


<div class="w3-container">
	<h3 align="center"><spring:message code="message.board.list.mainTitle"/></h3>
	<table id="faq">
  		<tr>
    		<th width="5%"><spring:message	code="message.board.list.table.head.seq" /></th>
    		<th width="33%"><spring:message code="message.board.list.table.head.title" /></th>
    		<th width="40%"><spring:message code="message.board.list.table.head.content" /></th>
    		<th width="7%"><spring:message code="message.board.list.table.head.writer" /></th>
    		<th width="15%"><spring:message code="message.board.list.table.head.regDate" /></th>
		</tr>
	
<c:forEach items="${faqBoardList }" var="board">	
		<tr>
		<c:set var="contentResult" value="${board.content }"/>
		<c:set var="dot" value="..."/>
		<c:set var="count" value="${count +1}"/>
			<td>${count}</td>
			<td id="title"><a href="getBoard.fa?seq=${board.seq }" >${board.title }</a></td>
			<td id="content">${fn:substring(contentResult,0,56)}${dot }</td>
			<td>${board.writer}</td>
			<td><fmt:formatDate value="${board.regDate }" pattern="yyyy-MM-dd"/></td>
		</tr>
	</c:forEach> 
	</table>
	<button class="button" onclick="location.href='./adminPage/faqAdminInsert.jsp'"><spring:message code="message.board.list.link.insertBoard"/></button>
	</div>	
	

</body>
	
</html>