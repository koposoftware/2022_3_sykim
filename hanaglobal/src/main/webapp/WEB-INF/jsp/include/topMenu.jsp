<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Reveal Bootstrap Template</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- 글씨체 -->
<link href="https://webfontworld.github.io/amore/AritaBuri.css"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500&display=swap"
	rel="stylesheet">

<!-- Favicons -->
<link href="/img/favicon.png" rel="icon">
<link href="/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700"
	rel="stylesheet">


<!-- header css -->
<!-- Vendor CSS Files -->
<!--   <link href="vendor/aos/aos.css" rel="stylesheet"> -->
<!--   <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
<!--   <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"> -->
<!--   <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet"> -->
<!--   <link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet"> -->
<!--   <link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet"> -->

<!-- Template Main CSS File -->
<!--   <link href="css/style.css" rel="stylesheet"> -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">

<style>
.language {
	font-size: 14px;
	height: 30px;
	line-height: 30px;
	margin-right: 195px;
	color: grey;
}
</style>


<div class="top" align="right">
	<div class="language" style="color: #050505">
		<!-- 		<i class="bi bi-globe" style="color:050505"></i> Language  -->
		<onmouseover ="this.style.color='#050505';" >한국어</a> <onmouseover
			="this.style.color='#050505';" >English</a> <onmouseover
			="this.style.color='#050505';">日本語</a>
	</div>
</div>
<a href="/" style="text-decoration: none; color: grey"> <!-- 여기서부터 css-->
	<div
		class="container d-flex align-items-center justify-content-lg-between">

		<h1 class="logo me-auto me-lg-0">
			<a href="/"><img src="/img/hanaglobal.img.png" alt=""
				class="img-fluid" width="190px;height:30px" style="margin-top: 0px"></a>
		</h1>
		<nav id="navbar" class="navbar order-last order-lg-0">
			<ul>
				<li class="dropdown me-4"><a href="#"
					style="color: #408080; text-decoration: none;"><span>환전하기</span>
						<i class="bi "></i></a>
					<ul>
						<li><a href="${pageContext.request.contextPath}/exchange"
							style="text-decoration: none;">실시간환율조회</a></li>
						<ul>
						</ul>

						<li><a
							href="${pageContext.request.contextPath}/exchange/check"
							style="text-decoration: none;">외화환전</a></li>
						<li><a
							href="${pageContext.request.contextPath}/targetedExchange"
							style="text-decoration: none;">맞춤환율알림</a></li>
						<li><a
							href="${pageContext.request.contextPath}/exchange/ResultOfExchange"
							style="text-decoration: none;">환전거래내역</a></li>
						<li><a href="${pageContext.request.contextPath}/target"
							style="text-decoration: none;">목표환율거래내역</a></li>

					</ul></li>
				<li class="dropdown me-4"><a href=""
					style="color: #408080; text-decoration: none;"><span>송금하기</span>
						<i class="bi "></i></a>
					<ul>
						<li><a href="${pageContext.request.contextPath}/register"
							style="text-decoration: none;">즐겨찾기등록</a></li>
						<li><a href="${pageContext.request.contextPath}/remittance"
							style="text-decoration: none;">해외송금</a></li>
						<li><a href="${pageContext.request.contextPath}/reserve"
							style="text-decoration: none;">송금예약</a></li>
						<li><a href="${pageContext.request.contextPath}/showremtrans"
							style="text-decoration: none;">송금거래내역</a></li>
						<li><a
							href="${pageContext.request.contextPath}/showscheduledremtrans2"
							style="text-decoration: none;">예약송금거래내역</a></li>
						<%-- 				<li><a href="${pageContext.request.contextPath}/main/i18" style="text-decoration:none;">테스트</a></li> --%>

					</ul></li>

				<li class="nav-link me-4"><a
					href="${pageContext.request.contextPath}/map"
					style="color: #408080; text-decoration: none;" />지점찾기
				<li class="dropdown me-4"><a
					href="${pageContext.request.contextPath}/question"
					style="color: #408080; text-decoration: none;"><span>자주
							묻는 질문(FAQ)</span> <i class="bi "></i></a>

					<ul>
						<%-- 				<li><a href="${pageContext.request.contextPath}/calendar" style="text-decoration:none;">캘린더 보기</a></li>  --%>
						<%-- 				<li><a href="${pageContext.request.contextPath}/clova " style="text-decoration:none;">ocr확인</a></li> --%>

						<%-- 				<li><a href="${pageContext.request.contextPath}/question" style="text-decoration:none;">게시판</a></li> --%>
						<%-- 				<li><a href="${pageContext.request.contextPath}/coupon" style="text-decoration:none;">이벤트</a></li> --%>
						<%-- 				<li><a href="${pageContext.request.contextPath}/question" style="text-decoration:none;">자주하는 질문</a></li> --%>
						<li><a href="${pageContext.request.contextPath}/test"
							style="text-decoration: none;">테스트</a></li>
						<li><a href="${pageContext.request.contextPath}/admin"
							style="text-decoration: none;">관리자페이지</a></li>
					</ul>
				<li class="dropdown me-4"><a
					href="${pageContext.request.contextPath}/coupon"
					style="color: #408080; text-decoration: none;" />이벤트 <i
					class="bi "></i></a>
<ul>
	<%-- 	                    <li><a href="${pageContext.request.contextPath}/accountrem" style="text-decoration:none;">계좌보기</a></li> --%>


</ul>
</li>


<!-- 		
<li><a class="nav-link scrollto" href="#contact" -->
<!-- 			style="color: #408080;">마이페이지</a></li> -->

</nav>

<nav class="navbar order-last order-lg-0"
	style="flex-wrap: nowrap; margin-right: -100px">
	<div
		style="color: #000809; font-family: 'Noto Sans KR', sans-serif; font-size: 15px">
		<c:if test="${not empty loginVO}">
			<div style="font-size: 14px">${loginVO.name}님환영합니다!</div>
		</c:if>
	</div>

	<c:choose>

		<c:when test="${not empty loginVO}">
			<li class="dropdown me-2" style="list-style: none;"><a
				class="nav-link scrollto" href="#contact" style="color: #408080;">마이페이지</a>
				<ul style="text-decoration: none;">
					<li><a href="${pageContext.request.contextPath}/calendar">일정조회</a></li>
					<li><a href="${pageContext.request.contextPath}/accountrem">계좌조회</a></li>
					<%-- 				 <li><a href="${pageContext.request.contextPath}/analysis">차트보기</a></li> --%>
				</ul></li>

			<a href="${pageContext.request.contextPath}/logout"
				style="color: #007297; text-decoration: none;">로그아웃</a>
		</c:when>
		<c:otherwise>
			<a href="${pageContext.request.contextPath}/login"
				class="get-started-btn scrollto me-2"
				style="color: black; text-decoration: none;">로그인</a>
			<a href="${pageContext.request.contextPath}/join"
				class="get-started-btn scrollto"
				style="color: black; text-decoration: none;">회원가입</a>
		</c:otherwise>

	</c:choose>
	</ul>
	<i class="bi bi-list mobile-nav-toggle"></i>
</nav>

<!-- .navbar -->


</div>
</header>
</head>





<!-- Template Main JS File -->
<!-- <script src="/js/main.js"></script> -->
</body>

</html>