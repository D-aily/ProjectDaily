<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily</title>
<link rel="stylesheet" type="text/css" href="resources/myLib/mainhome.css">
</head>
<body>
<table>
	<tr height="40" bgcolor="PaleTurquoise">
			<th>productnum</th>
			<th>name</th>
			<th>content</th>
			<th>date</th>
			<th>image</th>
			<th>state</th>
			<th>가격</th>
			<th>종류</th>
			<th>조회수</th>
			<th>평점</th>
			
		</tr>
		<c:forEach var="list" items="${Product}">
			<tr height="40">
				<td>${list.productnum}</td>
				<td>${list.name}</td>
				<td>${list.content}</td>
				<td>${list.date}</td>
				<td>${list.image}</td>
				<td>${list.state}</td>
				<td>${list.price2}</td>
				<td>${list.kind}</td>
				<td>${list.count}</td>
				<td>${list.score}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>