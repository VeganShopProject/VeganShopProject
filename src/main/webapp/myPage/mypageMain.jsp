<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="960" cellspacing="0" cellpadding="0" border="0" align="center">
<tr>
<td colspan=2>
<!-- 회원의 주문내역 보기 -->
<table width="700" border="0" align="center">
	<tr>
		<td height="62" align="center" valign="middle">
			<table width="700" border="1" cellspacing="0" cellpadding="0"
			bordercolor="#CCCCCC">
				<tr>
					<td height="20"><div align="center">등급</div></td>
					<td height="20"><div align="center">적립금</div></td>
					<td height="20"><div align="center">배송 중</div></td>
				</tr>
				<tr>
					<td height="20"><div align="center">등급</div></td>
					<td height="20"><div align="center">${order.order_sum_money*0.1 }점</div></td>
					<td height="20"><div align="center">
<%-- 						<%if (%>$(order.order_status)<% == 0) {%>대기중
				<%}else if (%>$(order.order_status)<% == 1){%>발송준비
				<%}else if  (%>$(order.order_status)<% == 2){%>발송완료
				<%}else if  (%>$(order.order_status)<% == 3){%>배송중
				<%}else if  (%>$(order.order_status)<% == 4){%>배송완료
				<%}else if  (%>$(order.order_status)<% == 5){%>주문취소
				<%}%>
					 --%>
					
					</div></td>
				</tr>
			</table>		
		</td>
	</tr>
	<tr>
		<td>현재 (${order.order_member_id })고객님께서 주문하신 내역이 총 ("${order.order_sum_money}")개 있습니다.</td>
	</tr>
	<tr>
		<td height="62" align="center" valign="middle">
		<table width="700" border="1" cellspacing="0" cellpadding="0"
			bordercolor="#CCCCCC">
			<tr>
				<td height="20"><div align="center">상품명</div></td>
				<td><div align="center">색상/사이즈</div>	</td>
				<td><div align="center">수량</div></td>
				<td><div align="center">총 금액</div></td>
				<td><div align="center">주문 상태</div></td>
				<td><div align="center">주문 날짜</div></td>
			</tr>
			
<%-- 			<tr align=center>
				<td height="20"><%=order.getORDER_GOODS_NAME()%></td>
				<td>
					<%=order.getORDER_GOODS_COLOR()%>/
					<%=order.getORDER_GOODS_SIZE()%>
				</td>
				<td><%=order.getORDER_GOODS_AMOUNT()%></td>
				<td><%=order.getORDER_SUM_MONEY()%></td>
				<td>
				<%if (order.getORDER_STATUS() == 0) {%>대기중
				<%}else if (order.getORDER_STATUS() == 1){%>발송준비
				<%}else if (order.getORDER_STATUS() == 2){%>발송완료
				<%}else if (order.getORDER_STATUS() == 3){%>배송중
				<%}else if (order.getORDER_STATUS() == 4){%>배송완료
				<%}else if (order.getORDER_STATUS() == 5){%>주문취소
				<%}%>
				</td>
				<td><%=order.getORDER_DATE()%></td>
			</tr> --%>

			<tr align=center height=20>
				<td colspan=7 style="font-family: Tahoma; font-size: 10pt;">

				</td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td height="28">
		<div align="right">총 주문금액 : ${order.order_sum_money}원</div>
		</td>
	</tr>
	</table>
	<!-- 회원의 주문내역 보기 -->
	</td>
	</tr>
</table>
</body>
</html>
