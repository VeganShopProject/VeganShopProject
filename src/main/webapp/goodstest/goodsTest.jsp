<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객서비스 메인</title>



</head>
<body>
<c:set var="four" value="4"/>
<c:set var="three" value="3"/>
<c:set var="two" value="2"/>


		
		<div >	  
		<c:if test="${member.id == null}">
			<a href="/board/addBasket.do?goodsSeq=${three }&amount=${two}">있는 거 장바구니 추가</a><br><br><br>
			<a href="/board/addBasket.do?goodsSeq=${four }&amount=${four }">없는 거 장바구니 추가</a><br><br><br>
			<a href="/board/prepareOrderOnly.od?order_goods_num=${three}&order_goods_count=${four}" >바로 주문</a>
		</c:if>
		<c:if test="${member.id != null}">
			<a href="/board/addBasket.do?goodsSeq=${three }&amount=${two}&seq=${member.seq }" class="post-request">회원 있는 거 장바구니 추가</a><br><br><br>
			<a href="/board/addBasket.do?goodsSeq=${four }&amount=${four}&seq=${member.seq }" class="post-request">회원 없는 거 장바구니 추가</a><br><br><br>
			<a href="/board/prepareOrderOnly.od?order_goods_num=${four}&order_goods_count=${two}&id=${member.id}&seq=${member.seq }"  class="post-request">회원 바로 주문</a>
		</c:if>
	
				
		</div>
	
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