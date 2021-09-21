<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily :: 개인정보확인/수정</title>
<script src="resources/Lib/jquery-3.6.0.min.js"></script>
<script src="resources/Lib/member/member.js"></script>
</head>
<body>
	<div>
		<table>
			<tr height="40">
				<td>아이디</td>
				<td><input type="text" id="id" value="${Info.id}" readonly></td>
			</tr>
			<tr height="40">
				<td>이름</td>
				<td><input type="text" id="name" value="${Info.name}" readonly></td>
			</tr>
			<tr height="40">
				<td>연락 가능 번호</td>
				<td><input type="text" id="phone" value="${Info.phone}"></td>
			</tr>
			<tr height="40">
				<td>배송지</td>
				<td><input type="text" id="address" value="${Info.address}"></td>
			</tr>
			<tr height="40">
				<td>보유 머니</td>
				<td><input type="text" id="money" value="${Info.money}" readonly></td>
			</tr>
			<tr height="40">
				<td>보유 포인트</td>
				<td><input type="text" id="point" value="${Info.point}" readonly></td>
			</tr>
		</table>
	</div>
	<div id="menu">
		<input type="button" value="개인정보 변경" class="btn" id='info_change'><br>
	</div>
</body>
</html>