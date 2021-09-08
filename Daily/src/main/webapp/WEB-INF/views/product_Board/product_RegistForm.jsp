<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily :: Product Registration</title>
<link rel="stylesheet" type="text/css" href="resources/myLib/mainhome.css">
</head>
<body>
<!-- header (로그인 ,마이페이지,위시리스트) -->
<jsp:include page="/WEB-INF/views/homeLayout/homeheader.jsp"></jsp:include>
<!-- nav  (메뉴바)-->
<jsp:include page="/WEB-INF/views/homeLayout/homenav.jsp"></jsp:include>


 <!-- 상품 등록 Form -->
<form action="pdinsert" method="post" enctype="multipart/form-data" >
<table>
<th> 상품 등록 </th>
<tr>
<td>상품 이름</td>
<td><input type="text" name="name" id="name"></td>
</tr>




</table>
</form>
<!-- footer (고객센터) -->
<jsp:include page="/WEB-INF/views/homeLayout/homefooter.jsp"></jsp:include>
</body>
</body>
</html>