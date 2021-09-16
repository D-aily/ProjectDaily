<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily :: 마이페이지</title>
<style>
.leftmenu {
	border: 1px solid #000;
}
/* .menu { */
div {
	/* background-color: ; */
	border: 1px solid #000;
}

#content {
	text-align: left;
}

#leftmenu {
	width: 10%;
	margin-left: 10%;
	float: left;
	background-color: yellow;
	text-align: center;
	float: left;
}

#rightmenu {
	width: 20%;
	float: left;
	background-color: blue;
	text-align: center;
}

#contentArea {
	width: 60%;
	height: 1000px;
	float: left;
	background-color: green;
	background-size: 100% 100%;
	text-align: center;
}
</style>
</head>
<body>
	<!-- header (로그인 ,마이페이지,위시리스트) -->
	<div>
		<jsp:include page="../homeLayout/homeheader.jsp"></jsp:include>
	</div>
	<div>
		<jsp:include page="../homeLayout/homemenubar.jsp"></jsp:include>
	</div>

	<!-- 왼쪽 메뉴  -->
	<div id="leftmenu" class="leftmenu">
		<div>MY PAGE</div>
		<br>
		<div class="myshopping">
			<div>MY 쇼핑</div>
			<div>주문/배송조회</div>
			<div>취소/반품/교환/환불 내역</div>
		</div>
		<div class="myactivity">
			<div>MY 활동</div>
			<div>리뷰관리</div>
			<div>찜리스트</div>
		</div>
		<div class="myinfo">
			<div>MY 정보</div>
			<div>개인정보확인/수정</div>
			<div>배송지 관리</div>
		</div>
	</div>

	<div id="contentArea"></div>
	<div id="rightmenu">
		<table id="floating_menu" style="position: fixed; top: 45%; right: 3%;">
			<tr>
				<td colspan="2" style="text-align: center">
					<div style="border-radius: 15px; border: 1px solid #d7d7d7; padding: 10px;">
						<div>
							위로 △
						</div>
						<div>
							홈으로
						</div>
						<div>
							<div>장바구니</div>
							<div id="cartArea">
								여기에 장바구니 table
							</div>
						</div>
						<div>
							아래로 ▽
						</div>
					</div>
				</td>
			</tr>
		</table>
	</div>


</body>
</html>
