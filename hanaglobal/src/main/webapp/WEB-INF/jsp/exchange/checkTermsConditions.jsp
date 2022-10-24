<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
	rel="stylesheet">
<link
	href='https://fonts.googleapis.com/css?family=Quicksand:300,400,700'
	rel="stylesheet">
</head>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/data.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<!-- Favicons -->
<link href="/img/favicon.png" rel="icon">
<link href="/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700"
	rel="stylesheet">
<!-- <link href="https://webfontworld.github.io/amore/AritaBuri.css" rel="stylesheet"> -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="vendor/aos/aos.css" rel="stylesheet">
<link href="vendor/bootstrap/bootstrap.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
<link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
	crossorigin="anonymous"></script>
<header
	style="border-bottom: 2px solid rgb(64, 128, 128); background: #fff;"
	class="header fixed-top">
	<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>
	<link href="/css/style.css" rel="stylesheet">
</header>
<style>
body {
	line-height: 1.5;
	font-family: "Spoqa Han Sans", Malgun Gothic, "맑은 고딕", dotum, "돋움",
		-apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica, Arial,
		sans-serif;
	background-color: #f8f8f8;
}

@font-face {
	font-family: 'HanaB.ttf';
	src: url('/font/HanaB.ttf');
	font-weight: 400;
	font-style: normal;
}
</style>



<style>
.accordion-button {
	position: relative;
	display: flex;
	align-items: center;
	width: 100%;
	padding: var(- -bs-accordion-btn-padding-y)
		var(- -bs-accordion-btn-padding-x);
	font-size: 1rem;
	color: var(- -bs-accordion-btn-color);
	text-align: left;
	background-color: #f5f5f5;
	border: 0;
	border-radius: 0;
	overflow-anchor: none;
	transition: var(- -bs-accordion-transition);
}
</style>

<body>
	<div class="container" style="margin-top: 50px">
		<h2
			style="font-family: 'HanaB.ttf'; margin-left: 570px; margin-top: 100px; display: inline-block">
			환전서비스 약관 동의</h2>
		<div class="hanafont" style="margin-left: 240px; margin-top: 0px">


			<!-- 탭 메뉴 -->
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item" role="presentation"><input type="hidden"
					id="missionCode" name="missionCode" value="혈압">
					<button class="nav-link active" id="userinfo-tab"
						data-bs-toggle="tab" data-bs-target="#userinfo" type="button"
						role="tab" aria-controls="userinfo" aria-selected="true"
						style="font-size: 16px; color: rgb(64, 128, 128)">등록</button></li>
				<li class="nav-item" role="presentation">
					<button class="nav-link" id="myreview-tab" data-bs-toggle="tab"
						data-bs-target="#myreview" type="button" role="tab"
						aria-controls="myreview" aria-selected="false"
						style="font-size: 16px; color: grey">조회</button>
				</li>
			</ul>

			<!-- 내용 -->
			<div class="tab-content container" id="myTabContent">
				<div class="tab-pane fade show active" id="userinfo" role="tabpanel"
					aria-labelledby="userinfo-tab">

					<div class="col-md-12">
						<div class="form-floating">
							<div class="row g-2 mt-2">
								<div class="accordion accordion-flush"
									id="accordionFlushExample">

									<div class="accordion-item">
										<h2 class="accordion-header" id="flush-headingTwo">
											<button style="font-family: 'Noto Sans KR', sans-serif;"
												class="accordion-button collapsed" type="button"
												data-bs-toggle="collapse"
												data-bs-target="#flush-collapseTwo" aria-expanded="false"
												aria-controls="flush-collapseTwo">환전신청 및 결제</button>
										</h2>
										<div id="flush-collapseTwo"
											class="accordion-collapse collapse"
											aria-labelledby="flush-headingTwo"
											data-bs-parent="#accordionFlushExample">
											<div class="accordion-body">
												<h6 style="font-family: 'Noto Sans KR', sans-serif">
													1. 이용 대상<br>
												</h6>
												국민인 거주자 개인 <br>
												<h6 style="font-family: 'Noto Sans KR', sans-serif">
													2. 환전 가능 시간<br>
												</h6>
												24시간 / 365일<br> 단, 은행간 자금정산 시간대(23:30-24:30) 에는 가상계좌
												입금방식 거래 불가<br>

												<h6 style="font-family: 'Noto Sans KR', sans-serif">
													3. 환전 가능 통화<br>
												</h6>
												21종 외국통화 현찰<br> 주요통화 : USD, JPY, EUR<br> 기타통화 :
												CNY, AUD, CAD, CHF, GBP, HKD, NZD, SGD, THB<br> DKK,
												IDR, MYR, NOK, PHP, RUB, SEK, TWD, VND<br>
												<h6 style="font-family: 'Noto Sans KR', sans-serif">
													4. 환전 가능 한도 (동일자 동일인 누적기준)<br>
												</h6>
												로그인 환전 : 미화환산 1만불 상당액 이내<br> 비로그인 환전 : 원화 1백만원 이내<br>
												한도 합산 기준<br> 하나은행을 통해 신청한 비대면 환전 신청건을 모두 합산하며, 미수령잔액 포함
												하여 합산<br>

												<h6 style="font-family: 'Noto Sans KR', sans-serif">
													5. 환전 가능 사유<br>
												</h6>
												환전 신청 후 외화 수령하는 경우 : 일반 해외여행 경비<br> 그 외 : 소지 목적<br>
												<h6 style="font-family: 'Noto Sans KR', sans-serif">
													6. 결제 방법<br>
												</h6>
												로그인 환전 : 하나은행 계좌 출금<br> 비로그인 환전 : 가상계좌 입금<br> 환전
												신청 후 30분 이내 입금 하지 않는 경우 환전 신청이 자동취소 되며 현금 입금만 가능<br>

												가상계좌 입금 시 환율 급변동 하는 경우 환전 대금 입금이 불가할 수 있으며 이 경우 30분 경과 후 다시
												환전 신청 필요<br> <br>
												<hr></hr>
												<input type="checkbox" id="accountOpen1_agree1"
													name="accountOpen1_agree1" required> <label
													for="accountOpen1_agree1"
													style="color: #1299b6; font-family: 'Noto Sans KR', sans-serif; font-size: 16px">위
													약관의 내용을 충분히 숙지하고 이해하였으며, 이에 동의합니다.</label>


											</div>
										</div>
									</div>
									<div class="accordion-item">
										<h2 class="accordion-header" id="flush-headingThree">
											<button style="font-family: 'Noto Sans KR', sans-serif;"
												class="accordion-button collapsed" type="button"
												data-bs-toggle="collapse"
												data-bs-target="#flush-collapseThree" aria-expanded="false"
												aria-controls="flush-collapseThree">외화수령</button>
										</h2>
										<div id="flush-collapseThree"
											class="accordion-collapse collapse"
											aria-labelledby="flush-headingThree"
											data-bs-parent="#accordionFlushExample">
											<div class="accordion-body">
												<h6 style="font-family: 'Noto Sans KR', sans-serif">
													1. 수령일 <br>
												</h6>
												신청일 포함 1개월이내 지정 가능 당일 수령가능 (일반영업점 기준 영업일 15시까지 신청) 지정한
												수령일로부터 7일까지 수령가능, 7일 경과시 수령일, 수령점 재등록 필요
												<h6 style="font-family: 'Noto Sans KR', sans-serif">
													2. 수령한도 <br>
												</h6>
												1일 최대 미화환산 1만불 (외화수령 + 원화재환전 + 외화계좌입금액 합산)
												<h6 style="font-family: 'Noto Sans KR', sans-serif">
													3. 수령인 <br>
												</h6>
												신청인 본인만 수령 가능 하며 신분증 지참
												<h6 style="font-family: 'Noto Sans KR', sans-serif">
													4. 수령 가능 권종 <br>
												</h6>
												영업점의 외국통화 재고 현황에 따라 희망하시는 외국통화 권종의 수령이 제한될 수 있습니다.
												<h6 style="font-family: 'Noto Sans KR', sans-serif">
													5. 수령 가능 시간<br>
												</h6>
												영업점 <Br> 09:30 ~ 15:30(은행영업일)<Br> 인천국제공항지점 환전소<Br>
												월~목요일 : 07:00 ~ 21:00<Br> 금요일 : 06:00 ~ 21:00<Br>
												주말 및 공휴일 : 08:00 ~ 20:00<Br> <br>
												<hr></hr>
												<input type="checkbox" id="accountOpen1_agree2"
													name="accountOpen1_agree2" required> <label
													for="accountOpen1_agree2"
													style="color: #1299b6; font-family: 'Noto Sans KR', sans-serif; font-size: 16px">위
													약관의 내용을 충분히 숙지하고 이해하였으며, 이에 동의합니다.</label>
											</div>
										</div>
									</div>
									<div class="accordion-item">
										<h2 class="accordion-header" id="flush-headingOne">
											<button class="accordion-button collapsed"
												style="font-family: 'Noto Sans KR', sans-serif;"
												type="button" data-bs-toggle="collapse"
												data-bs-target="#flush-collapseOne" aria-expanded="false"
												aria-controls="flush-collapseOne">이용안내 및 유의사항</button>
										</h2>
										<div id="flush-collapseOne"
											class="accordion-collapse collapse"
											aria-labelledby="flush-headingOne"
											data-bs-parent="#accordionFlushExample">
											<div class="accordion-body">
												1.완료된 거래는 취소할 수 없습니다. <Br> (환전신청 완료, 가상계좌입금완료, 원화로 재환전
												및 외화계좌 입금거래 완료 등)<br> 2.외화수령, 원화로 재환전, 외화계좌로 입금 거래는
												환전신청 건별로 거래가 가능하며, 분할거래는 불가능합니다. <Br> 3.2019.7.2 이전
												환전건은 수령정보 변경이 불가능합니다. <Br> 4.환전 신청 후 미수령 상태로 은행이 보관중인
												환전 신청 금액은 예금자보호법에 따라 예금보험공사가 보호하지 않습니다. <Br> 5.외국환
												거래규정에 따라 국민인 거주자의 미화환산 1만불 상당액 초과 환전은 국세청 및 관세청에 자동 통보됩니다. <Br>
												(동일자 동일인 합산 기준) <Br> 6.본인명의 휴대폰 번호가 미등록 된 경우 환전거래가
												불가능합니다. <Br> (인터넷/스마트폰뱅킹 고객정보 변경메뉴에서 등록가능) <br> <Br>
												<hr></hr>
												<input type="checkbox" id="accountOpen1_agree3"
													name="accountOpen1_agree3" required> <label
													for="accountOpen1_agree3"
													style="color: #1299b6; font-family: 'Noto Sans KR', sans-serif; font-size: 16px">위
													약관의 내용을 충분히 숙지하고 이해하였으며, 이에 동의합니다.</label>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>

					</div>
				</div>
				<br> <br> <br>
				<div align="center">
					<button type="button" class="btn3" onclick="nextStep()">다음</button>
				</div>

				<script>
					function checkRegex() {
						let bCheck = true
						let agree1 = $('#accountOpen1_agree1')[0]
						let agree2 = $('#accountOpen1_agree2')[0]
						let agree3 = $('#accountOpen1_agree3')[0]
				
				
						if (!agree1.checked) {
							bCheck = false
							alert('약관 동의는 필수체크 항목입니다.')
				
			
						} else if (!agree2.checked) {
							bCheck = false
							alert('약관 동의는 필수체크 항목입니다.')
						}
				
						else if (!agree3.checked) {
							bCheck = false
							alert('약관 동의는 필수체크 항목입니다.')
						}
						return bCheck
					}
				
					function nextStep() {
				
						if (checkRegex() == true) {
							location.href = "${ pageContext.request.contextPath}/exchange/doExchange"
						}
					}
				</script>

	
</body>

</html>