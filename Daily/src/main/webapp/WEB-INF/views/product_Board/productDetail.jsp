<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily :: ProductDetail</title>
<script src="resources/Lib/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="resources/myLib/mainhome.css">
</head>
<body>
	<!-- header (로그인 ,마이페이지,위시리스트) -->
	<jsp:include page="/WEB-INF/views/homeLayout/homeheader.jsp"></jsp:include>
	<!-- nav  (메뉴바)-->
	<jsp:include page="/WEB-INF/views/homeLayout/homemenubar.jsp"></jsp:include>
<table>
	<tr height="40"><td bgcolor="SkyBlue">PN.</td>
		<td>${Product.productnum}</td></tr>
	<tr height="40"><td bgcolor="SkyBlue">상품명</td>
		<td>${Product.name}</td></tr>
	<tr height="40"><td bgcolor="SkyBlue">상품상세설명</td>
		<td><textarea rows="10" cols="40" readonly>${Product.content}</textarea></td>
	</tr>
	<tr height="40"><td bgcolor="SkyBlue">등록일</td>
		<td>${Product.date}</td></tr>	
	<tr height="40"><td bgcolor="SkyBlue">상품사진</td>
		<td><img src="${Product.image}" width="150" height="150"></td></tr>	
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
	<tr height="40"><td bgcolor="SkyBlue">평점</td>
		<td>${Product.score}</td></tr>
	<tr height="40"><td bgcolor="SkyBlue">리뷰</td>
		<td></td></tr>
	<tr height="40"><td bgcolor="SkyBlue">상품qna</td>
		<td></td></tr>	
		
</table>
<hr>
<input type="button" value="주문하기">
<input type="button" value="장바구니">
<input type="button" value="찜하기">


<!-- footer (고객센터) -->
	<jsp:include page="/WEB-INF/views/homeLayout/homefooter.jsp"></jsp:include>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
		crossorigin="anonymous"></script>
</body>
</html>