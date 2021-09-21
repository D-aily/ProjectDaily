<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily :: 배송지 정보</title>
<script src="resources/Lib/jquery-3.6.0.min.js"></script>
<script src="resources/Lib/member/member.js"></script>
</head>
<body>
	<div>
		<table>
			<tr height="40">
				<td>현재 주소</td>
				<td>${loginInfo.address}</td>
			</tr>
		</table>
		<div id="menu">
			<input type="button" value="배송지 변경" class="btn" id='address_change_page'>
		</div>
	</div>
</body>
</html>