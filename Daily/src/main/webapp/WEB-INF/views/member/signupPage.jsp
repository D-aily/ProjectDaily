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
<script>
// 스위치 변수들 모두 true가되야 가능
var iCheck = false;
var pCheck = false;
var nCheck = false;
var bCheck = false;
var oCheck = false;
var wCheck = false;

// 유효성 검사
$(function() {
	$('#id').focus();
	$('#id').focusout(function() {
		iCheck = idCheck();
	}); // id_focusout  

	$('#pw').focusout(function() {
		pCheck = pwCheck();
	}); //password_focusout

	$('#name').focusout(function() {
		nCheck = nmCheck();
	}); //name

	$('#birthd').focusout(function() {
		bCheck = bdCheck();
	}); //birthd

	$('#point').focusout(function() {
		//poCheck=poCheck();
		//=> 로직오류 : 변수명과 함수명이 같은경우 변수우선
		oCheck = poCheck();
	}); //point

	$('#weight').focusout(function() {
		wCheck = weCheck();
	}); //weight
}); //ready

// ID 중복 확인하기
function idDupCheck() {
	if (iCheck == false) {
		iCheck = idCheck();
	} else {
		var url = "idCheck?id=" + $('#id').val();
		window.open(url, "_blank", "toolbar=no,menubar=yes,scrollbars=yes,resizable=yes,width=500,height=400");
	}
} //idDupCheck
</script>
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
				<td><input type="text" name="id" id="id" size="10">&nbsp;&nbsp;
					<input type="button" value="ID중복확인" id="idDup"
					onclick="idDupCheck()"><br> <span id=iMessage
					class="eMessage"></span></td>
				<!-- 	<td>
						<input type="text" name="id" id="id" size="10">
						<input type="button" value="ID중복확인" id="idDup" onclick="idDupCheck()">
					</td> -->
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