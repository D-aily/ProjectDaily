<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily :: Cart List</title>
<script src="resources/Lib/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="resources/Lib/mainhome.css">
<link rel="stylesheet" type="text/css" href="resources/Lib/productForm.css.css">
</head>
<body>

	<!-- header (로그인 ,마이페이지,위시리스트) -->

	<jsp:include page="/WEB-INF/views/homeLayout/homeheader.jsp"></jsp:include>

	<!-- nav  (메뉴바)-->
	<jsp:include page="/WEB-INF/views/homeLayout/homemenubar.jsp"></jsp:include>
	<!-- product main content(필터,메인상품,등등) -->

	<!--  장바구니 리스트 -->
	<form action=""><table>
		<tr><th>상품명</th><th>수량</th><th>배송비</th><th>가격</th><th></th></tr>
		<c:forEach var="list" items="${map.list}">
		<tr><td>${list.pname}</td><td>${list.quantity}</td><td>무료</td><td>${list.price2}</td><td></td>
		</c:forEach>
	</table></form>


	<jsp:include page="/WEB-INF/views/homeLayout/homefooter.jsp"></jsp:include>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
		crossorigin="anonymous"></script>

</body>
</html>