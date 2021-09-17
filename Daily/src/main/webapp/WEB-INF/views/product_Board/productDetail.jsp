<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily :: ProductDetail</title>
<link rel="stylesheet" type="text/css" href="resources/Lib/mainhome.css">
<link rel="stylesheet" type="text/css" href="resources/Lib/productForm.css">
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
	<tr height="40"><td bgcolor="SkyBlue">평점</td>
		<td>${Product.score}</td></tr>
	<tr height="40"><td bgcolor="SkyBlue">리뷰</td>
		<td></td></tr>
	<tr height="40"><td bgcolor="SkyBlue">상품qna</td>
		<td></td></tr>	
		
</table>
<hr>
<a href="pddetail?productnum=${Product.productnum}&jcode=U">수정하기</a>&nbsp;
<input type="button" value="주문하기">
<input type="button" value="장바구니" >
<input type="button" value="찜하기">


<!-- footer (고객센터) -->
	<jsp:include page="/WEB-INF/views/homeLayout/homefooter.jsp"></jsp:include>
</body>
</html>