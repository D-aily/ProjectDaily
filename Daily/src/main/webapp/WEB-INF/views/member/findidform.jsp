<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily :: 아이디/비밀번호 찾기</title>
<script src="resources/Lib/jquery-3.6.0.min.js"></script>
<script src="resources/member/login.js"></script>
<style>
</style>
</head>
<body>
		<form action="login" method="post">
			<table>
				<tr>
					<span>로그인</span>
					<td>
						<input type="text" name="id" id="id" placeholder="아이디">
					</td>
				</tr>
				<tr>
					<td>
						<input type="password" name="pw" id="pw" placeholder="비밀번호">
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="로그인">
					</td>
			</table>
		</form>
<hr>
		<div>
			<span id="findid">아이디 찾기</span>
			|
			<span id="signup">회원가입</span>
			|
			<span id="changepw">비밀번호 변경</span>
		</div>
</body>
</html>