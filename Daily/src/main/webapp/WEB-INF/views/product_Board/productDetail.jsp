<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="kr">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<script src="resources/Lib/jquery-3.6.0.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<script src="resources/Lib/prodqna/prodqna_ajax.js"></script>
<title>Product details</title>
</head>

<body>
	<!-- header (로그인 ,마이페이지,위시리스트) -->
	<jsp:include page="/WEB-INF/views/homeLayout/homeheader.jsp"></jsp:include>
	<!-- nav  (메뉴바)-->
	<jsp:include page="/WEB-INF/views/homeLayout/homemenubar.jsp"></jsp:include>

	<br>
	<br>
	<br>
	<div class="container">

		<div class="row">

			<!-- 상품 메인 사진   -->
			<div class="col-md-5">
				<img src="${Product.image}" width="100%" height="100%">
			</div>
			<!-- 제목  설명 가격 색상 사이즈 구매 장바구니 관심상품 -->
			<div class="col align-self-center">

				<c:if test="${ Lv == '5' && loginInfo != null}">
					<div class="row ps-5">
						<div class="col">
							<a href="pddetail?productnum=${Product.productnum}&jcode=U">수정하기</a>
						</div>
						<div class="col">
							<a href="">삭제하기</a>
						</div>
					</div>

					<br>
					<br>

					<div class="row ps-5">
						<div class="col-3" style="font-size: 12px;">PN.</div>
						<div class="col-4" style="font-size: 12px;">
							${Product.productnum}</div>
					</div>
				</c:if>
				<div class="row ps-5 pb-2 fs-4">${Product.name}</div>
				<div class="row-sm ps-5 pe-3  ">
					<div class="row">
						<div class="col-3" style="font-size: 12px;">상품 등록일</div>
						<div class="col-4" style="font-size: 12px;">${Product.date}</div>
					</div>
				</div>

				<div class="row-sm ps-5 mb-5 pe-3  ">
					<div class="row">
						<div class="col-3" style="font-size: 12px;">조회수</div>
						<div class="col-4" style="font-size: 12px;">${Product.count}
						</div>
					</div>
				</div>

				<div class="row mx-5 pb-5 text-start" style="font-size: 12px;">
					<p>${Product.content}</p>
				</div>
				<div class="row-sm ps-5 mb-4 pe-3  ">
					<div class="row">
						<div class="col-4">판매가격</div>
						<div class="col-8">${Product.price2}</div>
					</div>
				</div>
				<div class="row-sm ps-5 mb-4 pe-3  ">
					<div class="row">
						<div class="col-4">사이즈</div>
						<div class="col-8">
							<div class="row">
								<div class="col">S</div>
								<div class="col">M</div>
								<div class="col">L</div>
								<div class="col">XL</div>
							</div>

						</div>
					</div>
				</div>
				<div class="row-sm ps-5 mb-4 pe-3  ">
					<div class="row">
						<div class="col-4">남은수량</div>
						<div class="col-8">quantity2(재고수량)</div>
					</div>
				</div>
				<hr>
				<div class="row-md ">
					<div class="row">

						<div class="col-sm  ps-5">
							<a href="#" class="btn w-100 text-white bg-dark">구매하기</a>
						</div>

						<div class="col-sm">
							<a type="button" class="btn btn-outline-secondary">장바구니</a> <a
								type="button" class="btn btn-outline-secondary">관심상품</a>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<br>

	<!-- 사용자의 PHOTO 리뷰 공간 -->
	<div class="container mb-5">
		<div class="row">
			<div class="col-md-5">
				<div class="row align-items-center">
					<hr>
					<p>User Photo review</p>
					<div class="col">
						<img src="resources/img/gregory-hayes-AjJsc0hk9s0-unsplash.jpg"
							width="100%" height="100%">
						<!-- 리뷰이미지의 사진 위에서 4개(최신) -->
					</div>
					<div class="col">
						<img src="resources/img/gregory-hayes-AjJsc0hk9s0-unsplash.jpg"
							width="100%" height="100%">
					</div>
					<div class="col">
						<img src="resources/img/gregory-hayes-AjJsc0hk9s0-unsplash.jpg"
							width="100%" height="100%">
					</div>
					<div class="col">
						<img src="resources/img/gregory-hayes-AjJsc0hk9s0-unsplash.jpg"
							width="100%" height="100%">
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<div class="container my-5">
		<div class="row d-flex justify-content-center">
			<div id="" class="col-sm-2 text-center">상세정보</div>
			<div id="" class="col-sm-2 text-center">상품리뷰</div>
			<div id="pqnaList" class="col-sm-2 text-center">상품QnA</div>
		</div>
		<hr>

		<!-- Ajax 결과 공간  -->
		
		<div id="resultArea"></div>
	
	</div>


	<!-- footer (고객센터) -->

	<jsp:include page="/WEB-INF/views/homeLayout/homefooter.jsp"></jsp:include>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
		crossorigin="anonymous"></script>
</body>

</html>
