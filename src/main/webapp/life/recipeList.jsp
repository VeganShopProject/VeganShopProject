<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레시피목록</title>
<link href="${pageContext.request.contextPath}/resources/css/main1.css" rel="stylesheet" type="text/css">
<style>
body {
	font-family: Malgun Gothic;
	background-color: #213421;
	margin: 0 auto;
}
.header {
	width: 100%;
  	background-color: #FFFFFF;
  	padding: 20px;
  	text-align: center;
  	font-size: 35px;
}
.content {
  	line-height:2em;
  	width: 60%;
  	height: 2200px;
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
.title{
	background-image:url("./image/yellow.jpg");
	height: 500px;
}
.button {
	background-color:#FFFFFF; 
	padding: 10px;
	color: #000000;
	font-size: 18px;
	border: 1px solid #FFD700;
	transition-duration: 0.4s;
	position: relative;
	margin-left: 10%;
	width: 20%;
}
.button:hover{
	background-color: #FFD700;
	color: #000000;
	font-family: Malgun Gothic;
}
.list{
	margin-left: 0.5%;
}
div.gallery {
	display: inline-block;
}
div.gallery:hover {
  	opacity: 0.5;
} 
div.gallery img {
  	width: 100%;
  	height: auto;
}
div.desc {
	border-top: 1px solid black;
	border-bottom: 1px solid black;
	padding: 15px;
  	text-align: center;
}
* {box-sizing: border-box;}
.responsive {
  	padding: 10px 6px;
	float: left;
  	width: 24.99999%;
}
.clearfix:after {
  	content: "";
  	display: table;
  	clear: both;
}
</style>

</head>

<body>

<jsp:include page="/main/header.jsp" />
<jsp:include page="/main/banner.jsp" />

<div class="content">
	<div class="title">
		<iframe width="60%" height="500" src="https://www.youtube.com/embed/v-TtVvilah4?autoplay=1&mute=1" align="left" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		<br><br><br><p align="center" style="font-size: 46px;">BeginVegan</p>
		<p align="center" style="font-size: 30px; font-style: italic;">All Recipes</p><br>
		<button class=button>FILTER RECIPES >></button>
	</div><br>
	
	
	<div class="list">
	<c:forEach items="${list}" var="recipe">
		<div class="responsive">
  		<div class="gallery">
  			<input type="hidden" value="${recipe.recipe_category}">
			<a href="./recipeDetail.go?recipe_number=${recipe.recipe_number}">
      		<img src="./RecipeUpload/${recipe.recipe_image01}" width="600" height="400">
    		</a>
    	<div class="desc">${recipe.recipe_name}</div>
  		</div>
		</div>
	</c:forEach>
	</div>

</div>

<jsp:include page="/main/footer.jsp" />
</body>
</html>