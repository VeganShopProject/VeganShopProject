<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- JSTL 사용 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>쇼핑몰</title>



</head>
<body>

	<table width="960" cellspacing="0" cellpadding="0" border="0"
		align="center">
		<tr>
			<td colspan=2>
				<!-- 장바구니 -->
				<p align="center">
				<form action="./prepareOrder.od" name="basketform" method="post">
					<input type="hidden" name="order" value="basket">
					<table width="80%">
						<tr align=center>
							<td><b>${member.name}님 장 바 구 니</b></td>
						</tr>
					</table>

					<table width="80%" cellpadding="0" cellspacing="0">
						<tr height=26 bgcolor="94d7e7">
							<td height="3" colspan="7" align=right></td>
						</tr>
						<tr bgcolor="#f0f8ff" align="center">
							<c:if test='${member.id == "admin"}'>
								<td width="10%"><font size="2">이름</font></td>
							</c:if>
							<td width="15%"><font size="2">사진</font></td>
							<td width="25%"><font size="2">제품명</font></td>
							<td width="30%"><font size="2">수량</font></td>
							<td width="10%"><font size="2">가격</font></td>
							<td width="10%"><font size="2">취소</font></td>
						</tr>


						<c:if test="${fn:length(basketList) == 0}">
							<tr>
								<td colspan="7" align="center"><font size="2">장바구니에
										담긴 상품이 없습니다.</font></td>
							</tr>
						</c:if>

						<c:if test="${fn:length(basketList) != 0}">
							<c:set var="sum_money" value="0" />
							<c:forEach var="basket" items="${basketList}">
								<c:set var="sum_money"
									value="${sum_money+ (basket.price * basket.amount)}" />
								<!-- \${basket.필드}은 BasketVO의 필드값이랑 똑같아야 한다 -->
								<tr align="center">
									<c:if test='${member.id == "admin"}'>
										<td><font size="2">${basket.memberName}</font></td>
									</c:if>
									<td><font size="2"><img
											src="/board/resources/image/${basket.image}" width=50
											height=50></font></td>
									<td><font size="2">${basket.goodsName}</font></td>
									<td><c:if test='${member.id != "admin"}'>
											<input type="button" value="-"
												onClick='minusClick("${basket.goodsSeq}", ${basket.price})' />
											<span id="am__${basket.goodsSeq}">${basket.amount}</span>
											<input type="button" value="+"
												onClick='plusClick("${basket.goodsSeq}",${basket.goodsAmount}, ${basket.price})' />
										</c:if> <c:if test='${member.id == "admin"}'>
											<input type="hidden" value="-"
												onClick='minusClick("${basket.goodsSeq}", ${basket.price})' />
											<span id="am__${basket.goodsSeq}">${basket.amount}</span>
											<input type="hidden" value="+"
												onClick='plusClick("${basket.goodsSeq}",${basket.goodsAmount}, ${basket.price})' />
										</c:if></td>
									<td><font size="2"><fmt:formatNumber value="${basket.price}" pattern="#,###" /></font></td>
									<td><font size="2"> <a
											href="deleteBasket.do?goodsSeq=${basket.goodsSeq}"
											onclick="return confirm('삭제하시겠습니까?')" class="post-request">삭제</a>
									</font></td>
								</tr>

							</c:forEach>
						</c:if>
					</table>

					<table width="80%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="2" bgcolor="94d7e7"></td>
						</tr>

						<tr>
							<td height="28">
								<div align="right">
									총 주문금액 : <span id="sum__money"><fmt:formatNumber
											value="${sum_money}" pattern="#,###" /> </span>원
								</div>
							</td>
						</tr>
					</table>
					<br>

					<table width="80%" cellpadding="0" cellspacing="0">
						<tr>
							<td align="center"><c:if
									test="${fn:length(basketList) != 0}">
									<a href="javascript:basketform.submit()" > [구매하기] </a>
								</c:if>
								<a href="/board/loginPage/main.jsp" > [상품 구경가기?? 링크 바꾸기] </a>
								</td>
						</tr>
					</table>
				</form> <!-- 장바구니 -->
			</td>
		</tr>
	</table>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<script>
	
		function numberWithCommas(x) {
		    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
	
		function updateAmount(qs, goodsSeq, amount, price){
			
			var reqData = {};//객체
			reqData.goodsSeq = goodsSeq;//필드값 정의
			reqData.amount = amount;
			
			$.ajax({
				url:'/board/updateBasket.do',
				type:'post',
				contentType:'application/json;charset=UTF-8', //클라이언트 -> 서버 로 보낼 데이터 형식
				dataType:'json',//서버 -> 클라이언트 전달 받는 형식
				data:JSON.stringify(reqData),//()안에 있는 값을 서버로 전송
				success:function(data){
					if(data.OK){
						qs.innerHTML = amount;
						var mqs = document.querySelector('#sum__money');
						mqs.innerHTML = numberWithCommas(Number(mqs.innerHTML.replaceAll(",","")) + price);
					}else{
						alert('로그인하세요');
						location.href="/board";
					}

				}
			});
		}
	
		//수량감소
		function minusClick(goodsSeq, price){
			var qs = document.querySelector("#am__"+goodsSeq);
			var currentAmount = Number(qs.innerHTML);
			if(currentAmount <= 1){
				qs.innerHTML = 1;
				alert('1개 이상 필수');
			}else{
				updateAmount(qs, Number(goodsSeq), currentAmount - 1, price* -1);
			}
		}
	
		//수량증가
		function plusClick(goodsSeq, goodsAmount, price){//goodsAmount : 상품 재고 //상품 재고까지만 수량을 올릴 수 있게 제어해주어야 함
			var qs = document.querySelector("#am__"+goodsSeq);//셀렉터지정
			var currentAmount = Number(qs.innerHTML);//문자 -> 숫자
			if(currentAmount >= goodsAmount){//재고 수량 초과시 최대수량으로 셋팅
				qs.innerHTML = goodsAmount
				alert('구매가능한 최대수량은 [ '+ goodsAmount + ' ] 입니다');
			}else{
				updateAmount(qs, Number(goodsSeq), currentAmount + 1, price);
			}
		}
		
		//앵커테그 post 방식 전달.
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
