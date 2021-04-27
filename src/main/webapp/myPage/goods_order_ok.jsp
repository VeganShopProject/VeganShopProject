<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
	<table width="960" cellspacing="0" cellpadding="0" border="0"
	align="center">
		<tr>
			<td colspan=2 align=center>
				<b><font size=5>주문이 완료되었습니다.</font></b>
				<table width=50% border=0 cellpadding="0" cellspacing="1">
					<tr><td height=10><td></tr>
					<tr><td height=10><td></tr>
					<tr>
						<td><b><font size=2>입금 정보</font></b></td>
					</tr>
					<tr align=center>
						<td style="font-family: Tahoma; font-size: 8pt;" width=80 height=24
							bgcolor="f7f7f7">입금 은행</td>
						<td width=250 height=24><font size=2>국민은행</font></td>
					</tr>
					<tr>
						<td style="background-color: #F0F0F0; height: 1px;" colspan=6>
					</tr>
					<tr align=center>
						<td style="font-family: Tahoma; font-size: 8pt;" width=80 height=24
							bgcolor="f7f7f7">예금주</td>
						<td width=250 height=24><font size=2>홍길동</font></td>
					</tr>
					<tr>
						<td style="background-color: #F0F0F0; height: 1px;" colspan=6>
					</tr>
					<tr align=center>
						<td style="font-family: Tahoma; font-size: 8pt;" width=80 height=24
							bgcolor="f7f7f7">입금 계좌</td>
						<td width=250 height=24><font size=2>601xxx-xx-xxxxxxx</font></td>
					</tr>
					<tr>
						<td style="background-color: #F0F0F0; height: 1px;" colspan=6>
					</tr>
						<tr>
						<td style="background-color: #F0F0F0; height: 1px;" colspan=6>
					</tr>
				</table>
			</td>
		</tr>
	</table>
<jsp:include page="/main/footer.jsp" />
</body>
</html>
