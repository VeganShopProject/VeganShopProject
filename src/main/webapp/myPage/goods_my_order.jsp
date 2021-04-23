<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- JSTL 사용 -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	
<%-- 
<%
	int nowpage=((Integer)request.getAttribute("page")).intValue();
	int maxpage=((Integer)request.getAttribute("maxpage")).intValue();
	int startpage=((Integer)request.getAttribute("startpage")).intValue();
	int endpage=((Integer)request.getAttribute("endpage")).intValue();
%>
 --%>
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
<!-- 회원의 주문내역 보기 -->
<table width="700" border="0" align="center">
<tr>
	<td>현재 ${member.name}고객님께서 주문하신 내역이 총 ${fn:length(orderList)} 개 있습니다.</td>
</tr>
<tr>
	<td height="62" align="center" valign="middle">
	<table width="700" border="1" cellspacing="0" cellpadding="0"
		bordercolor="#CCCCCC">
		<tr>
			<c:if test='${member.id == "admin"}'>
				<td><font size="2">아이디</font></td>
			</c:if>
			<td height="20"><div align="center">주문 번호</div></td>
			<td height="20"><div align="center">상품명</div></td>
			<td height="20">상품이미지</td>
			<td><div align="center">수량</div></td>
			<td><div align="center">상품 금액</div></td>
			<td><div align="center">주문 상태</div></td>
			<td><div align="center">주문 날짜</div></td>
		</tr>
		
		<c:if test="${fn:length(orderList) == 0}">
			<td align=center colspan=6>주문 내역이 없습니다.</td>
		</c:if>
		
		<c:if test="${fn:length(orderList) != 0}">
			<c:set var="sum_money" value="0" />
			<c:forEach var="order" items="${orderList}">
				<c:set var="sum_money" value="${sum_money+ order.order_goods_price * order.order_goods_count}"/>
				<!-- \${basket.필드}은 BasketVO의 필드값이랑 똑같아야 한다 -->
				<tr align=center>
					<c:if test='${member.id == "admin"}'>
						<td><font size="2">${order.order_member_id}</font></td>
					</c:if>
					
					<td height="20">${order.order_tradenum}</td>
					<td height="20">${order.order_goods_name}</td>
					<td><font size="2"><img
							src="${order.order_goods_image}" width=50 height=50></font>
					</td>
					<td>${order.order_goods_count}</td>
					<td><fmt:formatNumber value="${order.order_goods_price}" pattern="#,###" /><td>
					
					
					<c:choose>
						 <c:when test="${order.order_status eq 0}">
						     대기중
						 </c:when>
						 
						 <c:when test="${order.order_status eq 1}">
						    발송준비
						 </c:when>
						 
						 <c:when test="${order.order_status eq 2}">
						     발송완료
						 </c:when>
						 
						 <c:when test="${order.order_status eq 3}">
						     배송중
						 </c:when>
						 
						 <c:when test="${order.order_status eq 4}">
						     배송완료
						 </c:when>
						 
						 <c:when test="${order.order_status eq 5}">
						     주문취소
						 </c:when>
					</c:choose>
					<td><fmt:formatDate value="${order.order_date}" pattern="yyyy-MM-dd"/></td>
				</tr>
				
			</c:forEach>
		</c:if>
<%-- 		
		<tr align=center height=20>
			<td colspan=7 style="font-family: Tahoma; font-size: 10pt;">
			<%if (nowpage <= 1) {%>
			[이전]&nbsp;
			<%}else{%>
			<a href="./OrderList.or?page=<%=nowpage-1 %>">[이전]</a>&nbsp;
			<%}%>
			<%
			for (int a = startpage; a <= endpage; a++) {
				if (a == nowpage) {
			%>
			[<%=a%>]
			<%
				}else{
			%>
			<a href="./OrderList.or?page=<%=a %>">[<%=a%>]</a>&nbsp;
			<%	}
			}
			%>
			<%if (nowpage >= maxpage) {%>
			[다음]
			<%}else{%>
			<a href="./OrderList.or?page=<%=nowpage+1 %>">[다음]</a>
			<%}%>
			</td>
		</tr>
	</table>
	</td>
</tr> --%>


<tr>
	<td height="30px" colspan="8">
	<div align="right" >총 주문금액 : <fmt:formatNumber value="${sum_money}" pattern="#,###" />원</div>
	</td>
</tr>
</table>
<!-- 회원의 주문내역 보기 -->
</td>
</tr>
</table>
<div align="center">
	<a href="/board/loginPage/main.jsp" class="post-request">[돌아가기]</a>
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
