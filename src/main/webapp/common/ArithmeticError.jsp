<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기본 에러 화면(ArithmeticException)</title>
<style type="text/css">
	.main {
		position: absolute;
		
		left: 50%;
		margin-left: -500px;
		width: 1000px;
	}
	table {
		text-align: center;
		border-collapse: collapse;
		width: 100%;
		
	}
	
	table tr th {
		padding: 5px;
		border-top: 1px solid #ddd;
	}
	
	
	table tr td {
		padding: 10px;
		border-top: 1px solid #ddd;
	}
	
	tr:first-child th {
		background-color: #F0F0ED;
	}


 	.back {
 		width: 1000px;
	 	margin: 0 auto;
	 	text-align: center;
	 	font-size: small;
 	}
 	
 	.back a {
 		color: white;
	  	background-color: #4C874E;
	  	text-decoration: none;
	  	border-radius: 5px;
	  	padding: 6px 10px ;
	  	
 
 	}
 	
 	.back a:link {
 			color: white;
 	}
 	.back a:visited {
 		
 		color: white;
 	} 	
 	
 	
 	.back a:hover {
 		border: 2px solid #4C874E;
	  	background-color: white;
	  	color: #4C874E;
 	
 	}
 	
</style>

</head>
<body> 
	<div class="main">
		<table>
		<tr>
			<th>기본 에러 화면</th>
		</tr>
		<tr>
			<td>
				<br><br><br><br><br><br>
				Message : ${exception.message}
				<br><br><br><br><br><br>
			</td>
		</tr>
		<tr>
			<td><br></td>
		</tr>
	</table>
		<div class="back">
			<a href="javascript:history.go(-1)">돌아가기</a>
		</div>
	</div>
</body>
</html>