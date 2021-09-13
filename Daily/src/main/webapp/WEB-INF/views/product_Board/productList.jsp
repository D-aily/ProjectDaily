<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D:aily :: Product List</title>
<link rel="stylesheet" type="text/css" href="resources/myLib/mainhome.css">
</head>
<body>

	<!-- header (로그인 ,마이페이지,위시리스트) -->
 	<jsp:include page="/WEB-INF/views/homeLayout/homeheader.jsp"></jsp:include>
 	
 	<!-- nav  (메뉴바)-->
 	<jsp:include page="/WEB-INF/views/homeLayout/homenav.jsp"></jsp:include>
<!-- product main content(필터,메인상품,등등) -->

<div class="product_main">
 <!-- 상품 리스트 공간지정 -->
 <div class="product_content">
 
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
  	<c:if test="${message!=null}">
 => ${message}<br>
	</c:if>
 <c:forEach var="list" items="${Product}"> 
  <!-- 상품list 공간지정 -->
  <div class="product_list">
  
   <!-- 상품 공간지정 -->
   <div class="product_item">
    <div class="product_img_box">
     <a><img src="resources/img/black-1984277_1280.jpg" id="product_img1">
     </a>
    </div>
    <!-- 상품 정보 공간지정 -->
    <div class="product_info">
     <div class="product_name">${list.name}</div> 
     <div class="product_price"><span>$</span>
     <fmt:formatNumber value="${list.price2}" pattern="#,###,###,###"/>
      <!-- 숫자를 , 로 표시하기위함 -->
     </div>
     <div class="product_review">리뷰평점 :${list.score}</div>
    </div>
    
   </div>
 </div>
 
  </c:forEach>
  
 </div> <!-- page_content -->
</div> <!-- main -->

	<jsp:include page="/WEB-INF/views/homeLayout/homefooter.jsp"></jsp:include>
</body>
</html>