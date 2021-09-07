<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily</title>
<link rel="stylesheet" type="text/css" href="resources/myLib/mainhome.css">
</head>
<body>

	<!-- header (로그인 ,마이페이지,위시리스트) -->
 	<jsp:include page="/WEB-INF/views/homeLayout/homeheader.jsp"></jsp:include>
 	
 	<!-- nav  (메뉴바)-->
 	<jsp:include page="/WEB-INF/views/homeLayout/homenav.jsp"></jsp:include>
<!-- product main content(필터,메인상품,등등) -->
<main class="product_main">
 <!-- 상품 리스트 공간지정 -->
 <div class="page_content">
 
 <!-- filter 공간지정 -->
  <div class="filters">
  
  <!-- filter_bar 공간지정 -->
   <div class="filters_bar">
   	<div><span>종류</span>
   	 </div>
   	<div><span>소재</span> 
   	 </div>
   	<div><span>색상</span>
   	 </div>
   	<div><span>정렬</span>
   	 </div>
   	 
   </div>
   
  </div>
  
  <!-- 상품list 공간지정 -->
  <ul class="product_list">
   <!-- 상품 공간지정 -->
   <li class="product_item">
    <div class="product_img_box">
     <a><img src="resources/img/black-1984277_1280.jpg" id="product_img1">
     </a>
    </div>
    <div class="product_name">상품명 1</div>
    <div class="product_price">가격</div>
    <div class="product_review">리뷰 수</div>
   </li>
   
    <li class="product_item">
    <div class="product_img_box">
     <a><img src="resources/img/black-1984277_1280.jpg" id="product_img1">
     </a>
    </div>
    <div class="product_name">상품명 1</div>
    <div class="product_price">가격</div>
    <div class="product_review">리뷰 수</div>
   </li>
   
    <li class="product_item">
    <div class="product_img_box">
     <a><img src="resources/img/black-1984277_1280.jpg" id="product_img1">
     </a>
    </div>
    <div class="product_name">상품명 1</div>
    <div class="product_price">가격</div>
    <div class="product_review">리뷰 수</div>
   </li>
  
  <li class="product_item">
    <div class="product_img_box">
     <a><img src="resources/img/black-1984277_1280.jpg" id="product_img1">
     </a>
    </div>
    <div class="product_name">상품명 1</div>
    <div class="product_price">가격</div>
    <div class="product_review">리뷰 수</div>
   </li>
   
   <li class="product_item">
    <div class="product_img_box">
     <a><img src="resources/img/black-1984277_1280.jpg" id="product_img1">
     </a>
    </div>
    <div class="product_name">상품명 1</div>
    <div class="product_price">가격</div>
    <div class="product_review">리뷰 수</div>
   </li>
   
   <li class="product_item">
    <div class="product_img_box">
     <a><img src="resources/img/black-1984277_1280.jpg" id="product_img1">
     </a>
    </div>
    <div class="product_name">상품명 1</div>
    <div class="product_price">가격</div>
    <div class="product_review">리뷰 수</div>
   </li>
   
   <li class="product_item">
    <div class="product_img_box">
     <a><img src="resources/img/black-1984277_1280.jpg" id="product_img1">
     </a>
    </div>
    <div class="product_name">상품명 1</div>
    <div class="product_price">가격</div>
    <div class="product_review">리뷰 수</div>
   </li>
   
   <li class="product_item">
    <div class="product_img_box">
     <a><img src="resources/img/black-1984277_1280.jpg" id="product_img1">
     </a>
    </div>
    <div class="product_name">상품명 1</div>
    <div class="product_price">가격</div>
    <div class="product_review">리뷰 수</div>
   </li>
  </ul>
  
  
 </div> <!-- page_content -->
</main> <!-- main -->


<hr>
<table>
	<tr height="40" bgcolor="PaleTurquoise">
			<th>productnum</th>
			<th>name</th>
			<th>content</th>
			<th>date</th>
			<th>image</th>
			<th>state</th>
			<th>가격</th>
			<th>종류</th>
			<th>조회수</th>
			<th>평점</th>
			
		</tr>
		<c:forEach var="list" items="${Product}">
			<tr height="40">
				<td>${list.productnum}</td>
				<td>${list.name}</td>
				<td>${list.content}</td>
				<td>${list.date}</td>
				<td>${list.image}</td>
				<td>${list.state}</td>
				<td>${list.price2}</td>
				<td>${list.kind}</td>
				<td>${list.count}</td>
				<td>${list.score}</td>
			</tr>
		</c:forEach>
	</table>
	<jsp:include page="/WEB-INF/views/homeLayout/homefooter.jsp"></jsp:include>
</body>
</html>