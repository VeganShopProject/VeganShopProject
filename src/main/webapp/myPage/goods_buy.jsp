<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 페이지</title>
<link href="${pageContext.request.contextPath}/resources/css/main1.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="/main/header.jsp" />
<jsp:include page="/main/banner.jsp" />
	<table width="960" cellspacing="0" cellpadding="0" border="0" align="center">
		<tr>
			<td colspan=2 align=right>
				<!-- 주문 페이지 -->
				<form action="./startOrder.od" method="post">
					
					<!-- 주문 상세내역 -->
					<table border=0 cellspacing=1 cellpadding=0 width=80%>
						<tr>
							<p align="center"><b><font size=2>주문 상세내역</font></b></p>
						</tr>		
						<tr align=center height=20>
						<td style="font-family: Tahoma; font-size: 8pt; font-weight: bold;">번호</td>
						<td style="font-family: Tahoma; font-size: 8pt; font-weight: bold;">사진</td>
						<td style="font-family: Tahoma; font-size: 8pt; font-weight: bold;">상품명</td>
						<td style="font-family: Tahoma; font-size: 8pt; font-weight: bold;">수량</td>
						<td style="font-family: Tahoma; font-size: 8pt; font-weight: bold;">가격</td>
						
						</tr>
						
						<tr>
							<td style="background-color: #F0F0F0; height: 1px;" colspan=6>
						</tr>
	
				
						
						<c:set var="num" value="0" scope="session"/>
						<c:forEach items="${checkout}" var="ck">
							
						<tr align=center height=20>
						
						<td style="font-family: Tahoma; font-size: 7pt;">
							${num=num+1}
							
						</td>
						<td style="font-family: Tahoma; font-size: 8pt;">
							<img src="/board/GoodsUpload/${ck.order_goods_image}" width=50 height=50>
							
						</td>
						<td style="font-family: Tahoma; font-size: 8pt;">${ck.order_goods_name}
							
						</td>
						<td style="font-family: Tahoma; font-size: 8pt;">${ck.order_goods_count}
							
						</td>
						<td style="font-family: Tahoma; font-size: 8pt;"><fmt:formatNumber value="${ck.order_goods_price}" pattern="#,###" />
							
						</td>
					
						</tr>
						<tr>
							<c:set var="totalAmount" value="${ck.order_goods_price*ck.order_goods_count+totalAmount}"/>
						
							<td style="background-color: #F0F0F0; height: 1px;" colspan="6"></td>
						</tr>
					</c:forEach>
							<tr>
								<td height="28" colspan="6">
									<div align="right">
									총 주문금액 : <span><fmt:formatNumber value="${totalAmount}" pattern="#,###" /> </span>원
									</div>
								</td>

						</tr>
					</table>
					
	
					<!-- 주문자 정보 -->
					<table width=80% border=0 cellpadding="0" cellspacing="1">
						<tr>
							<td height=10>
							<input type="hidden" name="order_sum_money" value="${totalAmount}">
							</td>
						</tr>
						<tr>
							<td height=10>
							<td>
						</tr>
						<tr>
							<td><b><font size=2>주문자 정보</font></b></td>
						</tr>
						<tr>
							<td style="font-family: Tahoma; font-size: 8pt;" width=80 height=24
								bgcolor="f7f7f7">이름</td>
							<td width=320 height=24>
								<font size=2>${checkout_member.order_receive_name}</font>
								<input type="hidden" name="order_member_orderNum" value="${checkout_member.order_member_orderNum }"/>
								<input type="hidden" name="order_member_seq" value="${checkout_member.order_member_seq }"/>
							</td>
						</tr>
						<tr>
							<td style="background-color: #F0F0F0; height: 1px;" colspan=6>
						</tr>
						<tr>
							<td style="font-family: Tahoma; font-size: 8pt;" height=24
								bgcolor="f7f7f7">휴대폰</td>
							<td width=320 height=24>
								<font size=2>${checkout_member.order_receive_phone}</font>
							</td>
						</tr>
						<tr>
							<td style="background-color: #F0F0F0; height: 1px;" colspan=6>
						</tr>
						<tr>
							<td style="font-family: Tahoma; font-size: 8pt;" height=24
								bgcolor="f7f7f7">이메일 주소</td>
							<td width=320 height=24>
								<font size=2>${checkout_member.order_receive_email}</font>
							</td>
						</tr>
						<tr>
							<td style="background-color: #F0F0F0; height: 1px;" colspan=6>
							</td>
						</tr>
					</table> 
					
					
					<!-- 배송지 정보 -->
					<table width=80% border=0 cellpadding="0" cellspacing="1">
						<tr>
							<td height=10>
							<td>
						</tr>
						<tr>
							<td height=10>
							<td>
						</tr>
						<tr>
							<td><b><font size=2>배송지 정보</font></b></td>
						</tr>
						<tr height=20>
							<td style="font-family: Tahoma; font-size: 8pt;" width=130 height=24
								bgcolor="f7f7f7">받는사람</td>
							<td style="font-family: Tahoma; font-size: 8pt;">
								<input type="text" name="order_receive_name" size=12
								value="${checkout_member.order_receive_name}">
							</td>
						</tr>
						<tr>
							<td style="background-color: #F0F0F0; height: 1px;" colspan=6>
						</tr>
						<tr height=23>
							<td style="font-family: Tahoma; font-size: 8pt;" width=130 height=24
								bgcolor="f7f7f7">집 전화</td>
							<td style="font-family: Tahoma; font-size: 8pt;">
								<input type="text" name="order_receive_phone" size=15
								value="${checkout_member.order_receive_phone}">
							</td>
						</tr>
						<tr>
							<td style="background-color: #F0F0F0; height: 1px;" colspan=6>
						</tr>
						
						<tr height=20>
							<td style="font-family: Tahoma; font-size: 8pt;" width=130 height=24
								bgcolor="f7f7f7">배송지 우편번호</td>
							<td style="font-family: Tahoma; font-size: 8pt;">
								<input type="text" name="order_receive_zipcode1" size=7
								value="${checkout_member.order_receive_zipcode1}">-
								<input type="text" name="order_receive_zipcode2" size=7
								value="${checkout_member.order_receive_zipcode2}">
							</td>
						</tr>
						<tr>
							<td style="background-color: #F0F0F0; height: 1px;" colspan=6>
						</tr>
						<tr height=20>
							<td style="font-family: Tahoma; font-size: 8pt;" width=130 height=24
								bgcolor="f7f7f7">배송지 주소</td>
							<td style="font-family: Tahoma; font-size: 8pt;">
								<input type="text" name="order_receive_addr1" size=50
								value="${checkout_member.order_receive_addr1}"></td>
						</tr>
						<tr>
							<td style="background-color: #F0F0F0; height: 1px;" colspan=6>
						</tr>
						<tr height=20>
							<td style="font-family: Tahoma; font-size: 8pt;" width=130 height=24
								bgcolor="f7f7f7">배송지 나머지 주소</td>
							<td style="font-family: Tahoma; font-size: 8pt;">
								<input type="text" name="order_receive_addr2" size=50
								value="${checkout_member.order_receive_addr2}">
							</td>
						</tr>
						<tr>
							<td style="background-color: #F0F0F0; height: 1px;" colspan=6>
						</tr>
						<tr height=20>
							<td style="font-family: Tahoma; font-size: 8pt;" width=130 height=24
								bgcolor="f7f7f7">기타 요구사항</td>
							<td style="font-family: Tahoma; font-size: 8pt;">
							<textarea name="order_memo" cols=60 rows=12></textarea>
							</td>
						</tr>
						<tr>
							<td style="background-color: #F0F0F0; height: 1px;" colspan=6>
								
							</td>
						</tr>
					</table>
	
					<!-- 결제 정보 -->
					<table width=80% border=0 cellpadding="0" cellspacing="1">
						<tr>
							<td height=10>
							<td>
						</tr>
						<tr>
							<td height=10>
							<td>
						</tr>
						<tr>
							<td><b><font size=2>결제 정보</font></b></td>
						</tr>
						<tr>
							<td style="font-family: Tahoma; font-size: 8pt;" width=200 height=24
								bgcolor="f7f7f7">결제 방식: </td>
							<td width=320 height=24>
							  <input type="radio" id="card" name="order_trade_type" value="카드결제">
							  <label for="card">카드결제</label>    
							  <input type="radio" id="deposit" name="order_trade_type" value="온라인 입금">
							  <label for="deposit">온라인 입금</label>
							</td>
						</tr>						
						<tr>
							<td style="font-family: Tahoma; font-size: 8pt;" width=200 height=24
								bgcolor="f7f7f7">입금자명(온라인입금일 경우) :</td>
							<td width=320 height=24>
							<input type="text" name="order_trade_payer"
								size=20 value="${checkout_member.order_receive_name}">
							</td>
						</tr>
						<tr>
							<td style="background-color: #F0F0F0; height: 1px;" colspan=6>
						</tr>
						<tr>
							<td align=center style="background-color: #F0F0F0; height: 1px;"
								colspan=6>
								
							
								<input type=submit value="주문">&nbsp;
								<a href="/board/backOrder.od" class="post-request">취소</a>
							</td>
						</tr>
					</table>
				</form>			
			</td>
		</tr>
	</table>
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