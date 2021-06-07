<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레시피관리</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
a {color: inherit; text-decoration: none;}
* {box-sizing: border-box;}
body {
	margin: 0 auto;
	font-family: Arial, Helvetica, sans-serif;
	width: 60%;
}
.w3-teal{
	padding: 10px;
	background-color: #213421 !important
}
.w3-container {
	padding: 10px;
	background-color: rgba(249, 225, 205, 0.35);
	height:100%;
}
h1{
	text-align: center;
}
#insertRecipe{
	width: 100%;
	line-height: 2.2;
	padding-left: 60px;
	padding-right: 60px;
}
input[type=text], select {
 	width: 100%;
	padding: 12px 10px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}
input[type=file] {
	font-size: 15px;
}
input[type=submit] {
	width: 13%;
	color: #FFFFFF;
	padding: 5px 11px;
	margin: 8px 0;
	float: right;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 17px;
	background-color: #213421;
}
input[type=submit]:hover {
	background-color: #213421;
	color: #FFFFFF;
}
input[type=submit]{
	display: inline;
	margin: 10px;
	float: right;
}
</style>

</head>

<body>
<script>
	function w3_open() {
  		document.getElementById("mySidebar").style.display = "block";
	}

	function w3_close() {
		document.getElementById("mySidebar").style.display = "none";
	}
</script>
	
<%@ include file="adminMainIncludeHeaderHamburger.jsp" %>

<div class="w3-container">
	<h3 align="center">레시피등록</h3>
 	 <form id="insertRecipe" name="recipeform" action="../insertRecipe.go" method="post" enctype="multipart/form-data" >
   		<label for="category">레시피분류</label>
    		<select id="recipe_category" name="recipe_category" size="1">
				<option value="all" selected></option>
				<option value="pasta">pasta</option>
				<option value="desserts">desserts</option>
				<option value="breakfast">breakfast</option>
				<option value="salads">salads</option>
				<option value="side dishes">side dishes</option>
				<option value="soups">soups</option>
			</select>
        <label for="name">레시피명</label>
		<input type="text" id="recipe_name" name="recipe_name" placeholder="레시피명" required="required">
    	<label for=ingredient>레시피재료</label><br>
    	<textarea style="resize: none; width:100%;" rows="5" id="recipe_ingredient" name="recipe_ingredient" placeholder="레시피재료를 입력하세요" required="required"></textarea><br>
		<label for="content">레시피순서</label><br>
		<textarea style="resize: none; width:100%;" rows="10" id="recipe_content" name="recipe_content" placeholder="레시피순서를 입력하세요" required="required"></textarea><br><br>
   		<label for="file01">레시피이미지01</label>&nbsp;&nbsp;
    	<input type="file" id="recipe_image01" name="file01"><br><br>
    	<label for="file02">레시피이미지02</label>&nbsp;&nbsp;
    	<input type="file" id="recipe_image02" name="file02"><br><br>
    	<label for="file03">레시피이미지03</label>&nbsp;&nbsp;
    	<input type="file" id="recipe_image03" name="file03"><br><br>
        <input type="submit" value="등록">
        <br><br>
 	</form>
</div>
</body>
</html>