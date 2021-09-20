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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">

<title>Product details</title>
</head>

<body>
	<!-- header (로그인 ,마이페이지,위시리스트) -->
	<jsp:include page="/WEB-INF/views/homeLayout/homeheader.jsp"></jsp:include>
	<!-- nav  (메뉴바)-->
	<jsp:include page="/WEB-INF/views/homeLayout/homemenubar.jsp"></jsp:include>
<<<<<<< HEAD
<form action="addCart" method="post" name="cart">
<table>
	<tr height="40"><td bgcolor="SkyBlue">PN.</td>
		<td><input type="hidden" name="productnum" value="${Product.productnum }">
		${Product.productnum}</td></tr>
	<tr height="40"><td bgcolor="SkyBlue">상품명</td>
		<td>${Product.name}</td></tr>
	<tr height="40"><td bgcolor="SkyBlue">상품상세설명</td>
		<td>${Product.content}</td>
	</tr>
	<tr height="40"><td bgcolor="SkyBlue">등록일</td>
		<td>${Product.date}</td></tr>	
	<tr height="40"><td bgcolor="SkyBlue">상품사진</td>
		<td><img src="${Product.image}"></td></tr>	
	<tr height="40"><td bgcolor="SkyBlue">가격</td>
		<td>${Product.price2}</td></tr>
		
	<tr height="40"><td bgcolor="SkyBlue">종류</td>
		<c:set var="kind" value="${Product.kind}" />
		<c:choose>
			<c:when test="${kind eq '1'.charAt(0)}">
				<td>상의</td>
			</c:when>
			<c:when test="${kind eq '2'.charAt(0)}">
				<td>하의</td>
			</c:when>
			<c:when test="${kind eq '3'.charAt(0)}">
				<td>아우터</td>
			</c:when>
			<c:otherwise>
				<td>가방</td>
			</c:otherwise>
		</c:choose>
	</tr>
	<tr height="40"><td bgcolor="SkyBlue">조회수</td>
		<td>${Product.count}</td></tr>
	<tr><td bgcolor="SkyBlue">수량</td>
		<td><select name="quantity">
			<c:forEach begin="1" end="10" var="i">
				<option value="${i}">${i}</option>
			</c:forEach>
		</select>&nbsp;개</td>
	</tr>
	<tr height="40"><td bgcolor="SkyBlue">평점</td>
		<td>${Product.score}</td></tr>
	<tr height="40"><td bgcolor="SkyBlue">리뷰</td>
		<td></td></tr>
	<tr height="40"><td bgcolor="SkyBlue">상품qna</td>
		<td></td></tr>	
	<tr><td><input type="button" value="주문하기"></td>
		<td><input type="submit" value="장바구니담기"></td>
	</tr>
</table></form>
<hr>
<a href="pddetail?productnum=${Product.productnum}&jcode=U">수정하기</a>&nbsp;
<input type="button" value="찜하기">


<!-- footer (고객센터) -->
=======
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

				<c:if test="${ loginInfo.lv == 5 && loginInfo.id ne null}">
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
			<div id="" class="col-sm-2 text-center">QnA</div>
		</div>
		<hr>

		<!-- Ajax 결과 공간  -->
		<div class="resultArea"></div>
	</div>


	<!-- footer (고객센터) -->
>>>>>>> fa2beb7a9034057b79c639253ccc4a4325e4f919
	<jsp:include page="/WEB-INF/views/homeLayout/homefooter.jsp"></jsp:include>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
		crossorigin="anonymous"></script>
</body>

</html>
