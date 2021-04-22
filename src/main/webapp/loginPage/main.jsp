<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 홈페이지</title>
</head>
<body>

	<%-- 로그인 성공한 경우 출력되는 페이지 --%>
	<h2>${member.name}님 환영합니다.</h2>
	<h3> 메인 페이지</h3>
	<a href="/board/getCmntList.co?id=${member.id }" class="post-request">커뮤니티 페이지</a><br><br><br>
	<a href="/board/getBoardList.fu?id=${member.id }" class="post-request">고객 서비스 메인</a><br><br><br>
	<a href="/board/getBoardList.qa?id=${member.id }" class="post-request">고객 1:1 문의 목록</a><br><br><br>	
	<a href="/board/basketList.do" class="post-request">장바구니 목록</a><br><br><br>
	<a href="/board/orderList.od" class="post-request">주문 내역</a><br><br><br>
	<a href="/board/goodstest/goodsTest.jsp?seq=${member.seq }" class="post-request">장바구니 추가 기능 테스트를 위한 상품 목록</a><br><br><br>
	<hr>

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