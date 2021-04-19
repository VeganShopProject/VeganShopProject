<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>
<style type="text/css">
	.box2{
	border-color:red;
	border-style: double;
	border-width: thick;
	border-radius:80px 80px 80px 80px;
	margin:20px;
	}
	table>tbody>tr>td {color:blue;}
	}
</style>


</head>

<div doz_type="section" class="section_wrap visual_section  pc_section    section_first _section_first   mobile_section_first  " 
id="s201903275c9aeb9d3f5d1" doz_mobile_section="N" doz_mobile_hide="N" doz_header_repeat="N" doz_footer_repeat="N" doz_category="visual" doz_fullpage="N" style="">
<div class="visual_section  _visual_section   " id="visual_s201903275c9aeb9d3f5d1"> <!-- 비주얼 영역이 없는 경우 .no-visual 추가 -->

	<!-- 비주얼 영역-->
	<div class="owl-carousel owl-theme _slide owl-loaded">
		<div class="owl-item" style="width: 100%; float: none;">
		<div class="item holder section " style="background-image:url(https://cdn.imweb.me/thumbnail/20190327/5c9aec00e8203.jpg);
		 background-color:#000000; background-repeat : no-repeat; background-size : cover; background-position : 70% 70%;">
		<div class="op _op" style="position: relative;z-index: 11; "><div class="header-content _visual_height m_ratio">
		<div class="text _text_wrap"><div class="text-wrap _text fr-view"><div style="text-align: center;"><span style="font-size: 126px;">
		<strong>FAQ</strong></span></div></div></div></div></div></div></div>	</div>
		<!-- end.비주얼 영역 -->
</div>
</div>
<div class="htop_l">
            <div class="btn_sec"> <!-- 전체메뉴 펼쳤을경우 .open 클래스 추가 -->
                <div class="menu_sec">
                    <button type="button" class="all_menu"><span class="hide">전체메뉴 열기</span></button>
                </div>
<!-- 151015_전체메뉴 추가 -->
                <!-- 전체메뉴 -->
                <!-- 180607_opendigital_O-02-01_전체 메뉴 변경(menu_nav_new 를 menu_nav_onw 교체)_채경희 -->
                <section class="menu_nav ui_all_menu_content menu_nav_onw"> 
                    <h1 class="hide">전체메뉴</h1>
                   <nav class="new_all_menu">
                        <ul class="gnb">
                        </ul>
                        <ul class="etc gnb_area">
                        </ul>
                        <ul class="special">
                        </ul>
						<div class="favor_wrap"></div>
					</nav>
				</section>
<body>
	<div text align=center>
		<img src="./logo.png" width="80">
	</div>

 <table text align=center>
    <tr>
	<td>home</td>
	<td>본문 바로가기</td>
	<td>회원가입</td>
	<td>주문조회</td>
	<td>장바구니</td>
	<td>관심상품</td>
	</tr>
</table>
	<center>
	    <div class="box2">
		<h1>자주하는 질문(FAQ)</h1>
		</div>
		<a href="logout.fu">Log-out</a>
		<hr>
		
			<input name="seq" type="hidden" value="${board.seq}" />
			<table border="1" width="600" height="300" cellpadding="0" cellspacing="0">
				<tr>
					<th bgcolor="orange" width="120">제목</th>
					<th align="left">${board.title }</th>
				</tr>
				<tr>
					<th bgcolor="orange">작성자</th>
					<th align="left">${board.writer }</th>
				</tr>
				<tr>
					<th bgcolor="orange">내용</th>
					<th align="left">${board.content }</th>
				</tr>
				<tr>
					<th bgcolor="orange">등록일</td>
					<th align="left">${board.regDate }</th>
				</tr>
				<tr>
					<th bgcolor="orange">조회수</th>
					<th align="left">${board.cnt }</th>
				</tr>
			</table>
		</hr>
		<a href="getBoardList.fu">글목록</a>
		</center>
							<ul class="ui_is_logout_content" align="center">
							<!-- wcms -->
<a href="/personal/progress-card/UHPPCC0102M0.jsp?click=gnb_menu_progress"><span>기관소개</span></a>
<a href="/personal/customer-service/UHPPCC0150M0.jsp?click=gnb_menu_registration"><span>비건 인증</span></a>
<a href="/personal/customer-service/lost/report/UHPPCC0232M0.jsp?click=gnb_menu_lost"><span>알림 공간 </span></a>
<a href="/personal/statement/UHPPRP0102M0.jsp?click=gnb_menu_stement"><span>고객센터</span></a>
<a href="/personal/card/payment-due/UHPPRP0901M0.jsp?click=gnb_menu_paymentdue"><span>홍보자료</span></a>
							<!-- //wcms -->
							</ul>
							<ul class="ui_is_login_content" style="display:none">
							
	</center>
</body>
</html>
