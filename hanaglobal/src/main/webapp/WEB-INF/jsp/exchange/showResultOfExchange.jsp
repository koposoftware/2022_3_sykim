<%@page import="org.apache.tomcat.util.json.JSONParser"%>
<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" />
<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

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

</head>
<script
	src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>

</head>
<style>
.btn3 {
  color: #fff;
  border-radius: 2px;
  padding: 8px 25px 8px 25px;
  white-space: nowrap;
  transition: 0.3s;
  font-size: 14px;
  display: inline-block;
  background-color: rgb(64, 128, 128);
  border-radius: 4px;
  border:none;
  
}
.table-striped>tbody>tr:nth-of-type(odd)>* { -
	-bs-table-accent-bg: #fff;
	color: var(- -bs-table-striped-color);
	background-color: #fff !important;
}
/* Style the tab */
.tab {
	overflow: hidden;
	border: 1px solid #ccc;
	background-color: #f1f1f1;
}

/* Style the buttons that are used to open the tab content */
.tab button {
	background-color: inherit;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	transition: 0.3s;
}

/* Change background color of buttons on hover */
.tab button:hover {
	background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
	background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
	display: none;
	padding: 6px 12px;
	border: 1px solid #ccc;
	border-top: none;
}

th {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 16px;
}

.table td, .table th {
	padding: 0.75rem;
	vertical-align: bottom;
	border-top: 1px solid #dee2e6;
	overflow:hidden;
	white-space:nowrap;
	text-overflow: ellipsis;
}

.table-striped>tbody>tr:nth-of-type(odd)>* { -
	-bs-table-accent-bg: rgb(255 255 255/ 5%);
	color: var(- -bs-table-striped-color);
}

@font-face {
	font-family: 'HanaB.ttf';
	src: url('/font/HanaB.ttf');
	font-weight: 400;
	font-style: normal;
}

#deviceTable_wrapper{
	overflow:hidden !important;
}
.highcharts-figure,
.highcharts-data-table table {
    min-width: 320px;
    max-width: 800px;
    margin: 1em auto;
}

.highcharts-data-table table {
    font-family: Verdana, sans-serif;
    border-collapse: collapse;
    border: 1px solid #ebebeb;
    margin: 10px auto;
    text-align: center;
    width: 100%;
    max-width: 500px;
}

.highcharts-data-table caption {
    padding: 1em 0;
    font-size: 1.2em;
    color: #555;
}

.highcharts-data-table th {
    font-weight: 600;
    padding: 0.5em;
}

.highcharts-data-table td,
.highcharts-data-table th,
.highcharts-data-table caption {
    padding: 0.5em;
}

.highcharts-data-table thead tr,
.highcharts-data-table tr:nth-child(even) {
    background: #f8f8f8;
}

.highcharts-data-table tr:hover {
    background: #f1f7ff;
}

input[type="number"] {
    min-width: 50px;
}


</style>


	<div class="container" style="margin-top: 50px; margin-left: 420px">
		<h2
			style="font-family: 'HanaB.ttf'; margin-left: 480px; margin-top: 100px; display: inline-block">
			환전내역조회</h2>


		
		<table class="table table-striped dataTable mt-0" id="deviceTable" style="font-size:16px; overflow:hidden !important;border-top:5px solid #adb5bd;">
            
			<thead class="" style="background-color: #e0dcdc">
			
				<tr>

					<th
						style="width: 6%; background-color: #e8e8e8; border-top: 1px solid;font-size:13px">통화
					</th>
					<th
						style="width: 3%; background-color: #e8e8e8; border-top: 1px solid;font-size:13px">수량</th>
					<th
						style="width: 17%; background-color: #e8e8e8; border-top: 1px solid;font-size:13px">현찰
						사실 때 환율</th>

				
					<th
						style="width: 13%; background-color: #e8e8e8; border-top: 1px solid;font-size:13px">총우대율(%)</th>
					&nbsp;
					<th
						style="width: 24%; background-color: #e8e8e8; border-top: 1px solid;font-size:13px">통화당우대금액(원)</th>&nbsp;
					<th
						style="width: 10%; background-color: #e8e8e8; border-top: 1px solid;font-size:13px">환전금액(원)</th>
					<th
						style="width: 10%; background-color: #e8e8e8; border-top: 1px solid;font-size:13px">수령지점</th>
					<th
						style="width: 10%; background-color: #e8e8e8; border-top: 1px solid;font-size:13px">수령날짜</th>


				</tr>
			</thead>

			</tr>

			</thead>

			<tbody>
			</tbody>

		</table>


	</div>
	<div align="center" style="margin-left: 300px;margin-bottom:-150px">
		<button type="button" class="btn3 btn-secondary"
			data-bs-toggle="modal" data-bs-target="#exampleModal" style="margin-right:5px" onclick="displayChart();">
			차트보기</button>
		<button class="btn3 btn-primary py-2" type="button" id="AccountList"
			onclick="AccountList()" style="margin-right: 5px">계좌 조회</button>
		<button class="btn3 btn-primary py-2" type="button" id="Remittance"
			onclick="nextStep2()">해외 송금</button>
	</div>


	<!-- 차트 모달 -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content" style="width: 700px;height:600px;align-items:center;background-color: aliceblue;">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">
						<div class="basicfont">최근 3년간 환전 현황</div>
					</h5>
					<button id="closeModal" type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close" style="margin-left:100px;display:none;" ></button>
				</div>

				<div class="modal-body">
		
                     <div class="chart-container" style="position: relative; height:200px; width:600px">
					
					<canvas id="pieChartCanvas" ></canvas>
                       <div style="margin-left:30px;margin-top:-150px;font-size:13px;font-family: 'HanaB.ttf';">
                        <figure class="highcharts-figure">
    						<div id="container"></div>

						</figure></div></div>
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn3 btn-secondary"
						data-bs-dismiss="modal">취소</button>
					<button type="button" class="btn3 btn-secondary"
						onclick="closeModal()">확인</button>
				</div>
			</div>
		</div>
		</div>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>		
		
<script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
	<script>



		function AccountList(){
			   location.href = "${ pageContext.request.contextPath}/accountrem"
			} 
			
			
		function nextStep(){
			location.href = "${ pageContext.request.contextPath}/exchange/ResultOfExchange"
		} 
		function nextStep2(){
			location.href = "${ pageContext.request.contextPath}/remittance"
		}
		
		function openCity(evt, cityName) {
			  // Declare all variables
			  var i, tabcontent, tablinks;
		
			  // Get all elements with class="tabcontent" and hide them
			  tabcontent = document.getElementsByClassName("tabcontent");
			  for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			  }
		
			  // Get all elements with class="tablinks" and remove the class "active"
			  tablinks = document.getElementsByClassName("tablinks");
			  for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(" active", "");
			  }
		
			  // Show the current tab, and add an "active" class to the button that opened the tab
			  document.getElementById(cityName).style.display = "block";
			  evt.currentTarget.className += " active";
			}
		</script>
		
		<body style="background-color: #f7ffff">
			<header
				style="border-bottom: 2px solid rgb(64, 128, 128); background: #fff;"
				class="header fixed-top">
				<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"></jsp:include>
				<jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>
				<link href="/css/style.css" rel="stylesheet">
			</header>
		
			<script>
			$(document).ready(function() {
				$("#deviceTable").DataTable({
					"pageLength": 10,
					ajax:{
						url:"${pageContext.request.contextPath}/showtranshistory",
						type:"GET",
						dataSrc :''
					},
					columns:[
		//             	{targets: 0, data:"NO"},
						{targets: 0, data:"CURRENCY","width":"400px"},
						{targets: 1, data:"TOTALNUMBER","width":"150px"},
						{targets: 2, data:"CASHBUYRATE","width":"280px"},
		//             	{targets: , data:"PRIMERATE"},
						{targets: 3, data:"APPLICABLERATE","width":"230px"},
						{targets: 4, data:"PRIMEEXCHANGEVALUE","width":"280px"},
						{targets: 5, data:"FINALAMOUNT"},
						{targets: 6, data:"PLACE"},
						{targets: 7, data:"TRANS_DATE"}
					],
					"order": [[7, 'desc']],//order column in descending order.
					"columnDefs": [
						{ "type": "date", "targets": [1] }//date column formatted like "03/23/2018 10:25:13 AM".
					],
							"bFilter": false,
							"bInfo": false
							
		
				});
				
			});
		
			
		</script>
		
function closeModal(){
$('#closeModal').trigger('click');
}
 window.onload = function () {
   
    pieChartDraw();
}
 
 window.onload = function () {
	    let data = [];
// 	    let labels = [];
	 <c:forEach items="${ chartCountry }" var="chartCountry" varStatus="loop">
	    data.push(${chartCountry['COUNT(CURRENCY)']});
// 	  	labels.push(${chartCountry['CURRENCY']});
	 </c:forEach>
 };
  </script>
  <script>
  	function displayChart(){
  		let chartData = [];
  		let chartLabel = [];
  		let chartBigDataArray = [];
  		 <c:forEach items="${ chartCountry }" var="chartCountry" varStatus="loop">
 	    		chartData.push(${chartCountry['COUNT(CURRENCY)']});
 	    		chartLabel.push('${chartCountry['CURRENCY']}');
 		</c:forEach>
 		
 		for(let i=0;i<chartData.length;i++){
 			let chartObject = {};
 			chartObject.name = chartLabel[i];
 			chartObject.y = chartData[i];
 			chartBigDataArray.push(chartObject);
 		}
 		

 		
		return new Promise((resolve,reject)=>{
			resolve("성공");
		}).then(res=>{				
			Highcharts.chart('container', {
			    chart: {
			        plotBackgroundColor: null,
			        plotBorderWidth: null,
			        plotShadow: false,
			        type: 'pie'
			    },
			    title: {
			        text: ''
			    },
			    tooltip: {
			        pointFormat: '{series.name}: <b>{point.percentage:.1f}</b>'
			    },
			    accessibility: {
			        point: {
			            valueSuffix: ''
			        }
			    },
			    plotOptions: {
			        pie: {
			            allowPointSelect: true,
			            cursor: 'pointer',
			            dataLabels: {
			                enabled: true,
			                format: '<b>{point.name}</b>: {point.percentage:.1f} %'
			            }
			        }
			    },
			    series: [{
			        name: 'currency Name',
			        colorByPoint: true,
			        data:chartBigDataArray 
			    }]
			});
		})
	}

  </script> 
	
</body>
</html>