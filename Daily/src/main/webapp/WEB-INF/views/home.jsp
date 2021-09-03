<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily</title>
<style> 
*{margin: 0; padding: 0;}
	#wrap{text-align:center; font-size: 30px;} 
	#header{width: 100%; height: 35px; background-color:#DCDCDC; text-align:left; font-size: 20px; }
	#banner{width: 100%; height: 200px; background-color:#F0FFF0; color:coral;  background: url("../image/kingsman3.jpeg");}
	#content{width: 100%; height: 2000px; background-color:	#FFF8DC;}
	#footer{width: 100%; height: 300px; background-color:#FFFAFA;}
	
	.content-container{width: 1300px; margin: 0 auto; height: 2000px; background-color: #777;}
	#banner-title{font-size: 60px; text-align: center; font-weight: bold; line-height: 120px;}
</style>
</head>
<body>
	<div id="wrap">
		<div id="header">
			<div class="header-container">
			<span>고객센터</span>&nbsp;&nbsp;
			<a href="kakaotest">매장위치</a>
			</div>
		</div> 
		<!-- header -->
		
		<div id="banner">
			<div class="banner-container">
				<span id="banner-title">D:aily</span><br>
				<span>게시판1</span>&nbsp;&nbsp;
				<span>게시판2</span>&nbsp;&nbsp;
				<span>게시판3</span>&nbsp;&nbsp;
				<span>게시판4</span>&nbsp;&nbsp;
				<span>게시판5</span>&nbsp;&nbsp;
			</div>
		</div>
		<!-- banner -->
		<div id="content">
			<div class="content-container">content</div>
		</div>
		<!-- content -->
		<div id="footer">
			<div class="footer-container">footer</div>
		</div>
		<!-- footer -->
	</div>
</body>
</html>