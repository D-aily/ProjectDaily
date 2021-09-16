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
	$(function() {
		$('#costsearch').change(function() {
			if ($(this).val()=='n') $('#keyword').val('');
		}); //change
		
		$('#kindsearch').change(function() {
			if ($(this).val()=='n') $('#keyword').val('');
		}); //change
		
		$('#scoresearch').change(function() {
			if ($(this).val()=='n') $('#keyword').val('');
		}); //change
		
		$("#opsearchBtn").on("click",function() {
			self.location = "poslist" 
			+ "${pageMaker.makeQuery(1)}"
			+ "&costsearch=" + $('#costsearch').val()
			+ "&kindsearch=" + $('#kindsearch').val()
			+ "&scoresearch=" + $('#scoresearch').val()
			+ "&keyword=" + ${'#keyword'}.val()
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
			<div class="col my-3">
				<div class="container border border-primary"
					style="text-align: center;">
					<form action="poslist" method="get">
					
					<div class="row" id="searchBar">
						<p></p>
						<p>필터 부분</p>
						<select class="form-select form-select"
							aria-label=".form-select-lg example" name="costsearch"
							id="costsearch">
							<option value="n"
								<c:out value="${pageMaker.page.costsearch==null ? 'selected':''}"/>>가격대를 선택하세요<option>
							<option value="c1"
								<c:out value="${pageMaker.page.costsearch=='c1' ? 'selected':''}"/>>10,000원	~ 30,000원</option>
							<option value="c2"
								<c:out value="${pageMaker.page.costsearch=='c2' ? 'selected':''}"/>>30,000원	~ 40,000원</option>
							<option value="c3"
								<c:out value="${pageMaker.page.costsearch=='c3' ? 'selected':''}"/>>40,000원	~ 50,000원</option>
							<option value="c4"
								<c:out value="${pageMaker.page.costsearch=='c4' ? 'selected':''}"/>>50,000원	~ 이상</option>
						</select> <br> <br>

						<p></p>
						<p>필터 부분</p>
						<select class="form-select form-select"
							aria-label=".form-select-lg example" name="kindsearch"
							id="kindsearch">
							<option value="n"
								<c:out value="${pageMaker.page.kindsearch==null ? 'selected':''}"/>>종류를 선택하세요</option>
							<option value="k1"
								<c:out value="${pageMaker.page.kindsearch=='k1' ? 'selected':''}"/>>상의</option>
							<option value="k2"
								<c:out value="${pageMaker.page.kindsearch=='k2' ? 'selected':''}"/>>하의</option>
							<option value="k3"
								<c:out value="${pageMaker.page.kindsearch=='k3' ? 'selected':''}"/>>아우터</option>
							<option value="k4"
								<c:out value="${pageMaker.page.kindsearch=='k4' ? 'selected':''}"/>>가방</option>
						</select> <br> <br>

						<p></p>
						<p>필터 부분</p>
						<select class="form-select form-select"
							aria-label=".form-select-lg example" name="scoresearch"
							id="scoresearch">
							<option value="n"
								<c:out value="${pageMaker.page.scoresearch==null ? 'selected':''}"/>>평점대를 선택하세요</option>
							<option value="s1"
								<c:out value="${pageMaker.page.scoresearch=='s1' ? 'selected':''}"/>>1점</option>
							<option value="s2"
								<c:out value="${pageMaker.page.scoresearch=='s2' ? 'selected':''}"/>>2점</option>
							<option value="s3"
								<c:out value="${pageMaker.page.scoresearch=='s3' ? 'selected':''}"/>>3점</option>
							<option value="s4"
								<c:out value="${pageMaker.page.scoresearch=='s4' ? 'selected':''}"/>>4점</option>
							<option value="s5"
								<c:out value="${pageMaker.page.scoresearch=='s5' ? 'selected':''}"/>>5점</option>
						</select>

						<div class="col my-3">
							<input type="submit" id="opsearchBtn" class="btn btn-primary">검색
						</div>

					</div>
					</form>
				</div>
			</div>

			<!-- list section  -->
			<div class="col-sm my-3">
				<div class="container my-5 content2">
					<div class=" product_titlebar">
						<div class="product_title">Perfume</div>
						<div class="product_title_item">더보기</div>
					</div>
					<br>

					<div class="row align-items-center">

						<!-- 여기 div forEach -->
						<c:forEach var="list" items="${spList}">
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
		<!-- 1)  First << ,  Prev <  처리 -->
		<c:if test="${pageMaker.prev && pageMaker.spageNo>1}">
			<a href="poslist${pageMaker.searchQuery(1)}">FF</a>&nbsp;
		<a href="poslist${pageMaker.searchQuery(pageMaker.spageNo-1)}">Prev</a>
		</c:if>

		<!-- 2) sPageNo ~ ePageNo 까지, displayPageNo 만큼 표시 -->
		<c:forEach var="i" begin="${pageMaker.spageNo}"
			end="${pageMaker.epageNo}">
			<c:if test="${i==pageMaker.page.currPage}">
				<font size="5" color="Orange">${i}</font>&nbsp;
		</c:if>
			<c:if test="${i!=pageMaker.page.currPage}">
				<a href="poslist${pageMaker.searchQuery(i)}">${i}</a>&nbsp;
		</c:if>
		</c:forEach>
		&nbsp;
		<!-- 3) Next >  ,  Last >>  처리 -->
		<c:if test="${pageMaker.next && pageMaker.epageNo>0}">
			<a href="poslist${pageMaker.searchQuery(pageMaker.epageNo+1)}">Next</a>&nbsp;
		<a href="poslist${pageMaker.searchQuery(pageMaker.lastPageNo)}">LL</a>&nbsp;&nbsp;
	</c:if>
	</div>

	<jsp:include page="/WEB-INF/views/homeLayout/homefooter.jsp"></jsp:include>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
		crossorigin="anonymous"></script>
</body>
</html>