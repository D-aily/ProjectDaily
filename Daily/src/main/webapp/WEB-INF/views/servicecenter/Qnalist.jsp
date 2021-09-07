<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servicecenter</title>
</head>
<link rel="stylesheet" type="text/css" href="resources/Lib/mainhome.css">
<link rel="stylesheet" type="text/css"
	href="resources/Lib/Servicecenter.css">
<script src="resources/Lib/jquery-3.6.0.min.js"></script>
<script src="resources/Lib/jq_headerfixed.js"></script>

<body>
	<!-- header (로그인 ,마이페이지,위시리스트) -->
	<jsp:include page="../homeLayout/homeheader.jsp"></jsp:include>

	<!-- Servicecenter header-->
	<div class="Servicecenter_header">고객센터</div>

	<!-- Servicecenter_nav-bar -->
	<div class="Servicecenter_nav_bar">
		<div class="Servicecenter_nav_left">
			<div class="Servicecenter_nav_left_img">
				<img src="resources/img/serviceicon.png" >
			</div>
			<div class="Servicecenter_nav_left_info">
				<div>D:aily 고객 만족 센터</div>
				<div>1234-1234</div>
				<div>평일 10:00 ~ 17:00 점심 13:00 ~ 14:00</div>
				<div>주말, 공휴일휴무</div>
			</div>
		</div>

		<div class="Servicecenter_nav_right">
			<div class="Servicecenter_nav_right_img">
				<img src="resources/img/picon.png" >
			</div>
			<div class="Servicecenter_nav_right_info">
				<div>편리한 실시간상담</div>
				<div>카톡친구추가 Dailyshopping</div>
				<div>평일 11:00 ~ 17:00</div>
				<div>주말, 공휴일휴무</div>
			</div>
		</div>

	</div>

	<!-- Servicecenter_info -->
	<div class="Servicecenter_info"></div>

	<!-- list -->
	<div class="">
		<table>
				<tr>
					<th>번호</th><th>아이디</th><th>제목</th><th>등록일</th><th>공개여부</th>
				</tr>
			<c:forEach var="list" items="${Qnalist}">
				<tr>
					<td>${list.qnanum}</td><td>list.id</td><td>list.title</td><td>list.date</td><td>list.secret</td>				
				</tr>
			</c:forEach>
		</table>
	</div>

	<!-- paging -->
	<div></div>



	<!-- footer (고객센터,배송 및 반품,FAQ,법적고지,개인정보처리방침,일반 판매 조건 ) -->
	<jsp:include page="../homeLayout/homefooter.jsp"></jsp:include>
</body>
</html>