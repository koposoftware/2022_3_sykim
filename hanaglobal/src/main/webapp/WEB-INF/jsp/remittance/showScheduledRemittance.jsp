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
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css"/> 
  <!-- jquery -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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


<header style="border-bottom: 2px solid rgb(64, 128, 128); background: #fff;" class="header fixed-top">
	<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>
   <link href="/css/style.css" rel="stylesheet">
</header>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
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
.table td, .table th {
	padding: 0.75rem;
	vertical-align: bottom;
	border-top: 1px solid #dee2e6;
	overflow:hidden;
	white-space:nowrap;
	text-overflow: ellipsis;
}

</style>

<body>
	<!-- 잔액 -->
	<div class="container" style="margin-left: 390px; margin-top: 50px;">

		<h2 style="font-family: 'HanaB.ttf'; margin-left: 470px; margin-top:100px; display:inline-block">예약송금 거래내역</h2>
	


<!-- test -->

<table class="table dataTable mt-0" id="deviceTable" >

				<thead class="" style="background-color:#5d8896;color:#fff">
					<tr> 
						
										<th style="width: 13%;font-size:13px">보내는 사람 </th> &nbsp;	
										<th style="width: 10%;font-size:13px">보내는 사람  계좌번호</th> &nbsp;
										<th style="width: 13%;font-size:13px">받는사람 </th> &nbsp;
										<th style="width: 10%;font-size:13px">받는 사람  계좌번호</th> &nbsp;
										<th style="width: 10%;font-size:13px">통화</th> &nbsp;
										<th style="width: 10%;font-size:13px">거래금액(원)</th> &nbsp;
		
										<th style="width: 10%;font-size:13px">신청일</th> &nbsp;
										<th style="width: 10%;font-size:13px">예약날짜</th> &nbsp;
										<th style="width: 7%;font-size:13px">상태</th> &nbsp;
										
									
					</tr>
				</thead>
				
				<tbody>
                </tbody>
                 
			</table>


<!-- Bootstrap core JS-->

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
<script>
    $(document).ready(function() {
        $("#deviceTable").DataTable({
            "pageLength": 10,
            ajax:{
            	url:"${pageContext.request.contextPath}/showscheduledremtrans",
            	type:"GET",
            	dataSrc :''
            },
            columns:[
            	
            	{targets: 1, data:"SENDER_NAME"},
            	{targets: 2, data:"WITHDRAWAL_ACCOUNTNO", "width":"250px"},
            	{targets: 3, data:"RECEIVED_NAME"},
            	{targets: 4, data:"DEPOSIT_ACCOUNTNO","width":"250px"},
            	{targets: 5, data:"CURRENCY"},
            	{targets: 6, data:"TRANS_AMOUNT","defaultContent": "&nbsp;&nbsp;-"},
            	{targets: 7, data:"CURRENTDATE"},
            	{targets: 8, data:"TARGETEDDATE"},
            	{targets: 9, data:"STATUS"}
            	
            ],
            "bFilter": false,
            "bInfo": false,
            "order": [[1, 'desc']],//order column in descending order.
            "columnDefs": [
                { "type": "date", "targets": [1] }//date column formatted like "03/23/2018 10:25:13 AM".
            ], 
        });
        
    });    
</script>

</html>		