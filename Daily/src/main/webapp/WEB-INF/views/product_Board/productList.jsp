<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily :: Product List</title>
<script src="resources/Lib/jquery-3.6.0.min.js"></script>
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
		</div>	
		<!-- page_content -->
		<div class="container my-5 content2">
			<c:forEach var="list" items="${Product}">
				<div class="row row-cols-1 row-cols-sm-2 row-cols-md-4">
					<div class="col">
						<div class="row">
							<img src="${list.image}">
							<a href="pddetail?productnum=${list.productnum}&name=${list.name}">${list.name}</a>
						</div>

						<div class="col">${list.name}</div>
						<div class="col">
							<span>$</span>
							<fmt:formatNumber value="${list.price2}" pattern="#,###,###,###" />
							<!-- 숫자를 , 로 표시하기위함 -->
						</div>
						<div class="product_review">리뷰평점 :${list.score}</div>
					</div>
				</div>
			</c:forEach>
		</div>
		
	<!-- main -->
   <div class="card" style="width: 18rem;">
 	 <img src="..." class="card-img-top" alt="...">
	  <div class="card-body">
 	   <h5 class="card-title">Card title</h5>
    	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
   		 <a href="#" class="btn btn-primary">Go somewhere</a>
      </div>
   </div>
	<hr>

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
</body>
</html>