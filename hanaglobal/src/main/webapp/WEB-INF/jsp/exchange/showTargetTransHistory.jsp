<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" />
<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<!-- 글씨체 -->
<!-- <link href="https://webfontworld.github.io/amore/AritaBuri.css" rel="stylesheet"> -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<link rel="stylesheet"
	href="/vendors2/owl-carousel-2/owl.carousel.min.css">
<link rel="stylesheet"
	href="/vendors2/owl-carousel-2/owl.theme.default.min.css">

</head>


<header
	style="border-bottom: 2px solid rgb(64, 128, 128); background: #fff;"
	class="header fixed-top">
	<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>
	<link href="/css/style.css" rel="stylesheet">
</header>
<script
	src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>

<style>
.table-striped tbody tr:nth-of-type(odd) {
	background-color: #fff;
}

@font-face {
	font-family: 'HanaB.ttf';
	src: url('/font/HanaB.ttf');
	font-weight: 400;
	font-style: normal;
}

table.dataTable {
	padding-top: 10px;
}

#deviceTable_wrapper {
	margin-top: 30px;
}
</style>



<body>
	<div class="container" style="margin-left: 410px; margin-top: 50px;">

		<h2
			style="font-family: 'HanaB.ttf', sans-serif; margin-left: 470px; margin-top: 100px; display: inline-block">목표알림
			거래내역</h2>
		<img src="/img/alarm2.gif"
			style="width: 100px; margin-top: -20px; margin-left: -5px">

		<div class="container-xxl py-4">
			<div class="container px-lg-5">

				<div class="row g-4">
					<div class="col-12 text-center" style="margin-bottom: -30px">

					</div>
					<div
						class="col-lg-4 col-md-6 wow animate__animated animate__flipInX"
						data-wow-delay="0.1s"
						style="background-color: #f4f4f4; border-right: 5px solid #fff">
						<a class="carousel-control-prev" href="#carouselExampleControls"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"
							style="background-color: #b5b5b5"></span> <span class="sr-only">Previous</span>
						</a>
						<div
							class="service-item d-flex flex-column justify-content-center text-center rounded">
							<div class="service-icon flex-shrink-0">
								<i class="fa fa-home fa-2x"></i>
							</div>
							<h5 class="mb-3" style="font-family: 'Noto Sans KR', sans-serif;">
								<img
									src="https://blog.kakaocdn.net/dn/dpkNZh/btqU93WEVyX/Zc4kKr4u8IyCxn8N5lj6W0/img.jpg"
									alt="" style="width: 50px; margin-top: 20px; height: 30px">
							</h5>
							<p style="font-family: 'HanaB.ttf'; margin-top: -10px">미국 환율
							</p>
							<div
								style="color: #0aa; font-family: 'HanaB.ttf'; margin-top: -7px">
								${selectbuybasicrate1[2].BUYBASICRATE}<</div>
						</div>
					</div>
					<div
						class="col-lg-4 col-md-6 wow  animate__animated animate__flipInX"
						data-wow-delay="0.3s"
						style="background-color: #f4f4f4; border-right: 5px solid #fff">
						<div
							class="service-item d-flex flex-column justify-content-center text-center rounded">
							<div class="service-icon flex-shrink-0">
								<i class="fa fa-home fa-2x"></i>
							</div>
							<h5 class="mb-3" style="font-family: 'Noto Sans KR', sans-serif;">
								<img
									src="https://opendata.mofa.go.kr:8444/fileDownload/images/country_images/flags/ISO/JP.gif"
									alt="" style="width: 50px; margin-top: 20px">
							</h5>

							<p style="font-family: 'HanaB.ttf'; margin-top: -10px">일본 환율
							</p>
							<div
								style="color: #0aa; font-family: 'HanaB.ttf'; margin-top: -10px">${selectbuybasicrate1[0].BUYBASICRATE}</div>
						</div>
					</div>
					<div
						class="col-lg-4 col-md-6 wow animate__animated animate__flipInX"
						data-wow-delay="0.6s" style="background-color: #f4f4f4">
						<div
							class="service-item d-flex flex-column justify-content-center text-center rounded">
							<div class="service-icon flex-shrink-0">
								<i class="fa fa-home fa-2x"></i>
							</div>
							<h5 class="mb-3" style="font-family: 'Noto Sans KR', sans-serif;">
								<img
									src=https://mblogthumb-phinf.pstatic.net/20140210_41/bechoo2001_1392019198198wHp3V_JPEG/3991852347.jpg?type=w2
									style="width: 50px; margin-top: 20px">

							</h5>
							<p style="font-family: 'HanaB.ttf'; margin-top: -10px">중국 환율
							</p>
							<div
								style="color: #0aa; font-family: 'HanaB.ttf'; margin-top: -10px">${selectbuybasicrate1[1].BUYBASICRATE}</div>
						</div>
						<a class="carousel-control-next" href="#carouselExampleControls"
							role="button" data-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"
							style="background-color: #b5b5b5"></span> <span class="sr-only">Next</span>
						</a>
					</div>

				</div>
			</div>
		</div>

		<!-- test -->

		<table class="table table-striped dataTable" id="deviceTable">
			<thead class="" style="background-color: #e0dcdc">
				<tr>

					<th class="align-items-center justify-content-center"
						style="width: 15%">아이디</th>
					<th class="align-items-center justify-content-center"
						style="width: 15%">통화구분</th>
					<th style="width: 15%;">목표 환율</th> &nbsp;
					<!--                               <th style="width: 15%;">목표 환율 마지막 날짜</th> &nbsp; -->
					<th style="width: 15%;">신청일</th> &nbsp;
					<th style="width: 15%;">현재환율</th> &nbsp;
					<th style="width: 15%;">달성 여부</th> &nbsp;

				</tr>

			</thead>

			<tbody>
			</tbody>

		</table>
</body>
</div>


<script>
    $(document).ready(function() {
        $("#deviceTable").DataTable({
            "pageLength": 10,
            ajax:{
               url:"${pageContext.request.contextPath}/Targetedhistory",
               type:"GET",
               dataSrc :''
            },
            columns:[ 
               {targets: 0, data:"ID"},
               {targets: 1, data:"CURRENCY", "width":"250px"},
               {targets: 2, data:"TARGETEDRATE"},
               {targets: 3, data:"CURRENTDATE", "width":"250px"},
               {targets: 4, data:"CURRENTRATE", "width":"250px"},
               {targets: 5, data:"STATUS","width":"250px"}
               
            ],
            "bLengthChange": false,
            "bFilter": false,
            "bInfo": false,
            "order": [[1, 'desc']],//order column in descending order.
            "columnDefs": [
                { "type": "date", "targets": [1] }//date column formatted like "03/23/2018 10:25:13 AM".
            ],
          
        });
        
    });

</script>
</body>
<!-- Bootstrap core JS-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>
<!-- Core theme JS-->
<script src="/vendors2/owl-carousel-2/owl.carousel.min.js"></script>
<script src="js/scripts.js"></script>
</html>
