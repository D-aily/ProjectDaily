<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily</title>
</head>
<script src="resources/myLib/jq_headerfixed.js"></script>
<body>
 	
 	<!-- header (로그인 ,마이페이지,위시리스트) -->
 	<jsp:include page="homeLayout/homeheader.jsp"></jsp:include>
 	
 	<!-- nav  (메뉴바)-->
 	<jsp:include page="homeLayout/homenav.jsp"></jsp:include>
 	
 	<!-- main (메인 화면) -->
 	<jsp:include page="homeLayout/homemain.jsp"></jsp:include>
 	
 	<!-- footer (고객센터,배송 및 반품,FAQ,법적고지,개인정보처리방침,일반 판매 조건 ) -->
 	<jsp:include page="homeLayout/homefooter.jsp"></jsp:include>
</body>

</html>