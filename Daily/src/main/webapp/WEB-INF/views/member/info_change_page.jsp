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
    <table>
        <tr height="40">
            <td>연락 가능 번호</td>
            <td><input type="text" id="phone" name="phone" value="${loginInfo.phone}"></td>
        </tr>
        <tr height="40">
            <td>비밀번호 변경</td>
            <td><input type="password" id="pw" name="pw" value="${loginInfo.pw }"></td>
        </tr>
    </table>
    <div id="menu">
        <input type="button" value="개인정보 변경" class="btn" id='info_change_page'>
    </div>
</body>
</html>