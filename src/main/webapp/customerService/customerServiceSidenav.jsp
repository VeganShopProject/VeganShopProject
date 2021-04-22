<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객서비스 메인</title>
<style type="text/css">

	
	.sidenav {
	  width: 200px; /* 아래 main에 margin-left:-(500+이 값)px;  */
	  background: #eee;
	  overflow-x: hidden;
	  padding: 0;
	  margin: 80px 20px;
	}
	.float{
	 float: left;
	}
	
	.sidenav div {
	  padding: 6px 8px 6px 16px;	  
	  font-size: 20px;
	  color: white;
	  display: block;
	  background-color: rgba(249, 225, 205, 0.35);
	}
	
	.sidenav div a {
	  
	  text-decoration: none;

	}
	
	.sidenav div a:hover {
	  color: white;
	}
	
	/* Sweep To Right */
	.hvr-sweep-to-right {
	  display: inline-block;
	  vertical-align: middle;
	  -webkit-transform: perspective(1px) translateZ(0);
	  transform: perspective(1px) translateZ(0);
	  box-shadow: 0 0 1px white;
	  position: relative;
	  -webkit-transition-property: color;
	  transition-property: color;
	  -webkit-transition-duration: 0.3s;
	  transition-duration: 0.3s;
	}
	.hvr-sweep-to-right:before {
	  content: "";
	  position: absolute;
	  z-index: -1;
	  top: 0;
	  left: 0;
	  right: 0;
	  bottom: 0;
	  background: #213421;
	  -webkit-transform: scaleX(0);
	  transform: scaleX(0);
	  -webkit-transform-origin: 0 50%;
	  transform-origin: 0 50%;
	  -webkit-transition-property: transform;
	  transition-property: transform;
	  -webkit-transition-duration: 0.3s;
	  transition-duration: 0.3s;
	  -webkit-transition-timing-function: ease-out;
	  transition-timing-function: ease-out;
	}
	.hvr-sweep-to-right:hover, .hvr-sweep-to-right:focus, .hvr-sweep-to-right:active {
	  color: white;
	}
	.hvr-sweep-to-right:hover:before, .hvr-sweep-to-right:focus:before, .hvr-sweep-to-right:active:before {
	  -webkit-transform: scaleX(1);
	  transform: scaleX(1);
	  
	}
	
	.anchor {
		text-decoration: none; 
		color: black;
	}
	
	.anchor:hover {
		text-decoration: none; 
		color: white;
	}
	


</style>



</head>
<body>



		
		<div class="sidenav float">	  
			  
				<c:if test="${member.id == null}">
					<div class="hvr-sweep-to-right"><a href="/board/getBoardList.fu" class="anchor">자주 묻는 질문</a></div>
					<div class="hvr-sweep-to-right"><a href="/board/getBoardList.qa" class="anchor">1:1 문의 목록</a></div>
				</c:if>
				<c:if test="${member.id != null}">
					<div class="hvr-sweep-to-right"><a href="/board/getBoardList.fu?id=${member.id }" class="anchor post-request">자주 묻는 질문</a></div>
					<div class="hvr-sweep-to-right"><a href="/board/getBoardList.qa?id=${member.id }" class="anchor post-request">1:1 문의 목록</a></div>
					<div class="hvr-sweep-to-right"><a href="/board/customerService/QAAinsert.jsp?id=${member.id }" class="anchor post-request">1:1 문의 하기</a></div>
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