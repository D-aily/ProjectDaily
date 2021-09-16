<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily :: 회원가입</title>
<script src="resources/Lib/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/Lib/mainhome.css">
<style>
#form {
	text-align: center;
	margin: 0 auto;
}

.border {
	margin: 0 auto;
	width: 400px;
	height: 500px;
	border: 1px solid #000;
	border-radius: 10%;
}

.btn {
	width: 300px;
	margin: 10px;
}
</style>
</head>
<body>
	<!-- header (로그인 ,마이페이지,위시리스트) -->
	<div>
		<jsp:include page="../homeLayout/homeheader.jsp"></jsp:include>
	</div>
	<div>
		<jsp:include page="../homeLayout/homemenubar.jsp"></jsp:include>
	</div>

	<!-- 회원가입 폼 -->
	<div id="resultArea" class="border">
		<span>Daily : 회원가입</span>
		<form action="msignup" method="post" id="signuppage">
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
					<td><input type="submit" value="회원가입"></td>
				</tr>
			</table>
		</form>
	</div>



</body>
</html>