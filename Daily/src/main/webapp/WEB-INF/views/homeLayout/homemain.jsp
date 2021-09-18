<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<script src="resources/Lib/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="resources/Lib/mainhome.css">
</head>
<body>
	<br>
	<br>
	<!--main 공간지정 -->
	<div class="carousel">
		<!--컨텐트 캐러벨 -->

		<div id="carouselExampleControls" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="resources/img/ussama-azam-xgNSlx7DjYM-unsplash.jpg"
						class="d-block w-100">
				</div>
				<div class="carousel-item">
					<img src="resources/img/radu-florin-OP8655xgBjo-unsplash.jpg"
						class="d-block w-100">
				</div>
				<div class="carousel-item">
					<img src="resources/img/max-titov-Mhktr6dFD3I-unsplash.jpg"
						class="d-block w-100">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>

		<!--부제목 공간지정 -->
		<div class="img_content_subtitle">cloth</div>
		<!--제목 공간지정 -->
		<div class="img_content_title">2021-2022 여성 가을 컬렉션</div>
		<!--쇼핑버튼 공간지정 -->
		<div class="img_shopping">
			<button type="button" id="shopping_button" name="button">
				<h2>쇼핑하기</h2>
			</button>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!--상품 간단 목록 리스트  공간지정 -->
	<div class="container my-5 content2">
		<div class=" product_titlebar">
			<div class="product_title">Perfume</div>
			<div class="product_title_item">더보기</div>
		</div>
		<br>

		<div class="row my-4 align-items-center">
			<div class="col-sm">
				<div class="row">
					<img src="resources/img/black.jpg" id="product_img1">
				</div>

				<div class="product_name">상품명 1</div>
				<div class="product_price">가격</div>
				<div class="product_review">리뷰 수</div>

			</div>
			<div class="col-sm">
				<div class="row">
					<img src="resources/img/calvin-klein.jpg"
						id="product_img2">
				</div>

				<div class="product_name">상품 2</div>
				<div class="product_price">가격</div>
				<div class="product_review">리뷰 수</div>
			</div>

			<div class="col-sm">
				<div class="row">
					<img src="resources/img/essential-oil-3073901_1920.jpg"
						id="product_img3">
				</div>

				<div class="product_name">상품 3</div>
				<div class="product_price">가격</div>
				<div class="product_review">리뷰 수</div>
			</div>

			<div class="col-sm">
				<div class="row">
					<img src="resources/img/mens-perfume-394683_1280.jpg"
						id="product_img4">
				</div>
				<div class="product_name">상품 4</div>
				<div class="product_price">가격</div>
				<div class="product_review">리뷰 수</div>
			</div>
		</div>
	</div>

	<br>
	<div class="container content2">
		<div class="carousel my-5 ">
			<!--컨텐트 캐러벨 -->
			<div id="carouselExampleControls " class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active ">
						<img src="resources/img/austin-wade-d2s8NQ6WD24-unsplash.jpg"
							class="d-block w-100">
					</div>
					<div class="carousel-item">
						<img src="resources/img/zahir-namane-TjUJJACTav4-unsplash.jpg"
							class="d-block w-100">
					</div>
					<div class="carousel-item">
						<img src="resources/img/fabio-scaletta-cYSRncVxE44-unsplash.jpg"
							class="d-block w-100">
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleControls" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleControls" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
				<!--부제목 공간지정 -->
				<div class="img_content_subtitle">cloth</div>
				<!--제목 공간지정 -->
				<div class="img_content_title">2021-2022 남성 가을 컬렉션</div>
				<!--쇼핑버튼 공간지정 -->
				<div class="img_shopping">
					<button type="button" id="shopping_button" name="button">
						<h2>쇼핑하기</h2>
					</button>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>

	<div class="container my-5 content2">
		<div class="row">
			<div class="col">
				<div class="row">
					<img src="resources/img/suit-690048_1280.jpg" id="main_img2">
				</div>
				<div class="img_content_subtitle">Best</div>
				<div class="img_content_title">2021-2022 Suit 컬렉션</div>
				<div class="img_shopping">
					<button type="button" id="shopping_button" name="button">
						<h2>쇼핑하기</h2>
					</button>
				</div>
			</div>
		</div>
	</div>

	<br>
	<br>

	<div class="container">
		<!--컨텐트 캐러벨 -->

		<div id="carouselExampleControls" class="carousel_full slide"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="row align-items-center">
						<div class="container">
							<div class="row my-4 align-items-center">
								<div class="col">
									<img src="resources/img/dieter-blom-kokau7OYfe4-unsplash.jpg"
										class="d-block w-100">
									<div class="">
										<div class="product_name">상품명 1</div>
										<div class="product_price">가격</div>
										<div class="product_review">리뷰 수</div>
									</div>
								</div>
								<div class="col">
									<img src="resources/img/gregory-hayes-AjJsc0hk9s0-unsplash.jpg"
										class="d-block w-100">
									<div class="product_name">상품명 1</div>
									<div class="product_price">가격</div>
									<div class="product_review">리뷰 수</div>
								</div>
								<div class="col">
									<img src="resources/img/nate-johnston-dLbz-zn89EU-unsplash.jpg"
										class="d-block w-100">
									<div class="product_name">상품명 1</div>
									<div class="product_price">가격</div>
									<div class="product_review">리뷰 수</div>
								</div>
								<div class="col">
									<img
										src="resources/img/mohamad-khosravi-Ll6ggwPpKIo-unsplash.jpg"
										class="d-block w-100">
									<div class="product_name">상품명 1</div>
									<div class="product_price">가격</div>
									<div class="product_review">리뷰 수</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="row align-items-center">
						<div class="container">
							<div class="row my-4 align-items-center">
								<div class="col">
									<img
										src="resources/img/lukacs-krisztina-by-TNnbC4uc-unsplash.jpg"
										class="d-block w-100">
									<div class="">
										<div class="product_name">상품명 1</div>
										<div class="product_price">가격</div>
										<div class="product_review">리뷰 수</div>
									</div>
								</div>
								<div class="col">
									<img src="resources/img/dieter-blom-Y8Me4ZbyEb4-unsplash.jpg"
										class="d-block w-100">
									<div class="product_name">상품명 1</div>
									<div class="product_price">가격</div>
									<div class="product_review">리뷰 수</div>
									
								</div>
								<div class="col">
									<img
										src="resources/img/jacob-blankenship-lfJil4DrWRU-unsplash.jpg"
										class="d-block w-100">
									<div class="product_name">상품명 1</div>
									<div class="product_price">가격</div>
									<div class="product_review">리뷰 수</div>
								</div>
								<div class="col">
									<img src="resources/img/grigore-ricky-TVUUz6bMFSQ-unsplash.jpg"
										class="d-block w-100">
									<div class="product_name">상품명 1</div>
									<div class="product_price">가격</div>
									<div class="product_review">리뷰 수</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="row align-items-center">
						<div class="container">
							<div class="row my-4 align-items-center">
								<div class="col">
									<img src="resources/img/nojan-namdar-a3RhaDG_pNM-unsplash.jpg"
										class="d-block w-100">
									<div class="">
										<div class="product_name">상품명 1</div>
										<div class="product_price">가격</div>
										<div class="product_review">리뷰 수</div>
									</div>
								</div>
								<div class="col">
									<img
										src="resources/img/wiktor-marcinkowski-U5tPDKLRVgc-unsplash.jpg"
										class="d-block w-100">
									<div class="product_name">상품명 1</div>
									<div class="product_price">가격</div>
									<div class="product_review">리뷰 수</div>
								</div>
								<div class="col">
									<img
										src="resources/img/mei-ling-mirow-Kbl1RYTPIDA-unsplash.jpg"
										class="d-block w-100">
									<div class="product_name">상품명 1</div>
									<div class="product_price">가격</div>
									<div class="product_review">리뷰 수</div>
								</div>
								<div class="col">
									<img src="resources/img/andrew-wise-R_UlRPqb8Iw-unsplash.jpg"
										class="d-block w-100">
									<div class="product_name">상품명 1</div>
									<div class="product_price">가격</div>
									<div class="product_review">리뷰 수</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
		crossorigin="anonymous"></script>

</body>
</html>