<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily :: 아이디/비밀번호 찾기</title>
<script src="resources/Lib/jquery-3.6.0.min.js"></script>
<script src="resources/Lib/member/login.js"></script>
<style>
</style>
</head>
<body>
	<form action="findpw" method="post">
		<table>
			<tr>
				<span></span>
				<td>
					<input type="text" name="name" id="name" placeholder="가입자 성명">
				</td>
			</tr>
			<tr>
				<td>
					<input type="password" name="phone" id="phone" placeholder="000-0000-0000">
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="아이디 찾기"></td>
		</table>
	</form>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily :: 아이디 찾기</title>
<script src="resources/Lib/jquery-3.6.0.min.js"></script>
<script src="resources/Lib/member/login.js"></script>
<style>
form {
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

img {
	margin-top: 20px;
	margin-bottom: 80px;
}

input {
	width: 300px;
	margin: 10px;
}
</style>
</head>
<body>
		<form action="findid" method="post">
			<h1>아이디 찾기</h1>
			<input type="text" name="name" id="name" placeholder="이름을 입력해주세요."><br>
			<input type="text" name="phone" id="phone" placeholder="핸드폰번호를 입력해주세요."><br>
			<br>
			<hr>
			<div id="loginmenu">
				<input type="submit" value="아이디 찾기">
				<input type="button" value="회원가입" id="signup">
				<input type="button" value="비밀번호 찾기" id="findpw">
			</div>
		</form>
</body>
</html>