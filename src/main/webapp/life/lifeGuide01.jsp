<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채식가이드</title>
<link href="${pageContext.request.contextPath}/resources/css/main1.css" rel="stylesheet" type="text/css">
<style>
.header {
	width: 100%;
  	background-color: #FFFFFF;
  	padding: 20px;
  	text-align: center;
  	font-size: 35px;
}
body {
	font-family: Malgun Gothic;
	margin: 0 auto;
}
.content {
  	line-height:2em;
  	width: 60%;
  	margin: 0 auto;
 	background-color: #FFFFFF;
 }
.footer {
 	background-color: #FFFFFF;
  	width: 100%;
  	padding: 20px;
  	text-align: center;
  	font-size: 35px;
  	display: inline-block;
}
p{
 	text-indent: 2em;
}
div.guide {
	float: left;
	margin-right: 3%;
	margin-top: 2%;
	margin-bottom: 5%;
  	width: 45%;
}
div.guide img {
	width: 100%;
  	height: 400px;
 }
div.desc {
  	padding: 15px;
  	text-align: justify;
  	background-color: #FFFFFF;
  	line-height: 1.6;
}
button {
	margin-left: 10%; 
	background-color:#FFFFFF; 
	border: 1px solid #213421;
	padding: 10px 25px;
	color: #213421;
	font-size: 16px;
	transition-duration: 0.4s;
	float: right;
	width: 50%;
	font-family: Malgun Gothic;
}
button:hover{
	background-color: #213421;
	color: #FFFFFF;
	font-family: Malgun Gothic;
}
.menu{
	margin-left: 5%;
}
</style>
</head>
<body>
<jsp:include page="/main/header.jsp" />
<jsp:include page="/main/banner.jsp" />

<div class="content">
<div class="menu">
	<div class="guide">
  		<a target="_blank" href="/board/image/guide01.jpg">
    	<img src="/board/image/guide01.jpg"></a>
  	<div class="desc"><h4><b>채식을 해야하는 이유</b></h4>비건 생활 방식은 엄청난 양의 동물 도살과 고통을 예방합니다. 특히 기후 변화와 관련하여 환경 발자국을 줄이는 강력한 방법을 제공합니다. 
	그리고 잘 계획된 비건 채식은 다양한 만성 질환의 위험을 줄이면서도 최고 수준의 건강을 촉진 할 수 있습니다. 또한 음식은 엄청나게 맛있고 매년 더 널리 보급되고 있습니다.
	<br><br><button onclick="location.href='lifeGuide02.jsp'"> 자세히 알아보기</button>
	</div>
	</div>
	<div class="guide">
  		<a target="_blank" href="/board/image/guide02.jpg">
    	<img src="/board/image/guide02.jpg"></a>
  	<div class="desc"><h4><b>비건의 종류</b></h4>채식주의자는 육식을 피하고(일부 채식주의 단계에서는 닭고기나 가끔의 육식 허용) 식물을 재료로 만든 음식만을 먹는 사람을 이르는 말입니다.
  	먹는 음식에 따라 프루테리언, 비건, 락토 베지테리언, 오보 베지테리언, 락토오보 베지테리언, 페스코 베지테리언, 폴로 베지테리언, 플렉시테리언 등의 단계로 구분됩니다.
	<br><br><button onclick="location.href='lifeGuide02.jsp'"> 자세히 알아보기</button>
	</div>
	</div>
	<div class="guide">
  		<a target="_blank" href="/board/image/guide03.jpg">
    	<img src="/board/image/guide03.jpg"></a>
  	<div class="desc"><h4><b>비건 음식 쇼핑법</b></h4>좋은 자연 식품 가게는 항상 다양한 완전 채식 식품으로 슈퍼마켓을 능가합니다. 
  	그러나 평범한 슈퍼마켓조차도 다양한 종류의 신선한 과일과 채소와 포괄적 인 비건 식품 저장실 품목을 제공합니다. 비건 채식은 비쌀 필요가 없습니다. 
  	가장 간단한 식사조차도 감각적 인 풍미를 가져올 수 있습니다.엄청나게 다양한 맛있는 가능성을 발견하려고합니다.
	<br><br><button onclick="location.href='lifeGuide02.jsp'"> 자세히 알아보기</button>
	</div>
	</div>
	<div class="guide">
  		<a target="_blank" href="/board/image/guide04.jpg">
    	<img src="/board/image/guide04.jpg"></a>
  	<div class="desc"><h4><b>비건 다이어트</b></h4>비건 채식은 사람들이 자연스럽게 먹는 칼로리 양을 줄여 체중을 줄이는 데 효과적입니다.
  	비건 채식의 칼로리를 적게 섭취하는 자연스러운 경향은 더 많은 식이섬유 섭취로 인해 포만감을 느낄 수 있습니다. 점점 더 많은 사람들이 과체중을 줄이는 방법으로 비건 채식으로 전환하는 이유를 알 수 있습니다. 채식은 건강한 다이어트 방법 중 하나입니다.
	<br><br><button onclick="location.href='lifeGuide02.jsp'"> 자세히 알아보기</button>
	</div>
	</div>
	<div class="guide">
  		<a target="_blank" href="/board/image/guide05.jpg">
    	<img src="/board/image/guide05.jpg"></a>
  	<div class="desc"><h4><b>지구를 살리는 식사</b></h4>채식은 단순히 식생활 차원이 아니라 지구온난화를 막을 수 있는 현실적이고 실현가능한 대안으로 주목받고 있습니다. 2009년, 네덜란드 환경평가국은 보고서를 통해 완전채식식단이 기후변화 해결비용의 80%의 절감할 수 있다고 분석한 바 있습니다. 
  	또한 한 끼라도 고기를 먹지 않으면 자동차로 주행하면서 배출하는 온실가스의 50%를 줄일 수 있다고 밝혔습니다. 
	<br><br><button onclick="location.href='lifeGuide02.jsp'"> 자세히 알아보기</button>
	</div>
	</div>
	<div class="guide">
  		<a target="_blank" href="/board/image/guide06.jpg">
    	<img src="/board/image/guide06.jpg"></a>
  	<div class="desc"><h4><b>함께하는 단체</b></h4>비긴비건과 함께 채식을 통한 건강한 삶을 유지하고, 지구를 살리는 운동을 진행하는 관련 단체들을 소개합니다.
  	음식뿐만이 아닌 다양한 영역에서 활발하게 활동하고 있는 단체들과 관련정보를 얻을 수 있습니다. 혼자는 어려울지 몰라도 힘을 합쳐 함께 하면 모든 것이 가능합니다. 삶의 작은 실천을 통해 함께 큰 변화를 만들어 갑시다.
	<br><br><button onclick="location.href='lifeGuide02.jsp'"> 자세히 알아보기</button>
	</div>
	</div>
</div>
</div>
	
<jsp:include page="/main/footer.jsp" />
</body>
</html>