<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Spring Mvc2 MemberDetail **</title>
</head>
<body>
	<table>
		<tr height="40">
			<td bgcolor="Lavender">아이디</td>
			<td>${loginInfo.id}</td>
		</tr>
		<tr height="40">
			<td bgcolor="Lavender">이름</td>
			<td>${loginInfo.name}</td>
		</tr>
		<tr height="40">
			<td bgcolor="Lavender">연락 가능 번호</td>
			<td>${loginInfo.phone}</td>
		</tr>
		<tr height="40">
			<td bgcolor="Lavender">보유 머니</td>
			<td>${loginInfo.money}</td>
		</tr>
		<tr height="40">
			<td bgcolor="Lavender">배송지</td>
			<td>${loginInfo.address}</td>
		</tr>
		

	</table>
	<hr>
	<div id="loginmenu">
		<input type="button" value="배송지 변경" class="btn" onclick="location.href='mypage?id=${loginInfo.id}&jcode=U'">
		<input type="button" value="비밀번호 찾기" class="btn" onclick="location.href='home'">
	</div>
</body>
</html>
