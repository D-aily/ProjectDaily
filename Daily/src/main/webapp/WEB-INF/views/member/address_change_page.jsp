<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily :: 배송지 변경</title>
<script src="resources/Lib/jquery-3.6.0.min.js"></script>
<script src="resources/Lib/member/member.js"></script>
</head>
<body>
	<table>
		<tr height="40">
			<td>현재 배송지</td>
			<td><input type="text" value="${loginInfo.address}" readonly></td>
		</tr>
		<tr height="40">
			<td>바꿀 배송지 입력</td>
			<td><input type="text" id="address" name="address">
			<input type="hidden" name="id" id="id" value="${loginInfo.id}">
			</td>
		</tr>
	</table>
	<div id="menu">
		<input type="button" value="배송지 변경" class="btn" id="address_change">
	</div>
</body>
</html>
