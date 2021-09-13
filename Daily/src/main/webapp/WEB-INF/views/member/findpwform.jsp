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