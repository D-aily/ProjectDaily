<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servicecenter</title>
</head>
<link rel="stylesheet" type="text/css" href="resources/Lib/mainhome.css">
<link rel="stylesheet" type="text/css"
	href="resources/Lib/servicecenter.css">
<script src="resources/Lib/jquery-3.6.0.min.js"></script>
<script src="resources/Lib/jq_headerfixed.js"></script>

<body>
	<!-- header (로그인 ,마이페이지,위시리스트) -->
	<div>
		<jsp:include page="../homeLayout/homeheader.jsp"></jsp:include>
	</div>
	<div>
		<jsp:include page="../homeLayout/homenav.jsp"></jsp:include>
	</div>
	<div>

		<!-- 고객센터 메뉴바 ,안내 -->
		<jsp:include page="../servicecenter/QnaLayout/Qnaheader.jsp"></jsp:include>

		<!-- list -->
		<table>


			<tr>
				<th>번호</th>
				<th>아이디</th>
				<th>제목</th>
				<th>등록일</th>
				<th hidden="hidden">공개여부</th>
			</tr>
			<c:forEach var="list" items="${Qnalist}" varStatus="status">

				<tr>
					<td>${list.qnanum}</td>
					<td><c:out value="${list.id}"></c:out></td>


					<!-- 로그인시에만 글을 볼수 있도록 -->
					<c:if test="${SessionID==null}">

						<!-- 공개글 시  -->
						<c:if test="${list.secret eq 1}">
							<td><a href="qnadetail?qnanum=${list.qnanum}&id=${list.id}">${list.title}</a></td>
						</c:if>

						<!-- 비공개글일시  -->
						<c:if test="${list.secret eq 2}">
							<td>비밀글 입니다.</td>
						</c:if>
						<!-- 자신의 아이디이거나 session id eq list.id
								 (관리자만 볼수있도록 +추가하기)  -->
						<%--  <c:when test="${list.secret eq 2 && SessionID eq null}">
								<td><a href="qnadetail?qnanum=${list.qnanum}&id=${list.id}">비밀글 입니다.</a></td>
							</c:when>  --%>

					</c:if>
					<!-- 로그인시에만 글을 볼수 있도록 나중에 바꾸기 -->
					<c:if test="${SessionID!=null}">
						<!-- 공개글 시  -->
						<c:if test="${list.secret eq 1}">
							<td>${list.title}</a></td>
						</c:if>

						<!-- 비공개글일시  -->
						<c:if test="${list.secret eq 2}">
							<td>비밀글 입니다.</td>
						</c:if>
					</c:if>


					<td>${list.date}</td>
					<td hidden="hidden">${list.secret}</td>
				</tr>
			</c:forEach>
		</table>
		<br>
		<hr>
		
		<c:if test="${SessionID==null}">
			<div class="list_item">
			<a href="qnainsertf">문의글 쓰기</a>
			</div>
			
		</c:if>

		<!-- paging -->
		<div></div>


	</div>
	<!--main  -->
	<!-- footer (고객센터,배송 및 반품,FAQ,법적고지,개인정보처리방침,일반 판매 조건 ) -->
	<div>
		<jsp:include page="../homeLayout/homefooter.jsp"></jsp:include>
	</div>
</body>

</html>