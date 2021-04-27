<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/main1.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/QAADetail.css" rel="stylesheet" type="text/css">

</head>
<body>
		<jsp:include page="/main/header.jsp" />
	<jsp:include page="/main/banner.jsp" />
	
	<div id="member_all_wrap">
		<div id="category_wrap">
			<div id="category">
				<b>고객 서비스</b>
				<table >
				<c:if test="${member.id == null}">
					<tr><td ><a href="/board/getBoardList.fu"><span>자주 묻는 질문</span></a></td></tr>
					<tr><td><a href="/board/getBoardList.qa"><span>1:1 문의 목록</span></a></td></tr>
				</c:if>
				<c:if test="${member.id != null}">
					<tr><td ><a href="/board/getBoardList.fu?id=${member.id }" class="post-request"><span>자주 묻는 질문</span></a></td></tr>
					<tr><td><a href="/board/getBoardList.qa?id=${member.id }" class="post-request"><span>1:1 문의 목록</span></a></td></tr>
					<tr><td><a href="/board/customerService/QAAinsert.jsp?id=${member.id }" class="post-request"><span>1:1 문의 하기</span></a></td></tr>
				</c:if>
					
				</table>
			</div>
			
			
			<div id="content">
				<h1>1:1 문의 게시판</h1>
				<h3>${member.name }님이 남겨주신 문의 사항입니다. </h3>
				<div class="bold_line"></div>
				<form action="updateBoard.qa" method="post" id="updateBoard" name="updateQaa">
				<table class="inquiry_table" id="form_table" style="width: 100%">
					<tr height="50px">
					<td><p>카테고리</p></td>
					<td  colspan="2" name="category">${qaa.category }</td>
				</tr>
				
				<tr height="50px">
					<td><p>제목</p></td>
					<td colspan="2">
						<input name="subject" type="text" value="${qaa.subject }" size="100"/>
					</td>
				</tr>

				
				<tr >
					<td><p>내용</p></td>
					<td colspan="2"><textarea name="content" id="content" rows="15" style="resize: none; width:100%;">${qaa.content }</textarea></td>
				</tr>
				<c:if test='${qaa.image != null}'>
				<tr height="50px" >
					<td><p>첨부파일</p></td>
					<td colspan="2"><img src="${qaa.image }" width="300" height="200" class="input_style" /></td>
				</tr> </c:if>
				<tr height="50px">
					<td ><p>등록일</p></td>
					<td colspan="2" >${qaa.qaa_date }</td>
				</tr>
				<tr >
					<td colspan="3"><div class="thin_line"></div><br>
				</tr>
				<tr style="text-align: center;">
					<td colspan="3" id="lasttag">
					<input name="id" type="hidden" value="${member.id}" />
						<a href="/board/customerService/QAAinsert.jsp?id=${member.id }" class="post-request chk_btn">새글 등록</a>&emsp;
						<a href="javascript:updateQaa.submit()" class="post-request chk_btn">수정 하기</a>&emsp;
						<a href="/board/deleteBoard.qa?re_ref=${qaa.re_ref }&id=${member.id }" class="post-request chk_btn">글삭제</a>&emsp;
						<a href="/board/getBoardList.qa?id=${member.id }" class="post-request chk_btn">취소</a>
					</td>
		
				</tr>
				</table>
			</form>
				
			
			
			</div>
		
		
		
		</div>
	
	
	
	
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