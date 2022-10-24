<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">


<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title><spring:message code="site.title" text="메인페이지- default" /></title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- 글씨체 -->
<!-- <link href="https://webfontworld.github.io/amore/AritaBuri.css" rel="stylesheet"> -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
	rel="stylesheet">

<!-- bootstrap -->
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
	crossorigin="anonymous"></script>
<!-- Favicons -->
<link href="/img/favicon.png" rel="icon">
<link href="/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,600,700"
	rel="stylesheet">
<link
	href='https://fonts.googleapis.com/css?family=Quicksand:300,400,700'
	rel="stylesheet">

<!-- 노토산스 noto sans font  -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<!--   <link href="css/style.css" rel="stylesheet"> -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<!-- Vendor CSS Files -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="vendor/aos/aos.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
<link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="css/style.css" rel="stylesheet">
</head>


<body>
	<header
		style="border-bottom: 2px solid rgb(64, 128, 128); background: #fff;"
		class="header fixed-top">
		<style>
.language {
	font-size: 14px;
	height: 30px;
	line-height: 30px;
	margin-right: 200px;
	color: #black;
	/*     #007297 */
}

.3 {
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}
</style>


		<div class="top" align="right" style="margin-right: -100px">
			<div class="top" align="right" style="margin-right: -42px">
				<div class="language" style="color: #050505">
					<!-- 		<i class="bi bi-globe"></i> Language -->
					<a href="/?lang=ko" style="color: #050505"
						onmouseover="this.style.color='#007297';"
						onmouseout="this.style.color='';">한국어</a> <a href="/?lang=en"
						style="color: #050505" onmouseover="this.style.color='#007297';"
						onmouseout="this.style.color='';">English</a> <a href="/?lang=ja"
						style="color: #050505" onmouseover="this.style.color='#007297';"
						onmouseout="this.style.color='';">日本語</a>

					<script>
function changeLocale(value){
    $.ajax({ 
       url: "${pageContext.request.contextPath}/changeLocale",   
       type: "POST", 
       data: {'language' : value},
      		 
              success : function(data) {
            	  alert('성공');
            	  
              },
              error : function() {
                 alert('실패');
              }
           })
}

</script>

				</div>
			</div>
			<a href="/" style="text-decoration: none; color: grey"> <!-- 여기서부터 css-->
				<div
					class="container d-flex align-items-center justify-content-lg-between">

					<h1 class="logo me-auto me-lg-0">
						<a href="/"><img src="/img/hanaglobal.img.png" alt=""
							class="img-fluid" width="220px;height:40px"></a>
					</h1>
					<nav id="navbar" class="navbar order-last order-lg-0">
						<ul>
							<li class="dropdown me-4"><a href="#"
								style="color: #408080; text-decoration: none;"><span><spring:message
											code="site.title1" arguments="첫번째" text="default text" /></span> <i
									class="bi"></i></a>
								<ul>
									<li><a href="${pageContext.request.contextPath}/exchange"
										style="text-decoration: none;">실시간환율조회</a></li>
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
								style="color: #408080; text-decoration: none; margin-left: 5px"><span>
										<spring:message code="site.title2" arguments="첫번째"
											text="default text" />
								</span> <i class="bi"></i></a>
								<ul>
									<li><a href="${pageContext.request.contextPath}/register"
										style="text-decoration: none;">즐겨찾기등록</a></li>
									<li><a
										href="${pageContext.request.contextPath}/remittance"
										style="text-decoration: none;">해외송금</a></li>
									<li><a href="${pageContext.request.contextPath}/reserve"
										style="text-decoration: none;">송금예약</a></li>
									<li><a
										href="${pageContext.request.contextPath}/showremtrans"
										style="text-decoration: none;">송금거래내역</a></li>
									<li><a
										href="${pageContext.request.contextPath}/showscheduledremtrans2"
										style="text-decoration: none;">예약송금거래내역</a></li>
								</ul></li>



							<li class="nav-link me-4"><a
								href="${pageContext.request.contextPath}/map"
								style="color: #408080; text-decoration: none;" />
							<spring:message code="site.title3" arguments="첫번째"
									text="default text" />
							<li class="dropdown me-4"><a
								href="${pageContext.request.contextPath}/question"
								style="color: #408080; text-decoration: none;"><span><spring:message
											code="site.title4" arguments="첫번째" text="default text" /></span> <i
									class="bi "></i></a>

								<ul>
									<%-- 				<li><a href="${pageContext.request.contextPath}/calendar" style="text-decoration:none;">캘린더 보기</a></li>  --%>
									<%-- 				<li><a href="${pageContext.request.contextPath}/clova " style="text-decoration:none;">ocr확인</a></li> --%>

									<%-- 				<li><a href="${pageContext.request.contextPath}/question" style="text-decoration:none;">게시판</a></li> --%>

									<li><a href="${pageContext.request.contextPath}/test"
										style="text-decoration: none;">테스트</a></li>
									<li><a href="${pageContext.request.contextPath}/admin"
										style="text-decoration: none;">관리자페이지</a></li>
								</ul>
							<li class="dropdown me-4"><a
								href="${pageContext.request.contextPath}/coupon"
								style="color: #408080; text-decoration: none;" />
							<spring:message code="site.title5" arguments="첫번째"
									text="default text" /> <i class="bi "></i></a>
			<ul>
				<%-- 	                    <li><a href="${pageContext.request.contextPath}/accountrem" style="text-decoration:none;">계좌보기</a></li> --%>


			</ul>
			</li>



			</nav>

			<nav class="navbar order-last order-lg-0"
				style="flex-wrap: nowrap; margin-right: -100px">
				<div
					style="color: #000809; font-family: 'Noto Sans KR', sans-serif; font-size: 16px">
					<c:if test="${not empty loginVO}">
						<div style="font-size: 14px">
							<div>${loginVO.name}님환영합니다!</div>
						</div>
					</c:if>
				</div>

				<c:choose>

					<c:when test="${not empty loginVO}">

						<li class="dropdown" style="list-style: none;"><a
							class="nav-link scrollto" href="#contact" style="color: #408080;">마이페이지</a>
							<ul style="text-decoration: none;">
								<li><a href="${pageContext.request.contextPath}/calendar">일정조회</a></li>
								<li><a href="${pageContext.request.contextPath}/accountrem">계좌보기</a></li>
								<%-- 				  <li><a href="${pageContext.request.contextPath}/analysis">차트보기</a></li> --%>
							</ul></li>

						<a href="${pageContext.request.contextPath}/logout"
							style="color: #007297; text-decoration: none;">로그아웃</a>
					</c:when>
					<c:otherwise>
						<a href="${pageContext.request.contextPath}/login"
							class="get-started-btn scrollto me-2"
							style="color: black; text-decoration: none;"><spring:message
								code="site.title6" arguments="첫번째" text="default text" /></a>
						<a href="${pageContext.request.contextPath}/join"
							class="get-started-btn scrollto"
							style="color: black; text-decoration: none;"><spring:message
								code="site.title7" arguments="첫번째" text="default text" /></a>
					</c:otherwise>

				</c:choose>
				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>

			<!-- .navbar -->

		</div>
	</header>
</head>

</header>



<!-- 사진바꾸기 -->
<section id="hero"
	class="d-flex align-items-center justify-content-center"
	style="background-image: url('/img/worldmap.png'); display: inline-block">

	<div class="container" data-aos="fade-up">

		<div class="row justify-content-center" data-aos="fade-up"
			data-aos-delay="150">
			<!--       style="margin-bottom:200px" -->
			<div class="col-xl-6 col-lg-8" style="margin-top: 70px">
				<div class="mt-4"
					style="color: cadetblue; font-size: 80px; font-family: 'Noto Sans KR', sans-serif; font-weight: 700;"
					id="first">
					<span></span>
				</div>
				<!--           <h2 style="color:gray">쉽고 편리한 환전&송금 서비스</h2> -->
				<h2>
					<div id="notificationBar"
						style="color: #657c9d; font-family: 'Noto Sans KR', sans-serif;"></div>
				</h2>
			</div>
		</div>

		<!--    밑에 네모박스 -->
		<div class="row gy-4 mt-5 justify-content-center" data-aos="zoom-in"
			data-aos-delay="250">
			<!--       style="margin-bottom:350px" -->
			<div class="col-xl-2 col-md-4 row">
				<div class="icon-box  pt-4">
					<i class="ri-store-line"></i> <i class="bi bi-currency-dollar"
						style="color: #fff"></i>
				</div>
				<h3 class="m-0">
					<a href="" style="text-decoration: none; color: gray;">
						<div class="1"
							style="font-size: 19px; margin-right: 90px; font-family: 'Noto Sans KR', sans-serif;">
							<spring:message code="site.content1" arguments="첫번째"
								text="default text" />
						</div>
					</a>
				</h3>
			</div>

			<div class="col-xl-2 col-md-4 row">
				<div class="icon-box pt-4">
					<i class="ri-bar-chart-box-line"></i> <i
						class="bi bi-currency-exchange" style="color: #fff"></i>
				</div>
				<h3 class="m-0">
					<a href="" style="text-decoration: none; color: gray">
						<div class="2"
							style="font-size: 19px; margin-right: 90px; font-family: 'Noto Sans KR', sans-serif;">
							<spring:message code="site.content2" arguments="첫번째"
								text="default text" />

						</div>
					</a>
				</h3>
			</div>

			<div class="col-xl-2 col-md-4 row">
				<div class="icon-box  pt-4">
					<i class="ri-calendar-todo-line"></i> <i class="bi bi-globe2"
						style="color: #fff"></i>
				</div>
				<h3 class="m-0">
					<a href="" style="text-decoration: none; color: gray">
						<div class="3"
							style="font-size: 19px; margin-right: 90px; font-family: 'Noto Sans KR', sans-serif;">
							<spring:message code="site.content3" arguments="첫번째"
								text="default text" />
						</div>
					</a>
				</h3>
			</div>

			<div class="col-xl-2 col-md-4 row">
				<div class="icon-box pt-4">
					<i class="ri-paint-brush-line"></i> <i class="bi bi-wallet"
						style="margin-top: 50px; color: #fff"></i>
				</div>
				<h3 class="m-0">
					<a href="" style="text-decoration: none; color: gray">
						<div
							style="font-size: 19px; margin-right: 90px; font-family: 'Noto Sans KR', sans-serif;">
							<spring:message code="site.content4" arguments="첫번째"
								text="default text" />
						</div>
					</a>
				</h3>
			</div>

			<div class="col-xl-2 col-md-4 row">
				<div class="icon-box  pt-4">
					<i class="ri-database-2-line"></i> <i class="bi bi-calendar-plus"
						style="color: #fff"></i>
				</div>
				<h3 class="m-0">
					<a href="" style="text-decoration: none; color: gray">
						<div
							style="font-size: 17px; margin-right: 90px; font-family: 'Noto Sans KR', sans-serif;">
							<spring:message code="site.content5" arguments="첫번째"
								text="default text" />
						</div>
					</a>
				</h3>
			</div>
		</div>

	</div>
</section>


<!-- End Hero -->

<main id="main">

	<div
		class="image col-xl-5 d-flex align-items-stretch justify-content-center justify-content-lg-start"
		data-aos="fade-right" data-aos-delay="100"></div>

	<!-- ======= Features Section ======= -->
	<section id="features" class="features">
		<div class="container" data-aos="fade-up">


			<div class="row">
				<div class="d-flex">


					<video height="300" width="500" muted autoplay loop
						oncontextmenu="return false;">
						<source src="/video/video-source.mp4" type="video/mp4">
					</video>

					<div class="col-lg-6" data-aos="fade-left" data-aos-delay="100">
						<div class="icon-box mt-5 mt-lg-0" data-aos="zoom-in"
							data-aos-delay="150">
							<i class="bi bi-camera-fill" style="color: #b5b5b5;"></i>
							<h4>편리한 방법</h4>
							<p>은행에 직접 가지 않아도 비대면 사진 촬영으로 언제 어디서든 송금할 수 있습니다.</p>
						</div>
						<div class="icon-box mt-5" data-aos="zoom-in" data-aos-delay="150">
							<i class="bi bi-calendar-check" style="color: #b5b5b5;"></i>
							<h4>은행 주요 일정 기록</h4>
							<p>캘린더에 은행 일정을 기록하여 중요한 일정을 놓치지 않을 수 있습니다</p>
						</div>
						<div class="icon-box mt-5" data-aos="zoom-in" data-aos-delay="150">
							<i class="bx bx-receipt" style="color: #b5b5b5;"></i>
							<h4>환전/송금 내역 조회</h4>
							<p>빠르고 간편하게 환전 내역을 조회 하실 수 있습니다</p>
						</div>
						<div class="icon-box mt-5" data-aos="zoom-in" data-aos-delay="150">
							<i class="bi bi-bookmark-star" style="color: #b5b5b5;"></i>
							<h4>즐겨찾기등록</h4>
							<p>자주 해외 송금 보내시는 고객을 위해 즐겨찾기 등록으로 간편하게 해외 송금을 보낼 수 있어요</p>
						</div>
					</div>
				</div>

			</div>




		</div>
	</section>
	<!-- End Features Section -->

	<!-- ======= Services Section ======= -->
	<section id="services" class="services">
		<div class="container " data-aos="fade-up">

			<div class="section-title">
				<h2>환율, 환전, 송금, 커뮤니티까지</h2>
				<p style="color: #358697;">HanaGlobal 외환 서비스</p>
			</div>

			<div class="row">
				<div class="col-lg-4 col-md-6 d-flex align-items-stretch "
					data-aos="zoom-in" data-aos-delay="100">
					<div class="icon-box">
						<div class="icon">
							<i class="bi bi-activity"></i>
						</div>
						<h4>
							<a href="" style="text-decoration: none;">실시간 환율조회</a>
						</h4>
						<p>고시환율을 기준으로 실시간 환율을 조회하실 수 있습니다</p>
					</div>
				</div>

				<div
					class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0"
					data-aos="zoom-in" data-aos-delay="100">
					<div class="icon-box">
						<div class="icon">
							<i class="bi bi-arrow-repeat"></i>
						</div>
						<h4>
							<a href="" style="text-decoration: none;">환전신청</a>
						</h4>
						<p>언제 어디서나 원하는 국가를 선택해서 환전해보세요</p>
					</div>
				</div>

				<div
					class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0"
					data-aos="zoom-in" data-aos-delay="100">
					<div class="icon-box">
						<div class="icon" style="text-decoration: none;">
							<i class="bi bi-calculator"></i>
						</div>
						<h4>
							<a href="" style="text-decoration: none;">환율계산기</a>
						</h4>
						<p>실시간 환율을 체크하여 알뜰하게 환전/송금해보세요</p>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4"
					data-aos="zoom-in" data-aos-delay="100">
					<div class="icon-box">
						<div class="icon" style="text-decoration: none;">
							<i class="bi bi-globe"></i>
						</div>
						<h4>
							<a href="" style="text-decoration: none;">해외송금</a>
						</h4>
						<p>즐겨찾기 등록으로 편리하고 빠르게 해외 송금을 해보아요</p>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4"
					data-aos="zoom-in" data-aos-delay="200">
					<div class="icon-box">
						<div class="icon">
							<i class="bi bi-cursor-fill"></i>
						</div>
						<h4>
							<a href="" style="text-decoration: none;">은행캘린더</a>
						</h4>
						<p>주요 일정을 기록하여 원하는 날짜에 거래할 수 있어요</p>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4"
					data-aos="zoom-in" data-aos-delay="300">
					<div class="icon-box">
						<div class="icon">
							<i class="bi bi-card-checklist"></i>
						</div>
						<h4>
							<a href="" style="text-decoration: none;">계좌 조회/관리</a>
						</h4>
						<p>환전/송금 거래 내역을 쉽고 간편하게 확인해보아요</p>
					</div>

				</div>

			</div>

		</div>

	</section>
	<!-- End Services Section -->



	<!-- ======= Counts Section ======= -->
	<section id="counts" class="counts ms-5">

		<div class="d-flex justify-content-evenly ms-5">

			<div class="container aos-init aos-animate d-flex align-items-"
				data-aos="fade-up">



				<div
					class="col-xl-10 ps-0 ps-lg-5 pe-lg-1 d-flex align-items-stretch"
					data-aos="fade-left" data-aos-delay="100">

					<div class="content d-flex flex-row justify-content-center">


						<div>
							<h3 style="color: #358697;">HanaGlobal 서비스 현황</h3>
							<p>내 모든 금융 서비스를 한눈에 조회하고 한곳에서 관리하세요!</p>
							<div class="row">
								<div class="col-md-6 d-md-flex align-items-md-stretch">
									<div class="count-box">
										<i class="bi bi-emoji-smile"></i> <span
											data-purecounter-start="0" data-purecounter-end="60"
											data-purecounter-duration="2" class="purecounter"></span>
										<p>
											<strong>실시간 환율 조회</strong> <br> 60초 마다 실시간 변화하는 환율 조회가
											가능해요!
										</p>
									</div>
								</div>

								<div class="col-md-6 d-md-flex align-items-md-stretch">
									<div class="count-box">
										<i class="bi bi-camera-fill"></i> <span
											data-purecounter-start="0" data-purecounter-end="30"
											data-purecounter-duration="2" class="purecounter"></span>
										<p>
											<strong>30초안에 송금하기</strong><br> 즐겨찾기 등록으로 한번에! 더이상 은행에서
											기다릴 필요 없이 편하고 빠르게 송금해드릴게요
										</p>
									</div>
								</div>

								<div class="col-md-6 d-md-flex align-items-md-stretch">
									<div class="count-box">
										<i class="bi bi-clock"></i> <span data-purecounter-start="0"
											data-purecounter-end="24" data-purecounter-duration="4"
											class="purecounter"></span>
										<p>
											<strong>중요한 금융 일정을 24시간 기록하기</strong> <br> 주요 금융 일정을 놓치지
											말고 똑똑하게 기록해요~
										</p>
									</div>
								</div>

								<div class="col-md-6 d-md-flex align-items-md-stretch">
									<div class="count-box">
										<i class="bi bi-bell"></i> <span data-purecounter-start="0"
											data-purecounter-end="5" data-purecounter-duration="4"
											class="purecounter"></span>
										<p>
											<strong>5초안에 환전 우대 수수료 받기~</strong><br> 롤렛 이벤트로 환율 우대
											쿠폰을 받아봐요~
										</p>
									</div>
								</div>
							</div>
						</div>

						<!--                      <div> -->
						<!--                         <video height="300" width="500" muted autoplay loop -->
						<!--                            oncontextmenu="return false;"> -->
						<!--                            <source src="/video/video-globe.mp4" type="video/mp4"> -->
						<!--                         </video> -->
						<!--                      </div> -->


					</div>
					<!-- End .content-->
				</div>
			</div>

			<div class="me-5" data-aos="fade-left">
				<video height="600" width="500" muted autoplay loop
					oncontextmenu="return false;">
					<source src="/video/video-globe.mp4" type="video/mp4">
				</video>
			</div>

		</div>
		</div>
	</section>
	<!-- End Counts Section -->


</main>
<!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer">
	<div class="footer-top">
		<div class="container">
			<div class="row">

				<div class="col-lg-3 col-md-6">
					<div class="footer-info">
						<h3>
							Gp<span>.</span>
						</h3>
						<p>
							A108 Adam Street <br> NY 535022, USA<br> <br> <strong>Phone:</strong>
							+1 5589 55488 55<br> <strong>Email:</strong>
							info@example.com<br>
						</p>
						<div class="social-links mt-3">
							<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a
								href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a
								href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
							<a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
							<a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
						</div>
					</div>
				</div>

				<div class="col-lg-2 col-md-6 footer-links">
					<h4>Useful Links</h4>
					<ul>
						<li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
						<li><i class="bx bx-chevron-right"></i> <a href="#">About
								us</a></li>
						<li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
						<li><i class="bx bx-chevron-right"></i> <a href="#">Terms
								of service</a></li>
						<li><i class="bx bx-chevron-right"></i> <a href="#">Privacy
								policy</a></li>
					</ul>
				</div>

				<div class="col-lg-3 col-md-6 footer-links">
					<h4>Our Services</h4>
					<ul>
						<li><i class="bx bx-chevron-right"></i> <a href="#">Web
								Design</a></li>
						<li><i class="bx bx-chevron-right"></i> <a href="#">Web
								Development</a></li>
						<li><i class="bx bx-chevron-right"></i> <a href="#">Product
								Management</a></li>
						<li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
						<li><i class="bx bx-chevron-right"></i> <a href="#">Graphic
								Design</a></li>
					</ul>
				</div>

				<div class="col-lg-4 col-md-6 footer-newsletter">
					<h4>Our Newsletter</h4>
					<p>Tamen quem nulla quae legam multos aute sint culpa legam
						noster magna</p>
					<form action="" method="post">
						<input type="email" name="email"><input type="submit"
							value="Subscribe">
					</form>

				</div>



			</div>

			<div class="container">
				<div class="copyright">
					&copy; Copyright <strong><span>Gp</span></strong>. All Rights
					Reserved
				</div>
				<div class="credits">
					<!-- All the links in the footer should remain intact. -->
					<!-- You can delete the links only if you purchased the pro version. -->
					<!-- Licensing information: https://bootstrapmade.com/license/ -->
					<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/gp-free-multipurpose-html-bootstrap-template/ -->
					Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
				</div>
			</div>
</footer>
<!-- End Footer -->

<!--   <div id="preloader"></div> -->
<a href="#"
	class="back-to-top d-flex align-items-center justify-content-center"><i
	class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="vendor/purecounter/purecounter_vanilla.js"></script>
<script src="vendor/aos/aos.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="vendor/glightbox/js/glightbox.min.js"></script>
<script src="vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="vendor/swiper/swiper-bundle.min.js"></script>
<script src="vendor/php-email-form/validate.js"></script>
<script src="https://unpkg.com/typewriter-effect@2.3.1/dist/core.js"></script>
<!-- Template Main JS File -->
<script src="js/main.js"></script>

<script>
       
var app = document.getElementById('notificationBar');
      var typewriter = new Typewriter(app, {
         loop : true,
         cursor : "",
      });
//       typewriter.typeString('손님의 기쁨,그 하나를 위하여').pauseFor(2500)
//             .deleteAll().typeString('안심하고 이용할 수 있는 비대면 환전/송금서비스').pauseFor(2500)
            .deleteAll().typeString('Welcome to Hana Global').pauseFor(2500)
            .start();
   </script>

<script>
    
var app = document.getElementById('first');
   var typewriter = new Typewriter(app, {
      loop : true,
      cursor : "",
   });
   typewriter.typeString('Hana Global').pauseFor(2500)
         .deleteAll().typeString('Hana Global').pauseFor(2500)
         .deleteAll().typeString('Welcome to Hana Global').pauseFor(2500)
         .start();
</script>

</script>

</body>

</html>