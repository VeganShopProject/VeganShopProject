<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의 글 답글 수정</title>


<meta name="viewport" content="width=device-width, initial-scale=1">

</head>

<body>



<div class="w3-container">
	<h3 align="center">문의글 상세</h3>
 	 <form id="qaaAdminDetail" name="qaaAdminDetail">
   		 <label for="subject">제목</label><br>
   		 <input type="text" id="title" name="title" value="${adminqaa.subject }" readonly/><br>
   		<label for=content>내용</label><br>
    	<textarea rows="10" style="resize: none; width: 100%;" id="content" name="content" readonly>${adminqaa.content }</textarea><br>
    	<label for="date">등록일</label>
		<input type="text" id="date" name="date" value="${adminqaa.qaa_date }" readonly/>
		<c:if test='${adminqaa.image != ""}'>
	 	    <label for="image">이미지</label><br>
		    <img src="${adminqaa.image }" width="300" height="200"/><br><br>
		</c:if>
 	</form>

</div>

</body>
</html>