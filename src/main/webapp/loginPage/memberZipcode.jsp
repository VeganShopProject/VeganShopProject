<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<style type="text/css">
#input {
	border-left-width: 0px; border-right-width: 0px; border-top-width: 0px;
	border-bottom-width: 1px;
	width: 400px; 
}
#input:focus {
	outline: none;
}
a {
	text-decoration: none; color: black;
}
a:hover {
	text-decoration: underline;
}
</style>
<title>쇼핑몰</title>
<script>
function zipcodeAction(){
	zipcodeform.submit();
}

function setZipcode(zip1,zip2,addr1){ /*  */
	/* alert("성공");
	var firstZipcode = ${fullZipcode}; 
	var firstZipcode = '<c:out value="${fullZipcode}"/>'; 
	var zip1 = '<c:out value="${fullZipcode[0]}"/>'; 
	var zip2 = '<c:out value="${fullZipcode[1]}"/>'; 
	var addr1 = ${zipcode.sido}; */
	opener.joinform.zipcode1.value=zip1;
	opener.joinform.zipcode2.value=zip2;
	opener.joinform.addr1.value=addr1; /*  */
	self.close();
}

/* var zipcode = document.getElementById('zipcode');
alert(zipcode); */

/* $(function(){
	$("#zipcode").click(function(){
		alert('성공');
		
	})
}) */

</script>
</head>
<body>

<%-- 우편번호 검색 --%>
<form action="../searchZipcode.me" method="post" name="zipcodeform">
	<table width="500" border="0" cellspacing="0" cellpadding="5">
		<tr align="center">
			<td align="center"><br>
				<input type="text" name="dong" id="input" placeholder="예) 녹번동 123, 방배동 "/>
				<a href="javascript:zipcodeAction()"><i class="fa fa-search"></i></a>
			</td>
		</tr>
	</table>
	<table width="650" border="0" cellspacing="10" cellpadding="5">
		<c:choose >
			<c:when test="${!empty zipcodeList and fn:length(zipcodeList) > 0 }">
				<c:forEach items="${zipcodeList }" var="zipcode">
					<tr align="center">
						<td align="center" >
							<c:set var="fullZipcode" value="${fn:split(zipcode.zipcode, '-') }"/> 
							<c:set var="addr1" value="${zipcode.sido+zipcode.gugun+zipcode.dong+zipcode.ri+zipcode.bunji }"/>
							<%-- <c:set var="testaddr1">${zipcode.sido },${zipcode.gugun },${zipcode.dong },${zipcode.ri },${zipcode.bunji }</c:set>
							<c:forTokens var="addr1" items="${testaddr1 }" delims="," >
								<c:out value="${addr1 }" /> 
							</c:forTokens>
							<c:set var="addr" value="${zipcode.sido }, ${zipcode.gugun }, ${zipcode.dong }, ${zipcode.ri }, ${zipcode.bunji }" />
							<c:set var="addr1" value="${fn:join(addr, ' ') }" />--%>
							<%-- <c:set var="addr1" value="${fn:join(zipcode.sido, zipcode.gugun, zipcode.dong, zipcode.ri, zipcode.bunji, ' ') }" />
							<c:set var="addr1" value="${zipcode.sido }${zipcode.gugun }${zipcode.dong }${zipcode.ri }${zipcode.bunji }"></c:set> --%>
							<a href="javascript:setZipcode(${fullZipcode[0] },
																		${fullZipcode[1] },
																		${addr1 })" >
																		<!-- ${zipcode.sido+zipcode.gugun+zipcode.dong+zipcode.ri+zipcode.bunji } -->
								${zipcode.zipcode }
							</a>
							<%-- <input type="submit" value="${zipcode.zipcode }" id="zipcode"/> --%>
						</td>
						<td align="left" >
							<%-- ${zipcode.sido+zipcode.gugun+zipcode.dong+zipcode.ri+zipcode.bunji }  --%>
							${zipcode.sido }
							${zipcode.gugun } 
							${zipcode.dong } 
							${zipcode.ri } 
							${zipcode.bunji }
						</td>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<td align="left" >
						<b style="font-size: 18pt;">tip</b><br>
						<p style="font-size: 10pt;">아래와 같은 조합으로 검색을 하시면 더욱 정확한 결과가 검색됩니다.</p><br>
						지역명(동/리) + 번지<br>
						<font color="skyblue" size="2pt">예) 삼평동 681, 제주 영평동 2181</font><br><br>
						지역명(동/리) + 건물명(아파트명)<br>
						<font color="skyblue" size="2pt">예) 분당 주공, 연수동 주공3차</font><br><br>
						사서함명 + 번호<br>
						<font color="skyblue" size="2pt">예) 분당우체국사서함 1~100</font><br>
					</td>
				</tr>
			</c:otherwise>
		</c:choose>
	</table>
</form>
<br>

<!-- <form action=""> -->
<!-- </form> -->

<%-- <%
if(zipcodeList!=null && zipcodeList.size()!=0){	
		for(int i=0;i<zipcodeList.size();i++){
			String data=(String)zipcodeList.get(i);
			
			StringTokenizer st=new StringTokenizer(data,",");
			zipcode=st.nextToken();
			addr=st.nextToken();
			
			zip1=zipcode.split("-")[0];
			zip2=zipcode.split("-")[1];  
%> 
<tr>
	<td width="20%">
		<a href="#"	onclick="setZipcode(<%=zip1%>,<%=zip2%>,'<%=addr %>')">
			<font size="2"><%=zipcode%></font>
		</a>
	</td>
	<td width="80%"><font size="2"><%=addr %></font></td>
</tr>
<%		 } 
	 }else{  %>
<tr>
	<td colspan="2" align="center">검색 결과가 없습니다.</td>
</tr>
<%	 } %> --%>

<%-- <c:choose >
			<c:when test="${!empty zipcodeList and fn:length(zipcodeList) > 0 }">
				<c:forEach items="${zipcodeList }" var="zipcode">
					<c:set var="fullZipcode" value="${fn:split(zipcode.zipcode, '-') }"/> 
					<c:set var="zip1" value="${ fullZipcode[0]}"/>
					<c:set var="zip2" value="${ fullZipcode[1]}"/>
					<c:set var="addr1" value="${zipcode.sido }${zipcode.gugun }${zipcode.dong }${zipcode.ri }${zipcode.bunji }"></c:set>
					<c:out value="${ fullZipcode[0]}"></c:out>
					<c:out value="${ fullZipcode[1]}"></c:out>
					</c:forEach>
			</c:when>
			<c:otherwise>
			</c:otherwise>
			</c:choose>
					 --%>
</body>
</html>