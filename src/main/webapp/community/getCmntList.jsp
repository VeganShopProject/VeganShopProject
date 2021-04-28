<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 페이지</title>
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/community/getCmntList.css" rel="stylesheet" type="text/css"> <!-- ${pageContext.request.contextPath } -->
</head>

<script type="text/javascript">
function insertCmnt(){
	var url = "community/insertCmnt.jsp";
	location.href = url;
}
</script>

<body>
<jsp:include page="/main/header.jsp" />
<jsp:include page="/main/banner.jsp" />
<div class="under_line"></div>	

	<div id="main">
		<div id="sub">
				<!-- 1.게시판 제목 -->
				<h3>커뮤니티</h3>
			<table>
				<!-- 2.select -->
				
				<!-- 3.게시판 카테고리 -->
				<%-- <c:when test="">  --%>
				
				<tr>
					<td>
						<form action="./getCmntList.co">
						<div class="styled-select">
							<select name="category">
								<option value="전체">전체</option>
								<option value="레시피">레시피</option>
								<option value="식당 정보">식당 정보</option>
							</select>
						</div>
							<input type="submit" class="chk_btn" value="검색" />
						</form>
					</td>
				</tr>
				<div class="under_line"></div>
				<tr width="100%">
					<td class="tb_num" width= "5%">번호</td>
					<td class="tb_ca" width= "20%">카테고리</td>
					<td class="tb_title" width= "20%">제목</td>
					<td class="tb_writer" width= "15%">작성자</td>
					<td class="tb_date" width= "20%">작성일</td>
					<td class="tb_count" width= "20%">조회수</td>
				</tr>
				<div class="under_line"></div>
				<!-- 4-1.글 목록 -->
				<c:forEach items="${communityList }" var="community">
					<tr>
						<td id="num">${community.seq }</td>
						<td id="category">${community.category }</td>
						<td id="subject" align="left">
							<a href="./getCmnt.co?seq=${community.seq }">${community.subject }</a></td>
						<td id="writer">${community.writer }</td>
						<td id="date"><fmt:formatDate value="${community.cmnt_date}" pattern="yyyy-MM-dd"/></td>
						<td id="readcount">${community.readcount }</td>
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
				<tr id="insertCmnt">
					<td >
						<input type="button" value="글쓰기" onclick="insertCmnt()" class="chk_btn" />
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
					<td id="search">
						<form action="./getCmntList.co" method="post">
						<select name="searchCondition" id="button" > 
							<c:forEach items="${conditionMap }" var="option">
								<option value="${option.value }">${option.key }
							</c:forEach>
						</select>
						<input type="text" id="wideButton" name="searchKeyword" /> 
						<input type="submit" class="chk_btn" value="검색" />
						</form>
					</td>
				</tr>
			</table>
		</div>
	</div>

<jsp:include page="/main/footer.jsp" />
</body>
</html>