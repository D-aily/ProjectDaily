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
			<button type="button" id="img_shopping1" name="button">
				<h2>쇼핑하기</h2>
			</button>
		</div>
	</div>
	<br>
	<br>
	<br>	
	<br>
	<!--상품 간단 목록 리스트  공간지정 -->
	<div class="product">
		<div class="product_titlebar">
			<div class="product_title">Perfume</div>
			<div class="product_title_item">더보기</div>
		</div>
		<br>

		<div class="product_center_item">
			<div class="product_item_box">
				<div class="product_img_box">
					<img src="resources/img/black-1984277_1280.jpg" id="product_img1">
				</div>

				<div class="product_name">상품명 1</div>
				<div class="product_price">가격</div>
				<div class="product_review">리뷰 수</div>

			</div>
			<div class="product_item_box">
				<div class="product_img_box">
					<img src="resources/img/calvin-klein-5325443_1280.jpg" id="product_img2">
				</div>

				<div class="product_name">상품 2</div>
				<div class="product_price">가격</div>
				<div class="product_review">리뷰 수</div>
			</div>

			<div class="product_item_box">
				<div class="product_img_box">
					<img src="resources/img/essential-oil-3073901_1920.jpg" id="product_img3">
				</div>

				<div class="product_name">상품 3</div>
				<div class="product_price">가격</div>
				<div class="product_review">리뷰 수</div>
			</div>

			<div class="product_item_box">
				<div class="product_img_box">
					<img src="resources/img/mens-perfume-394683_1280.jpg" id="product_img4">
				</div>
				<div class="product_name">상품 4</div>
				<div class="product_price">가격</div>
				<div class="product_review">리뷰 수</div>
			</div>
		</div>
	</div>

	<br>

	<div class="carousel">
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
		</div>

		<!--부제목 공간지정 -->
		<div class="img_content_subtitle">cloth</div>
		<!--제목 공간지정 -->
		<div class="img_content_title">2021-2022 남성 가을 컬렉션</div>
		<!--쇼핑버튼 공간지정 -->
		<div class="img_shopping">
			<button type="button" id="img_shopping1" name="button">
				<h2>쇼핑하기</h2>
			</button>
		</div>
	</div>
	<br>
	<br>
	<br>	
	<br>
	<div class="content2">
		<div class="img_box2">
			<img src="resources/img/suit-690048_1280.jpg" id="main_img2">
		</div>
		<div class="img_content_subtitle">Best</div>
		<div class="img_content_title">2021-2022 Suit 컬렉션</div>
		<div class="img_shopping">
			<button type="button" id="img_shopping2" name="button">
				<h2>쇼핑하기</h2>
			</button>
		</div>
	</div>
	<br>
	<br>
	
	<div class="carousel">
	
		<!--컨텐트 캐러벨 -->
		<div id="carouselExampleControls " class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active ">
					<img src="resources/img/gregory-hayes-AjJsc0hk9s0-unsplash.jpg"
						class="d-block w-100">
				</div>
				<div class="carousel-item">
					<img src="resources/img/nate-johnston-dLbz-zn89EU-unsplash.jpg"
						class="d-block w-100">
				</div>
				<div class="carousel-item">
					<img src="resources/img/dieter-blom-kokau7OYfe4-unsplash.jpg"
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
</div>
	
		


	
	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
	
</body>
</html>