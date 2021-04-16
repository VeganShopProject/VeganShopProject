<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 페이지</title>
<style type="text/css">
	a {text-decoration: none; color: black}
	a:hover {text-decoration: underline;}
	#style {width: 70px; padding: .5em .3em;
				border: 1px solid #CACAC6;
				font-family: inherit; font-size: 2;
				background: url('/image/arrow.jpg') no-repeat 95% 50%;
				border-radius: 5px; appearance: none; 
				-webkit-appearance: none; -moz-appearance: none;}
	#category {border-top: thin solid #CACAC6;
					border-bottom: thin solid #CACAC6;
					background-color: #F0F0ED}
</style>
</head>
<body>

<center>
	<table cellpadding="10" cellspacing="0" width="1000" height="700" >
		<!-- 1.게시판 제목 -->
		<tr>
			<td align="center" colspan="6" style="font-size:16pt">커뮤니티</td>
		</tr>
		<!-- 2.select -->
		<tr align="left">
			<td colspan="6" >
				<select name="searchCondition" id="style">
						<option value="레시피">레시피</option>
						<option value="식당 정보">식당 정보</option>
				</select>
			</td>
		</tr>
		<!-- 3.게시판 카테고리 -->
		<%-- <c:when test="">  --%>
			<tr align="center" id="category">
				<td  width="30" >번호</td>
				<td  width="40" >카테고리</td>
				<td  width="400" >제목</td>
				<td  width="30" >작성자</td>
				<td  width="60" >작성일</td>
				<td  width="30" >조회수</td>
			</tr>
			<!-- 4-1.글 목록 -->
			<c:forEach items="${communityList }" var="community">
				<tr align="center" bordercolor="#D7D7D2" height="30"
						onmouseover="this.style.backgroundColor='#F0F0ED'"
						onmouseout="this.style.backgroundColor=''">
					<td >${community.seq }</td>
					<td>${community.category }</td>
					<td align="left" >
						<a href="./getCmnt.co?seq=${community.seq }">${community.subject }</a>
					</td>
					<td>${community.writer }</td>
					<td ><fmt:formatDate value="${community.cmnt_date}" pattern="yyyy-MM-dd"/></td>
					<td>${community.readcount }</td>
				</tr>
			</c:forEach>
 		<%--</c:when> --%>
		<!-- 4-2.글 없음 -->
		<%-- <c:otherwise> --%>
		<!-- <tr align="center" >
			<td colspan="6">등록된 글이 없습니다.</td>
		</tr> -->
		<%-- </c:otherwise> --%>
		<!-- 5.글쓰기 -->
		<tr align="right" >
			<td colspan="6">
				<input type="button" value="글쓰기" onclick="./insertCmnt.jsp" id="style"  style="background-color: OliveDrab; color: white;"/>
			</td>
		</tr>
		<!-- 6.페이징 -->
		<%-- <tr>
			<td colspan=6 style=font-family:Tahoma;font-size:10pt;>
				<!-- << -->
				<c:when test="${pagingNum.nowPage }==1"> <!-- 현재페이지가 1일 경우 링크없이 << -->
					<input type="button" value="&lt;&lt;">
				</c:when>
				<c:otherwise> <!-- 현재페이지가 1이 아닐 경우 <<에 1페이지를 링크건다 -->
					<a href="./getCmntList.co?page=1"><input type="button" value="&lt;&lt;"></a>
				</c:otherwise>
				<!-- < -->
				<c:when test="${pagingNum.nowPage }==1"> <!-- 현재페이지가 1일 경우 링크없이 < -->
					<input type="button" value="&lt;">
				</c:when>
				<c:otherwise> <!-- 현재페이지가 1이 아닐 경우 <에 이전페이지를 링크건다 -->
					<a href="./getCmntList.co?page=${pagingNum.nowPage }-1"><input type="button" value="&lt;"></a>
				</c:otherwise>
				<!-- <<과 < 사이에 반복할 페이지 수 -->
				<c:forEach var="p" begin="${pagingNum.startPage }" end="${pagingNum.endPage }" step="1">
					<c:when test="${p } == ${paging.nowPage }"> ${p } &nbsp;</c:when> <!-- 현재 1페이지일 때 그냥 [1] -->
					<c:otherwise> <!-- 현재 1페이지가 아닐 때 링크 [페이지]로 끝까지 반복 --> 
						<a href="./getCmntList.co?page=${p }">${p }</a>
					</c:otherwise>
				</c:forEach>
				<!-- > -->
				<c:when test="${pagingNum.nowPage }>=${pagingNum.maxPage }"> <!-- 현재 페이지가 끝페이지보다 같거나 클 때 링크없이 > -->
					<input type="button" value="&gt;">
				</c:when>
				<c:otherwise> <!-- 현재 페이지보다 끝페이지가 클 때 >에 다음페이지 링크 -->
					<a href="./getCmntList.co?page=${pagingNum.nowPage }+1"><input type="button" value="&gt;"></a>
				</c:otherwise>
				<!-- >> -->
				<c:when test="${pagingNum.nowPage }==${pagingNum.maxPage }"> <!-- 현재페이지가 끝페이지인 경우 링크없이 >> --> 
					<input type="button" value="&gt;&gt;">
				</c:when>
				<c:otherwise> <!-- 현재페이지가 끝페이지보다 작을 경우 >>에 끝페이지를 링크건다 -->
					<a href="./getCmntList.co?page=${pagingNum.maxPage }"><input type="button" value="&gt;&gt;"></a>
				</c:otherwise>
			</td>
		</tr> --%>
		<!-- 7.검색 -->
		<tr >
			<td colspan="6" align="center">
				<form action="./getCmntList.co" method="post">
				<select name="searchCondition" id="style">
					<c:forEach items="${conditionMap }" var="option">
						<option value="${option.value }">${option.key }
					</c:forEach>
				</select>
					<input name="searchKeyword" type="text" id="style"
								style="width: 200px;" /> 
					<input type="submit" value="검색" id="style"
								style="background-color: OliveDrab; color: white" />
				</form>
			</td>
		</tr>
	</table>
</center>

</body>
</html>