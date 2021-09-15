<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily :: Product List</title>
<link rel="stylesheet" type="text/css" href="resources/Lib/mainhome.css">
<link rel="stylesheet" type="text/css"
	href="resources/Lib/servicecenter.css">
<script src="resources/Lib/jquery-3.6.0.min.js"></script>
<script src="resources/Lib/jq_headerfixed.js"></script>
</head>
<script>
$(function(){
	$("#opsearchBtn").on("click",function(){
		self.location="poslist"
		+"${pageMaker.makeQuery(1)}"
		+"&costsearch="
		+$('#costsearch').val()
		+"&kindsearch="
		+$('#kindsearch').val()
		+"&scoresearch="
		+$('#scoresearch').val()
	})
	
})// ready 

</script>
<body>

	<!-- header (로그인 ,마이페이지,위시리스트) -->

	<jsp:include page="/WEB-INF/views/homeLayout/homeheader.jsp"></jsp:include>

	<!-- nav  (메뉴바)-->
	<jsp:include page="/WEB-INF/views/homeLayout/homemenubar.jsp"></jsp:include>
	<!-- product main content(필터,메인상품,등등) -->

	<!--  상품등록 -->
	<div class="container">
		<div class="row">
			<c:if test="${loginID!=null && Lv == '5'}">
				<div class="list_item">
					<a href="/productRegist">상품 등록</a>
				</div>
			</c:if>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<!-- filter side  -->
			<div class="col-sm-3 my-3 mx-3 ">
				<div class="container border border-primary"
					style="text-align: center;">
					
					<div class="row" id="searchBar">
						<p></p>
						<p>필터 부분</p>
						<select class="form-select form-select"
							aria-label=".form-select-lg example" name="costsearch"
							id="costsearch">
							<option value="n"><c:out value=""></c:out></option>
							<option value="c1">Two</option>
							<option value="c2">Three</option>
							<option value="c3">Three</option>
							<option value="c4">Three</option>
						</select> <br> <br>
						
						<p></p>
						<p>필터 부분</p>
						<select class="form-select form-select"
							aria-label=".form-select-lg example" name="kindsearch"
							id="kindsearch">
							<option selected>Open this select menu</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select> <br> <br>
						
						<p></p>
						<p>필터 부분</p>
						<select class="form-select form-select"
							aria-label=".form-select-lg example" name="scoresearch"
							id="scoresearch">
							<option selected>Open this select menu</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select>
						
						<div class="col my-3">
							<button type="button" id="opsearchBtn" class="btn btn-primary">검색</button>
						</div>
						<div class="col my-3">
							<button type="reset" class="btn btn-primary">리셋</button>
						</div>
					</div>
					
				</div>
			</div>

			<!-- list section  -->
			<div class="col-sm-7 my-3 mx-3">
				<div class="container my-5 content2">
					<div class=" product_titlebar">
						<div class="product_title">Perfume</div>
						<div class="product_title_item">더보기</div>
					</div>
					<br>

					<div class="row my-4 align-items-center">

						<!-- 여기 div forEach -->
						<c:forEach var="list" items="${Product}">
							<div class="col-sm">
								<div class="row">
									<a
										href="pddetail?productnum=${list.productnum}&name=${list.name}">
										<img src="${list.image}" id="product_img1">
									</a>

								</div>
								<div class="product_name">
									<a
										href="pddetail?productnum=${list.productnum}&name=${list.name}">
										${list.name} </a>
								</div>
								<div class="product_price">
									<span>$</span>
									<fmt:formatNumber value="${list.price2}"
										pattern="#,###,###,###" />
								</div>
								<div class="product_review">리뷰평점 :${list.score}</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- paging -->
	
	<div align="center">
		 1)  First << ,  Prev <  처리 -->
	<c:if test="${pageMaker.prev && pageMaker.spageNo>1}">
		<a href="bcplist${pageMaker.searchQuery(1)}">FF</a>&nbsp;
		<a href="bcplist${pageMaker.searchQuery(pageMaker.spageNo-1)}">Prev</a>
	</c:if>
	
	<!-- 2) sPageNo ~ ePageNo 까지, displayPageNo 만큼 표시 -->
	<c:forEach var="i" begin="${pageMaker.spageNo}" end="${pageMaker.epageNo}">
		<c:if test="${i==pageMaker.cri.currPage}">
			<font size="5" color="Orange">${i}</font>&nbsp;
		</c:if>
		<c:if test="${i!=pageMaker.cri.currPage}">
			<a href="bcplist${pageMaker.searchQuery(i)}">${i}</a>&nbsp;
		</c:if>
	</c:forEach>
	&nbsp;
	<!-- 3) Next >  ,  Last >>  처리 -->
	<c:if test="${pageMaker.next && pageMaker.epageNo>0}">
		<a href="bcplist${pageMaker.searchQuery(pageMaker.epageNo+1)}">Next</a>&nbsp;
		<a href="bcplist${pageMaker.searchQuery(pageMaker.lastPageNo)}">LL</a>&nbsp;&nbsp;
	</c:if>
</div>

	<jsp:include page="/WEB-INF/views/homeLayout/homefooter.jsp"></jsp:include>
</body>
</html>