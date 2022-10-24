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
<style>
@font-face {
	font-family: 'HanaB.ttf';
	src: url('/font/HanaB.ttf');
	font-weight: 400;
	font-style: normal;
}
</style>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/data.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>

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
<!-- anmiated.js -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
</head>
<header
	style="border-bottom: 2px solid rgb(64, 128, 128); background: #fff;"
	class="header fixed-top">
	<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>
</header>
<style type="text/css">
#chart {
	background: linear-gradient(#dedede, #fff, #fff);;
}

.tg {
	border-collapse: collapse;
	border-spacing: 0;
}

.tg td {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	overflow: hidden;
	padding: 10px 5px;
	word-break: normal;
}

.tg th {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	overflow: hidden;
	padding: 10px 5px;
	word-break: normal;
}

.tg .tg-zs35 {
	background-color: #efefef;
	border-color: #656565;
	text-align: left;
	vertical-align: top
}

.tg .tg-0pky {
	border-color: inherit;
	text-align: left;
	vertical-align: top
}

.highcharts-figure, .highcharts-data-table table {
	min-width: 360px;
	max-width: 800px;
	margin: 1em auto;
}

.highcharts-data-table table {
	font-family: Verdana, sans-serif;
	border-collapse: collapse;
	border: 1px solid #fff;
	margin: 10px auto;
	text-align: center;
	width: 100%;
	max-width: 500px;
}

.highcharts-data-table caption {
	padding: 1em 0;
	font-size: 1.2em;
	color: #fff;
}

.highcharts-data-table th {
	font-weight: 600;
	padding: 0.5em;
}

.highcharts-data-table td, .highcharts-data-table th,
	.highcharts-data-table caption {
	padding: 0.5em;
}

.highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even)
	{
	background: #fff;
}

.highcharts-data-table tr:hover {
	background: #fff;
}

.highcharts-subtitle {
	font-size: 20px;
}

.highcharts-figure, .highcharts-data-table table {
	min-width: 360px;
	max-width: 800px;
	margin: 1em auto;
	color: #fff;
}

.rect[Attributes] {
	fill: transparent;
	x: 0;
	y: 0;
	width: 690;
	height: 400;
	rx: 0;
	ry: 0;
}

.highcharts-background {
	background-color: transparent;
}
</style>




<body style="background: #fff">
	<section id="chart">

		<div class="container" style="margin-left: 370px;">
			<div class="mt-2" align="center" style="padding-right: 150px">

				<div style="margin-top: 30px;">
					<select class="" id="sel_country">
						<option value="1">미국</option>
						<option value="2">일본</option>
						<option value="3">중국</option>
						<option value="4">유럽</option>
						<option value="5">캐나다</option>
					</select> <select class="" id="sel_date" name="chooseMonth"
						onchange="month(this.value);">
						<option value="3">3개월</option>
						<option value="6">6개월</option>
						<option value="12">12개월</option>
					</select>



					<h2
						style="font-family: 'HanaB.ttf'; margin-left: 0px; margin-top: 0px; display: inline-block"
						class="animate__animated animate__flipInX">환율차트</h2>
				</div>

			</div>

			<div align="center">

				<figure class="highcharts-figure">
					<div id="container" style="margin-top: 50px">

						<p class="highcharts-description"></p>
					</div>
				</figure>


			</div>
		</div>

	</section>

    <script>

        $(document).ready(function(){
            $.ajax({
                     url: '${pageContext.request.contextPath}/ex_otherrate',
                     method: 'get',
                     success: function(data){
        //                 alert('성공');
                        console.log(data);
                       
                        tmp = [];
                        for(let i = 0 ; i < data.length; i++){
                           data1 = [parseInt(data[i].rate_date), parseInt(data[i].rate)];
                           tmp.push(data1);
                        }
                        console.log(tmp)
                        
               
                         Highcharts.chart('container', {
                                 chart: {
                                     zoomType: 'x'
                                 },
                                 title: {
                                     text: ''
                                 },
                                 subtitle: {
                                     text: document.ontouchstart === undefined ?
                                         '3개월 환율 동향' : 'Pinch the chart to zoom in'
                                 },
                                 xAxis: {
                                     type: 'datetime'
                                 },
                                 yAxis: {
                                     title: {
                                         text: 'Exchange rate'
                                     }
                                 },
                                 legend: {
                                     enabled: false
                                 },
                                 plotOptions: {
                                     area: {
                                         fillColor: {
                                             linearGradient: {
                                                 x1: 0,
                                                 y1: 0,
                                                 x2: 0,
                                                 y2: 2
                                             },
                                             stops: [
                                                 [0, Highcharts.getOptions().colors[7]],
                                                 [1, Highcharts.color(Highcharts.getOptions().colors[0]).setOpacity(0).get('rgba')]
                                             ]
                                         },
                                         marker: {
                                             radius: 2
                                         },
                                         lineWidth: 1,
                                         states: {
                                             hover: {
                                                 lineWidth: 1
                                             }
                                         },
                                         threshold: null
                                     }
                                 },
        
                                 series: [{
                                     type: 'area',
                                     name: 'USD to EUR',
                                     data: tmp
                                 }]
                             });
                     },
                     error: function(){
                        alert('실패');
                     }
                  })
            });
         
        //option에 따라서(주피터에서 이미 120으로 설정해서 6개월분을 가지고 옴)
        $(document).ready(function(){
             $("#sel_date").change(function(){ // 체인지 이벤트
                    ; // 현재 변화된 객체의 value를 가져 올 수 있음.
                    
             $('#container').empty();
             $.ajax({
                 url: '${pageContext.request.contextPath}/ex_rate',
                 method: 'get',
                 success: function(data){
        //             alert('성공');
                    console.log(data);
                    
                    tmp = [];
                    for(let i = 0 ; i < data.length; i++){
                       data1 = [parseInt(data[i].rate_date), parseInt(data[i].rate)];
                       tmp.push(data1);
                    }
                    console.log(tmp)
                    
           
                     Highcharts.chart('container', {
                             chart: {
                                 zoomType: 'x'
                             },
                             title: {
                                 text: ''
                             },
                             subtitle: {
                                 text: document.ontouchstart === undefined ?
                                     '6개월 환율 동향' : 'Pinch the chart to zoom in'
                             },
                             xAxis: {
                                 type: 'datetime'
                             },
                             yAxis: {
                                 title: {
                                     text: 'Exchange rate'
                                 }
                             },
                             legend: {
                                 enabled: false
                             },
                             plotOptions: {
                                 area: {
                                     fillColor: {
                                         linearGradient: {
                                             x1: 0,
                                             y1: 0,
                                             x2: 0,
                                             y2: 2
                                         },
                                         stops: [
                                             [0, Highcharts.getOptions().colors[7]],
                                             [1, Highcharts.color(Highcharts.getOptions().colors[0]).setOpacity(0).get('rgba')]
                                         ]
                                     },
                                     marker: {
                                         radius: 2
                                     },
                                     lineWidth: 1,
                                     states: {
                                         hover: {
                                             lineWidth: 1
                                         }
                                     },
                                     threshold: null
                                 }
                             },
        
                             series: [{
                                 type: 'area',
                                 name: 'USD to EUR',
                                 data: tmp
                             }]
                         });
                 },
                 error: function(){
                    alert('실패');
                 }
              })
              
           })
        });
              
          
        </script>
        

</body>
</html>