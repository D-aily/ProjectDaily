<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<script src="resources/Lib/jq_headerfixed.js"></script>
<script src="resources/Lib/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="resources/Lib/mainhome.css">
<script>
$(function(){
	$("#searchBtn").on("click",function(){
		self.location="psplist"
		+"${pageMaker.makeQuery(1)}"
		+"&searchType="
		+$('#searchType').val()
		+&'keyword='
		+$('#keyword').val()
	})
	
})// ready 
</script>
</head>
<body>
	<!--서비스 바 (고객센터 매장위치) -->
	<div class="servicebar">
		<div class="servicebar_left_item ">
			<div class="service_item">
				<a href="qnalist">고객센터</a>
			</div>
			<div class="service_item">
				<a href="kakaotest">매장위치</a>
			</div>
		</div>
	</div>
	<br>
	<br>
	<!--헤더 (타이틀로고 로그인 ) -->
	<div class="container">
		<div class="row ">
			<div class="col-md-4">
				<div class="d-flex flex-row bd-highlight mb-3 header_left_item">
					<div class="p-2 bd-highlight">
						<input type="text" name="keyword" id="keyword" value="${pageMaker.page.keyword}" class="search_box"
							placeholder="상품을 검색해보세요">
					</div>
					<div class="p-2 bd-highlight button_left">
						<button id="searchBtn" class="search_button"></button>
					</div>
				</div>

			</div>
			<div class="col-md-4 text-center">
				<div class="header_logo ">
					<a class="home" href="home"> D:aily </a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="d-flex flex-row-reverse bd-highlight header_right_item">
					<div class="p-2 bd-highlight header_item">
						<a href="">위시리스트</a>
					</div>
					<div class="p-2 bd-highlight header_item">
						<a href="mdetail">마이페이지</a>
					</div>
					<div class="p-2 bd-highlight header_item">
						<a href=logout>로그아웃</a>
					</div>
					<div class="p-2 bd-highlight header_item">
						<a href="loginf">로그인</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

</body>
</html>