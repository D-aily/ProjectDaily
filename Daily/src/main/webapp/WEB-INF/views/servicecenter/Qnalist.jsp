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
	href="resources/Lib/servicecenter.css">
<script src="resources/Lib/jquery-3.6.0.min.js"></script>
<script src="resources/Lib/jq_headerfixed.js"></script>

<body>
	<!-- header (로그인 ,마이페이지,위시리스트) -->
	<div>
		<jsp:include page="../homeLayout/homeheader.jsp"></jsp:include>
	</div>
	<div>
		<jsp:include page="../homeLayout/homenav.jsp"></jsp:include>
	</div>
	<div>
		<!-- Servicecenter header-->
		<div class="Servicecenter_header">고객센터</div>

		<!-- Servicecenter_nav-bar -->
		<div class="qna_nav">
			<div class="qna_nav_center">
				<div class="qna_nav_item">
					<a href="">Q&a</a>
				</div>
				<div class="qna_nav_item">
					<a href="">1:1게시판</a>
				</div>
				<div class="qna_nav_item">
					<a href="">FAQ</a>
				</div>
				<div class="qna_nav_item">
					<a href="">자주묻는 질문</a>
				</div>
			</div>

		</div>

		<!-- Servicecenter_info -->
		<div class="info">
			<div class="info_left">
				<div class="info_left_img">
					<img src="resources/img/serviceicon.png">
				</div>
				<div class="info_left_warap">
					<div class="info_word_a">D:aily 고객 만족 센터</div>
					<div class="info_word_b">1234-1234</div>
					<div class="info_word_c">평일 10:00 ~ 17:00 점심 13:00 ~ 14:00</div>
					<div>주말, 공휴일휴무</div>
				</div>
			</div>

			<div class="info_right">
				<div class="info_right_img">
					<img src="resources/img/picon.png">
				</div>
				<div class="info_right_warap">
					<div class="info_word_a">편리한 실시간상담</div>
					<div class="info_word_d">카톡친구추가 Dailyshopping</div>
					<div class="info_word_c">평일 11:00 ~ 17:00</div>
					<div>주말, 공휴일휴무</div>
				</div>
			</div>
		</div>

		<!-- list -->
		<table>


			<tr>
				<th>번호</th>
				<th>아이디</th>
				<th>제목</th>
				<th>등록일</th>
				<th>공개여부</th>
			</tr>
			<c:forEach var="list" items="${Qnalist}">
				<tr>
					<td>${list.qnanum}</td>
					<td>${list.id}</td>
					<td>${list.title}</td>
					<td>${list.date}</td>
					<td>${list.secret}</td>
				</tr>
			</c:forEach>


		</table>

		<!-- paging -->
		<div>
		
		</div>
	

	</div>
	<!--main  -->
	<!-- footer (고객센터,배송 및 반품,FAQ,법적고지,개인정보처리방침,일반 판매 조건 ) -->
	<div>
		<jsp:include page="../homeLayout/homefooter.jsp"></jsp:include>
	</div>
</body>

</html>