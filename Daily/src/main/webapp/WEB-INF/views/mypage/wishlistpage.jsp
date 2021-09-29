<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily :: 위시리스트</title>
<script src="resources/Lib/jquery-3.6.0.min.js"></script>
<script src="resources/Lib/member/member.js"></script>
<link rel="stylesheet" type="text/css" href="resources/Lib/mainhome.css">
<script>
	
</script>

</head>
<body>
	<!-- list -->
	<table>
		<tr>
			<th>찜 번호</th>
			<th>아이디</th>
			<th>상품명</th>
			<th>갯 수</th>
		</tr>
<c:forEach var="list" items="${wishlist}" varStatus="status">
		<tr>
			<td>${list.wlnum }</td>
			<td>${list.id }</td>
			<td>${list.productnum}</td>
			<td>${list.quantity}</td>
		</tr>
</c:forEach>
	</table>

</body>
</html>

