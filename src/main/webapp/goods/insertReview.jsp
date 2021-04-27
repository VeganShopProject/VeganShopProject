<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글 등록</title>
<link href="${pageContext.request.contextPath}/resources/css/main1.css" rel="stylesheet" type="text/css">
<style type="text/css">

		body{width:70%; margin: 50px auto; }
		
	 /* 	.star_rating {font-size:0; letter-spacing:-4px;}
		.star_rating a {
		    font-size:22px;
		    letter-spacing:0;
		    display:inline-block;
		    margin-left:5px;
		    color:#ccc;
		    text-decoration:none;
		}
		.star_rating a:first-child {margin-left:0;}
		.star_rating a.on {color:#FFD700;}
 */

</style>
<script src="./js/jquery-3.6.0.min.js"></script> 
<script src="../js/jquery-3.6.0.min.js"></script> 

<script type="text/javascript">
	
$(function() {
	alert("오");
	/* $(".star_rating a").click(function() {
		
		$(this).parent().children("a").removeClass("on");
	     $(this).addClass("on").prevAll("a").addClass("on");
	     /* e.preventDefault(); */
	     
	    // alert("왜 안나오지")
	    // var vstar = $(this).val();
	   /*  var star= $('input[name=star]').val();
	    alert(vstar);
	      $('input[name=star]').val(vstar); */
	      /*
	      alert(vstar);
	      
	      document.reviewform.star.value=star;
	     
	      return vstar;
	}); */
});
	var locked=0;
	
	function show(star) {
		 if (locked)
			return; 
		var i;
		var image;
		var el;
		var e =document.getElementById('startext');
		var stateMsg;
		
		for (i = 1; i <=star; i++){
			image='image' +i;
			el = document.getElementById(image);
			el.src =  "./image/star1.png";
		}
		
		switch(star) {
		case 1:
			stateMsg = "너무 별로네요";
			break;
		case 2:
			stateMsg = "별로네요";
			break;
		case 3:
			stateMsg = "보통이요";
			break;
		case 4:
			stateMsg = "좋아요";
			break;
		case 5:
			stateMsg = "너무 좋아요";
			break;
		default:
			stateMsg = "";
		}
		e.innerHTML = stateMsg;
	}
	
	function noshow (star){
		 if(locked)
			return; 
		var i;
		var image;
		var el;
		
		for (i = 1; i <=star; i++){
			image='image' +i;
			el = document.getElementById(image);
			el.src =  "./image/starb.png";
		}
	}
	
	function lock(star){
		show(star);
		locked = 1;
	}
	function mark(star){
		
		if(locked==0){
			lock(star);
			alert("선택"+star);
			
			document.reviewform.star.value=star;
		}else if(locked==1){
			locked=0;
			noshow(5);
			lock(star);
			
			
			document.reviewform.star.value=star;
			
			
		}
		
		
	}
	
	


</script>
</head>
<body>
	
<jsp:include page="/main/header.jsp" />
<jsp:include page="/main/banner.jsp" />	
				
		<table>	
		<tr> 
			<td><p align="center"><span style="font-size: 26pt;">댓글 등록</span></p></td>
		</tr>
		</table>		
		<form name="reviewform" action="insertReview.re" method="post" enctype="multipart/form-data">
			<table width="750" cellspacing="0" cellpadding="15px" border="1" bordercolor="gray" align="center">
				
				<tr>
					<td width="196" height="30"><p align="center"><font size=2>상품 이름</font></p></td>
					<td  width="346" height="30"><input type="text" name="name" value="${goods.name} " readonly="readonly"></td>
					<%-- <input type="text" placeholder="${goods.name }" name="goods_name" value="${goods.name }"  >  --%>
				</tr>
				<tr>
					<td><p align="center"><font size=2>작성자</font></p></td>
					<td><input type="text" name="user_name" value="${member.name }" readonly="readonly">  </td>
				</tr>
				<tr>
					<td><p align="center"><font size=2>포토 리뷰</font></p></td>
					<td><input type="file" name="file" ></td>
				</tr>
				<tr>
					<td><p align="center"><font size=2>리뷰 제목</font></p></td>
					<td width="346"><input type="text" name="content_name" ></td>
				</tr>
				<tr>
					<td><p align="center"><font size=2>리뷰★</font></p></td>
					<td width="346"><textarea name="content" cols=50 rows=15></textarea></td>
				</tr>
				<tr>
					<td><p align="center"><font size=2>별점</font></p></td>
					<td align="center">
						<!-- <input type="number" name="star"> -->
						<div id="rating" align=center>
							<span>
							    <img id="image1" onmouseover=show(1) onclick=mark(1) onmouseout=noshow(1) src="./image/starb.png" width="20px" height="20px">
							    <img id="image2" onmouseover=show(2) onclick=mark(2) onmouseout=noshow(2) src="./image/starb.png" width="20px" height="20px">
							    <img id="image3" onmouseover=show(3) onclick=mark(3) onmouseout=noshow(3) src="./image/starb.png" width="20px" height="20px">
							    <img id="image4" onmouseover=show(4) onclick=mark(4) onmouseout=noshow(4) src="./image/starb.png" width="20px" height="20px">
							    <img id="image5" onmouseover=show(5) onclick=mark(5) onmouseout=noshow(5) src="./image/starb.png" width="20px" height="20px">
			 				</span>	
			 			<br/><span id="startext">평가하기</span>
			 			</div>
			 				<input type="hidden" name="star">
					</td>
				</tr>
			</table>
			<table>
		<tr>
				<td height="75"><p align="center">
					<input type="submit" value="댓글 등록">&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="댓글 편집"></p>
				</td>
			</tr>
			
			</table>
</form>		

<jsp:include page="/main/footer.jsp" />




</body>
</html>