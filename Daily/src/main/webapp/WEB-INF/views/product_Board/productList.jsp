<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily :: Product List</title>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="resources/myLib/mainhome.css">
</head>
<body>

	<!-- header (로그인 ,마이페이지,위시리스트) -->

	<jsp:include page="/WEB-INF/views/homeLayout/homeheader.jsp"></jsp:include>

	<!-- nav  (메뉴바)-->
	<jsp:include page="/WEB-INF/views/homeLayout/homemenubar.jsp"></jsp:include>
	<!-- product main content(필터,메인상품,등등) -->

	<div class="product_main">
		<!-- 상품 리스트 공간지정 -->
		<div class="product_content">

			<!-- filter 공간지정 -->
			<div class="filters">

				<!-- filter_bar 공간지정 -->
				<div class="filters_bar">
					<div>
						<span>종류</span>
					</div>
					<div>
						<span>소재</span>
					</div>
					<div>
						<span>색상</span>
					</div>
					<div>
						<span>정렬</span>
					</div>

				</div>

			</div>
			<c:if test="${message!=null}">
<<<<<<< HEAD
 				=> ${message}<br>
=======
 => ${message}<br>
>>>>>>> d66852bf8c6158ba9ad76f80bfbc3db373caa6de
			</c:if>
			<c:forEach var="list" items="${Product}">
				<!-- 상품list 공간지정 -->
				<div class="product_list">

					<!-- 상품 공간지정 -->
					<div class="product_item">
						<div class="product_img_box">
							<a href="pddetail?productnum=${list.productnum}">
							<img src="${list.image}" class="product_img" /></a>
						</div>
						<!-- 상품 정보 공간지정 -->
						<div class="product_info">
							<div class="product_name">
							<a href="pddetail?productnum=${list.productnum}">${list.name}</a></div>
							<div class="product_price">
								<span>$</span>
								<fmt:formatNumber value="${list.price2}" pattern="#,###,###,###" />
								<!-- 숫자를 , 로 표시하기위함 -->
							</div>
							<div class="product_review">리뷰평점 :${list.score}</div>
						</div>

					</div>
				</div>

			</c:forEach>

		</div>
		<!-- page_content -->
		<div class="container my-5 content2">
			<c:forEach var="list" items="${Product}">
				<div class="row my-4 align-items-center">
					<div class="col-sm">
						<div class="row">
							<img src="${list.image}" id="product_img1">
							<a href="pddetail?productnum=${list.productnum}&name=${list.name}">${list.name}</a>
						</div>

						<div class="product_name">${list.name}</div>
						<div class="product_price">
							<span>$</span>
							<fmt:formatNumber value="${list.price2}" pattern="#,###,###,###" />
							<!-- 숫자를 , 로 표시하기위함 -->
						</div>
						<div class="product_review">리뷰평점 :${list.score}</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- main -->

	<hr>
<<<<<<< HEAD

	<c:if test="${loginID!=null && Lv == '5'}">
		<div class="list_item">
			<a href="/productRegist">상품 등록</a>
		</div>

	</c:if>

	<!-- paging -->
	<div></div>


<jsp:include page="/WEB-INF/views/homeLayout/homefooter.jsp"></jsp:include>
<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
		crossorigin="anonymous"></script>
=======

	<table>
		<c:forEach var="list" items="${Faqlist}" varStatus="status">
			<tr>
				<td>${list.faqnum}</td>
				<td><c:out value="${list.id}"></c:out></td>
				<td><a href="faqdetail?faqnum=${list.faqnum}&id=${list.id}">${list.title}</a></td>
				<td>${list.date}</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<hr>

	<c:if test="${loginID!=null && Lv == '5'}">
		<div class="list_item">
			<a href="/productRegist">상품 등록</a>
		</div>

	</c:if>

	<!-- paging -->
	<div></div>






	<jsp:include page="/WEB-INF/views/homeLayout/homefooter.jsp"></jsp:include>
>>>>>>> d66852bf8c6158ba9ad76f80bfbc3db373caa6de
</body>
</html>