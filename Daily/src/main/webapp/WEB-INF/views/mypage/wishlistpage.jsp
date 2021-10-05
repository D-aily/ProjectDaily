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
</head>
<body>
	<!-- list -->
	<table>
		<c:forEach var="list" items="${wishlist}" varStatus="status">
			<div> 상품명 : ${list.pname}<br>
				<input type="button" id="${list.wlnum}" class="deleteBtn" value="삭제">
				${list.wlnum}
			</div>
			<hr>
		</c:forEach>
	</table>

</body>
</html>

