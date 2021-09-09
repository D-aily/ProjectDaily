<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily :: Product Registration</title>
<link rel="stylesheet" type="text/css" href="resources/myLib/mainhome.css">
<link rel="stylesheet" type="text/css" href="resources/myLib/productForm.css">
</head>
<body>
<!-- header (로그인 ,마이페이지,위시리스트) -->
<jsp:include page="/WEB-INF/views/homeLayout/homeheader.jsp"></jsp:include>
<!-- nav  (메뉴바)-->
<jsp:include page="/WEB-INF/views/homeLayout/homenav.jsp"></jsp:include>


 <!-- 상품 등록 Form -->
<form action="pdinsert" method="post" enctype="multipart/form-data" >
<table class="regist_table">
<th> 상품 등록 </th>
<tr><td>상품명</td>
	<td><input type="text" name="name" id="name"></td></tr>
<tr><td>상세 설명</td>
	<td><textarea name="content" rows="10" cols="20"></textarea></td></tr>
	
<tr><td>등록 날짜</td>
	<td><input type="text" name="date" id="date"></td></tr>
<tr><td>사진</td>
	<td><img src="" class="select_img"><br>
	<input type="file" name="imagef" id="imagef"></td></tr>
<tr><td>판매 여부</td>
	<td><input type="radio" name="state" id="state" value="T" checked>판매중 &nbsp;&nbsp;
		<input type="radio" name="state" id="state" value="F">판매중지</td></tr>
<tr><td>원 가격</td>
	<td><input type="text" name="price1" id="price1"></td></tr>
<tr><td>판매 가격</td>
	<td><input type="text" name="price2" id="price2"></td></tr>
<tr><td>순 이익</td>
	<td><input type="text" name="price3" id="price3"></td></tr>
<tr><td>입고 수량</td>
	<td><input type="text" name="quantity1" id="quantuty1"></td></tr>
<tr><td>재고 수량</td>
	<td><input type="text" name="quantity2" id="quantity2"></td></tr>
<tr><td>종 류</td>
	<td><select name="kind" id="kind">
			<option value="">종류선택
			<option value="1">상의
			<option value="2">하의
			<option value="3">아우터
			<option value="4">가방
	    </select>
	</td></tr>
<!-- <tr><td>조회수는 default = 0</td>
	<td><input type="text" name="name" id="name"></td></tr>	 -->
<tr><td>상품평</td>
	<td><input type="text" name="score" id="score" value="0"></td></tr>	
	
	<tr><td></td>
		<td><input type="submit" value="등록">&nbsp;&nbsp;
			<input type="submit" value="취소">
		</td>
	</tr>

</table>
</form>
<!-- footer (고객센터) -->
<jsp:include page="/WEB-INF/views/homeLayout/homefooter.jsp"></jsp:include>
</body>
</body>
</html>