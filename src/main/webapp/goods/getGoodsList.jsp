<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>상품리스트</title>

<link href="${pageContext.request.contextPath}/resources/css/main1.css" rel="stylesheet" type="text/css">

<style type="text/css">
body, div, h2, table, tr, th, td, input, ul, li, form, table, h4, a, textarea{margin: 0; padding: 0;}

.bigcontent{background-color:#213421 ; padding-top: 100px; }


.bigtitle {
	text-align: center;
}

#wrapper{position: relative; text-align:center; }

	a:link {text-decoration: none; color: black;}
	a:visited {text-decoration: none; color: black;}
	a:active {text-decoration: none; color: black;}
	a:hover {text-decoration: none; color: black;}



.center{
	width:100%;
	margin:0 auto;
}
.product{
	display:inline-block; 
	margin:30px; 
	background-color: #FFFFFF;
	width:27%;
}

.all{
	width:80%;
	padding:150px 0;
	margin-top:50px;
	margin-bottom:2px;
	margin-left:auto;
	margin-right:auto;
	background-color: #FFFFFF;
	text-align: center;
}

.search{ 
-moz-appearance: none;
  -webkit-appearance: none;
  appearance: none;
  
 font-family: "Nanum Myeongjo", sans-serif;
  font-size: 1rem;
  font-weight: 400;
  line-height: 1.5;
  
  color: #444;
  background-color: #F0D8C0;
  
  padding: 0;
  margin-left:50px;
  
  border: 1px solid #aaa;
  border-radius: .5em;
  box-shadow: 0 1px 0 1px rgba(0,0,0,.04);
}
	 
h3{color:#F0D8C0; font-size:20px; margin-bottom: 0px; font-weight:normal; margin-top: 80px;}
h1{color:#fff; margin-bottom:5px; margin-top:10px;  font-size:50px; font-weight:normal; font-family:serif; }
img{text-align:center; width:100%; border-radius: 10px;}
.name{width:100%; font-size:20px; font-weight:bold; padding-top: 5px; text-align: right;}
.shortco{width:100%; font-size:18px; font-weight: normal; text-align: right;}
	
.title:focus {
 outline: none;
}
	
</style>

<script src="/board/js/jquery-3.6.0.min.js"></script> 

<script type="text/javascript">

$(function() {
	$("option").click(function() {
		$(this).submit();
	});
});

</script>


</head>
<body>
<jsp:include page="/main/header.jsp" />

<jsp:include page="/main/banner.jsp" />




<div class="bigcontent">
	<div class="bigtitle">
			<h3>건강하고 맛있게</h3>
			<h1>전체제품</h1>
	</div>


	<div id="wrapper">			
			<form action="getGoodsList.go" method="post" enctype="multipart/form-data">
				<table border="0" cellpadding="0" witdth="700">
					<tr>
						<td align="right">
						<select name="searchCondition" class="search">
							<c:forEach items="${conditionMap }" var="option">
								<option value="${option.value }"> ${option.key }</option>
								
							</c:forEach>
							</select>
							
							<%-- <input type="hidden" value=""${goods.category }/>  --%>
							<input type="submit" value="검색"/>
							</td>
					</tr>
				</table> 
			</form>
			
		
		<div class="all" >
			<div class="center" align="center">
			
			<c:forEach items="${goodsList }" var="goods">
				<table class="product" align="center">
				<tr>
					<td>			
						<a href="/board/getGoodsDetail.go?seq=${goods.seq }&name=${goods.name}" class="post-request">
							<img src="./GoodsUpload/${goods.image01}"  border="0" width="350px" height="350px">
						</a>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="border:none;" value="${goods.name }" onclick="location.href='/board/getGoodsDetail.go?seq=${goods.seq }&name=${goods.name}'" readonly class="post-request title name"/>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="border:none;" value="${goods.shortco }"  onclick="location.href='/board/getGoodsDetail.go?seq=${goods.seq }&name=${goods.name}'" class="post-request title shortco" readonly />
					</td>
				</tr>
				
				</table>
			</c:forEach>
			
			</div>
		</div>
			
			
			
</div>

</div>
<jsp:include page="/main/footer.jsp" />
<script>
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
