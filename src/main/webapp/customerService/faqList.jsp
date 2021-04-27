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

.text_hide {
	display: inline-block;
	text-indent: -9999px;
}


.under__line{
	border-bottom: 2px solid #213421;
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
<div id="member_all_wrap">
<br>
	<div id="category_wrap">
			<%@ include file="customerServiceSidenav.jsp" %>	
<div id="order_wrap">
				<div class="member_name">
					<h1>자주 묻는 질문</h1>
					<h3>고객님들께서 자주 남겨주신 문의 사항들입니다. </h3>
				</div>
				
				
				
				<table width="85%" align="center" id="member_table" cellpadding="0" cellspacing="0">
					<tr style="background-color:#243421; height: 26px ">
							<td height="3" colspan="5" align=right></td>
					</tr>
					<tr style="font-weight: normal; height: 40px;">
						<th width="10%" class="under__line">번호</th>
						<th width="20%" class="under__line">제목</th>
						<th width="45%" class="under__line">내용</th>
						<th width="15%" class="under__line">등록자</th>
						<th width="10%" class="under__line">등록일</th>
					</tr>				
					
					<c:set var="count" value="0"/>
					<c:forEach items="${faqBoardList}" var="board">
						<tr align=center class="order_foreach" style="font-weight: normal; height: 60px;">				
							<c:set var="contentResult" value="${board.content }"/>
							<c:set var="dot" value="..."/>
							<c:set var="count" value="${count +1}"/>
							<td>${count}</td>
							<td><a href="getBoard.fu?seq=${board.seq}" class="title">${board.title }</a></td>
							<td style="padding: 8px; text-align: left; font-size: small; vertical-align: top;">${fn:substring(contentResult,0,80)}${dot }</td>
							<td>${board.writer }</td>
							<td><fmt:formatDate value="${board.regDate }" pattern="MM-dd"/></td>
						</tr>
					</c:forEach>
				</table>
			</div> 
		</div>
	
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