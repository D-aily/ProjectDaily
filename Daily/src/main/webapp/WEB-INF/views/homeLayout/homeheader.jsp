<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
</head>
<link rel="stylesheet" type="text/css" href="resources/Lib/mainhome.css">
<script src="resources/Lib/jquery-3.6.0.min.js"></script>
<script src="resources/Lib/jq_headerfixed.js"></script>
<body>
	 <!--서비스 바 (고객센터 매장위치) -->
  <div class="servicebar">
    <div class="servicebar_left_item">
      <div class="service_item"><a href="qnalist">고객센터</a></div>
      <div class="service_item"><a href="kakaotest">매장위치</a></div>
    </div>
  </div>
  <!--헤더 (타이틀로고 로그인 ) -->
  <div class="header">
    <!--헤더Left (검색박스 search_box) -->
    <div class="header_left_item">
      <div>
        <input type="text" name="search" class="search_box" placeholder="상품을 검색해보세요">
      </div>
      <!--헤더Left (검색 버튼 search_button) -->
      <div class="button_left">
        <div>
          <input type="button" class="search_button">
        </div>
      </div>

    </div>
    <!--헤더center (타이틀로고 ) -->
    <div class="header_logo">
      <a  class="home" href="home">D:aily</a>
    </div>
    <!--헤더right (로그인 마이페이지 위시리스트 ) -->
    <div class="header_right_item">
      <div class="header_item"><a href="loginf">로그인</a></div>
      <div class="header_item"><a href="joinf">회원가입</a></div>
      <div class="header_item"><a href=logout>로그아웃</a></div>
      <div class="header_item"><a href="mdetail">마이페이지</a></div>
      <div class="header_item"><a href="">위시리스트</a></div>
    </div>
</body>
</html>