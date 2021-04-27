<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 메인</title>


<link href="${pageContext.request.contextPath }/resources/css/memberMain.css" rel="stylesheet" type="text/css">

</head>
<body>
	<jsp:include page="/main/header.jsp" />
<jsp:include page="/main/banner.jsp" />	
			<div id="together">
				<ul>
					<li>
						<div id="first">
							<p> 저희 쇼핑몰을 이용해주셔서 감사합니다. </p>
							<p>${member.name}님은 [씨앗]등급이십니다.</p>
						</div>
					</li>
					<li>
						<div id="second">
							<p>가용 적립금 : </p>
							<p>사용 적립금 : </p>
							<p>쿠폰 : </p>
						</div>
					</li>
					<li>
						<div id="third">
							<p>총 적립금 : </p>
							<p>총 주문금액 : </p>
						</div>
					</li>
				</ul>
			</div>
		
		<div id="category_wrap">
			<div id="category">
				<b>마이페이지</b>
				<table>
					<tr><td ><a href="/board/orderList.od" class="post-request"><span>주문 내역</span></a></td></tr>
					<tr><td><a href="#"><span>배송지 관리</span></a></td></tr>
					<tr><td><a href="#"><span>상품 후기</span></a></td></tr>
					<tr><td><a href="/board/myPage/memberUpdate.jsp"><span>개인정보 수정</span></a></td></tr>
				</table>
			</div>
		</div>
		
		
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/javaScript.js"></script>

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

<jsp:include page="/main/footer.jsp" />	
</body>
</html>