<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> --%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<!-- 글씨체 -->
<!-- <link href="https://webfontworld.github.io/amore/AritaBuri.css" rel="stylesheet"> -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>


<link
	href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
	rel="stylesheet">

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">

<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
	crossorigin="anonymous"></script>
</head>

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

<div class="container" style="margin-left: 430px; margin-top: 50px;max-width:1050px">

		<h2 style="font-family: 'HanaB.ttf'; margin-left: 500px; margin-top:100px; display:inline-block">상세조회</h2>


		<i class="bi bi-circle"></i>

		<form method="post" action="/resultOfRemittance" enctype="" style="margin-top: 50px">
			<table class="table ">
			
				<tr>
					<h5>보내는 분 정보</h5>
					<th style="width: 270px; background-color: #f2f6f7">영문성명</th>
					<td>${ loginVO.engName}</td>
				</tr>
		
				<tr>
					<th style="width: 270px; background-color: #f2f6f7">송금사유</th>
					<td>${transactionList.under$5000}
					    ${transactionList.over$5000}
					    ${transactionList.expenses} </td>
					
				</tr>
				<tr>
					<th style="width: 270px; background-color: #f2f6f7">연락가능한 번호</th>
					<td>${transactionList.phone}</td>

				</tr>
				<tr>
					<th style="width: 270px; background-color: #f2f6f7">이메일주소</th>
					<td>${transactionList.email}</td>
				</tr>



				<tr>
					<th style="width: 270px; background-color: #f2f6f7">송금인주소</th>
					<td>${transactionList.engAddr}</td>
				</tr>

			</table>
			<br>


			



			 <table class="table ">
<!-- 				<tr> -->
<!-- 					출금 및 송금금액 정보 -->
<!-- 					<th style="width: 270px; background-color: #f2f6f7">송금 금액</th> -->
<%-- 					<td>${transactionList.amount}</td> --%>
<!-- 				</tr> -->
				
			
						
				<tr>
					<th style="background-color: #f2f6f7">통화구분</th>
					<td>${transactionList.chooseCurrency} </td>
				</tr>
				<tr>
					<th style="background-color: #f2f6f7">필요한 원화금액</th>
<%-- 					<td>${transactionList.finalamount}원 </td> --%>
					<td><fmt:formatNumber value="${transactionList.finalamount}" pattern="#,###"/>원</td>
				</tr>
				<br>
					<tr><h5>출금 및 송금금액 정보</h5>
					<th style=" width: 270px; background-color: #f2f6f7">원화출금계좌</th>
					<td> ${transactionList.chooseAccount}</td></tr>		
							<br>
							
                 <tr> 
					<th style=" width: 270px; background-color: #f2f6f7">거래외국환은행</th> 
					<td> ${transactionList.location}</td></tr>		
							
<!-- 				<tr> -->
<!-- 					<th style="background-color: #f2f6f7">송금수수료</th> -->
<%-- 					<td>${transactionList.remCharge} </td> --%>
<!-- 				</tr> -->
			
<!-- 				<tr> -->
<!-- 					<th style="background-color: #f2f6f7">전신료</th> -->
<%-- 					<td>${transactionList.cableCharges} </td> --%>
<!-- 				</tr> -->
				


				

			</table>
            
            <br> 
            <br>
			<!-- 받는 분 정보 -->
			<table class="table ">
				
				<tr><h5>받는 분 정보</h5>
				<th style="width: 270px; background-color: #f2f6f7">받는분</th>
				<td>${transactionList.receivedName}</td>
				</tr>

				<tr>
					<th style="width: 270px; background-color: #f2f6f7">받는분주소</th>
					<td>${transactionList.receivedAddress}</td>
				</tr>
				<tr>
					<th style="width: 270px; background-color: #f2f6f7">입금은행/지점주소</th>
					<td>${transactionList.bankCode}</td>
				</tr>

				<tr>
					<th style="width: 270px; background-color: #f2f6f7"">국가별 은행코드</th>
						<td>${transactionList.swiftCode}</td>
				</tr>
					
				<tr>
					<th style="width: 270px; background-color: #f2f6f7">입금계좌번호</th>
					<td>${transactionList.receivedaccoutNo}</td>
				</tr>


				<tr>
					<th style="width: 270px; background-color: #f2f6f7">송금받는분 이메일</th>
					<td>${transactionList.receivedEmail}</td>
				</tr>
				
			</table>
			</form>			


		



	


				
</body>
</html>