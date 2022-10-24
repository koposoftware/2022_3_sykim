<%@page import="org.apache.tomcat.util.json.JSONParser"%>
<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">  
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet">
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->


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
<header style="border-bottom: 2px solid rgb(64, 128, 128); background: #fff;" class="header fixed-top">
	<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>
   <link href="/css/style.css" rel="stylesheet">
</header>
<style>
@font-face {
    font-family: 'HanaB.ttf';
    src: url('/font/HanaB.ttf');
    font-weight: 400;
    font-style: normal;
}
table, th, td {
	font-size: 15px;
    font-family: "돋움", sans-serif;!important;
    color: black;
	border-collapse: collapse;
	color: #black;
}
</style>	
<body>
	<div class="container" style="margin-left: 430px; margin-top: 50px;max-width: 1050px;">
	<h2 style="font-family: 'HanaB.ttf'; margin-left: 450px; margin-top:100px; display:inline-block"> 즐겨찾기상세</h2>
		<br>
	<br>         
	
	
	           <table class="table ">
				<h5>보내는 분 정보</h5>
				<tr>
				<th style="width: 270px; background-color: #f2f6f7">영문성명</th>
				<td>${RegisterList.engName}</td>
				</tr>
				
				<tr>
				<th style="width: 270px; background-color: #f2f6f7">송금구분</th>
				<td>${RegisterList.overseas}
				    ${RegisterList.domestic}</td>
				</tr>
				
				<tr>
				<th style="width: 270px; background-color: #f2f6f7">송금사유</th>
				<td>
				${RegisterList.under$5000}
			    ${RegisterList.over$5000}
				${RegisterList.expenses}
				${RegisterList.expenses2}
				</td>
				</tr>
				
				<tr>
				<th style="width: 270px; background-color: #f2f6f7">핸드폰번호</th>
				<td>${RegisterList.phone}</td>
				</tr>
				
				<tr>
				<th style="width: 270px; background-color: #f2f6f7">이메일주소</th>
				<td>${RegisterList.email}</td>
				</tr>
				
				<tr>
				<th style="width: 270px; background-color: #f2f6f7">영문주소</th>
				<td>${RegisterList.engAddr}</td>
				</tr>
				</table>
	
	
	
	          <!-- 받는분 -->
				<table class="table ">
				<tr><h5>받는 분 정보</h5>
				<th style="width: 270px; background-color: #f2f6f7">영문성명</th>
				<td>${RegisterList.receivedName}</td>
				</tr>
                <tr>
					<th style="width: 270px; background-color: #f2f6f7">전화번호</th>
					<td>${RegisterList.receivedPhone}</td>
				</tr>
				<tr>
					<th style="width: 270px; background-color: #f2f6f7">이메일</th>
					<td>${RegisterList.receivedEmail}</td>
				</tr>
				
				
				<tr>
					<th style="width: 270px; background-color: #f2f6f7">영문주소</th>
					<td>${RegisterList.receivedaddr1}
							</td>
					</tr>
				
				<tr>
					<th style="width: 270px; background-color: #f2f6f7">영문상세주소</th>
					<td>${RegisterList.receivedaddr2}</td>
					</tr>
               
           
			
				
				<tr>
					<th style="width: 270px; background-color: #f2f6f7">통화선택</th>
					<td>${RegisterList.chooseCurrency}  </td>
			   </tr>
				
				<tr>
					<th style="width: 270px; background-color: #f2f6f7">입금은행</th>
					<td>${RegisterList.bankCode}</td>
				</tr>
				
				
				<tr>
					<th style="width: 270px; background-color: #f2f6f7"">입금계좌번호</th>
					<td>${RegisterList.receivedaccoutNo}</td>
				</tr>


				
				
			
				
			</table>
							
			</div>
			<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

</body>
</html>