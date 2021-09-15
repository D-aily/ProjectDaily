<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily :: 회원가입</title>
<script src="resources/Lib/jquery-3.6.0.min.js"></script>
<style>
</style>
</head>
<body>
	<form action="msignup" method="post" id="signupform">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" id="id" size="10"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pw" id="pw" size="10"></td>
			</tr>
			<!-- 	<tr>
					<td>비밀번호 재확인</td>
					<td><input type="password" name="pw" id="pw2" size="10"></td>
				</tr> -->
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" id="name" size="10"></td>
			</tr>
			<tr>
				<td>핸드폰 번호</td>
				<td><input type="text" name="phone" id="phone" size="10"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address" id="address" size="10"></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type="date" name="birth" id="birth"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="회원가입" onlick="print()"></td>
			</tr>
		</table>
	</form>



</body>
</html>