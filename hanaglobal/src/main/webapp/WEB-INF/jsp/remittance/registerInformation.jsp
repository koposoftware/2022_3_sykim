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
	align-itmes:center;
    font-family: "돋움", sans-serif;
    color: black;
	border-collapse: collapse;
	color: #black;
}
.table td, .table th {
    padding: 0.75rem;
    vertical-align: middle;
    border-top: 1px solid #dee2e6;
}
</style>
	
<body>
		<div class="container" style="margin-left: 300px; margin-top: 50px;max-width: 1200px;">
		<h2 style="margin-left: 570px; margin-top:100px; display:inline-block;font-family: 'HanaB.ttf'">즐겨찾기 등록</h2>
		<br>

		<form method="post" action="/resultOfRegister" enctype=""
			style="margin-top: 50px;margin-left:130px">
			<table class="table" style="width:1500px">
				<h5>보내는 분 정보</h5>
				<tr>
				<th style="width: 270px; background-color: #f2f6f7">영문성명</th>
				<td><input autocomplete="off" type="text" class="form-control" name="engName"
							id=""></td>
				</tr>
				
				<tr>
				<th style="width: 270px; background-color: #f2f6f7">송금구분</th>
				<td><input type="radio" name="overseas" value="해외송금">
						해외송금 &nbsp;&nbsp;
					<input type="radio" name="domestic" value="국내송금">
						국내송금 <br>	</td>
				</tr>
				
				<tr>
				<th style="width: 270px; background-color: #f2f6f7">송금사유</th>
				<td> 
				     
				    <input type="radio" name="under$5000" value="미화 5천불 상당액 이하">
						미화 5천불 상당액 이하 증빙서류 미제출 송금(구.증여성송금) <br>
						<input type="radio" name="over$5000" value="미화 5천불 상당액 초과">미화 5천불
						상당액 초과 증빙서류 미제출 송금(구.증여성송금) <br>
					<input type="radio" name="expenses" value="유학경비 송금">해외유학생의 유학경비 송금 <Br>
					<input type="radio" name="expenses2" value="해외체재자의 해외 체재비 송금">해외체재자의 해외 체재비 송금	
						 </td>
				</tr>
				
				<tr>
				<th style="width: 270px; background-color: #f2f6f7">핸드폰번호</th>
				<td><input autocomplete="off" type="text" class="form-control" name="phone"
							id=""></td>
				</tr>
				
				<tr>
				<th style="width: 270px; background-color: #f2f6f7">이메일주소</th>
				<td><input autocomplete="off" type="text" class="form-control" name="email"
							id=""></td>
				</tr>
				
				<tr>
				<th style="width: 270px; background-color: #f2f6f7">영문주소</th>
				<td><input autocomplete="off" type="text" class="form-control" name="engAddr"
							id=""></td>
				</tr>
				</table>
				
				<!-- 받는 분  -->
					<table class="table ">
				<h5>받는 분 정보
					<tr>
						<th style="width: 270px; background-color: #f2f6f7">영문성명</th>
						<td><input autocomplete="off" type="text" class="form-control" name="receivedName"
							></td>
					</tr>


				
                    <tr>
					<th style="width: 270px; background-color: #f2f6f7">전화번호</th>
					<td><input autocomplete="off"  type="text" class="form-control" name="receivedPhone"
							id=""></td>
					</tr>

					<tr>
						<th style="width: 270px; background-color: #f2f6f7">이메일</th>
						<td><input autocomplete="off" type="text" class="form-control"
							name="receivedEmail" name="receivedEmail"></td>
					</tr>
					
					
				
				  
				    
					
					
					<tr>
					<th style="width: 270px; background-color: #f2f6f7">영문주소</th>
					<td><input autocomplete="off" type="text" class="form-control" name="receivedaddr1"
							id=""></td>
					</tr>
					
					<tr>
					<th style="width: 270px; background-color: #f2f6f7">영문상세주소</th>
					<td><input autocomplete="off" type="text" class="form-control" name="receivedaddr2"
							id=""></td>
					</tr>
					
					
					
					<tr>
						<th style="width: 270px; background-color: #f2f6f7">통화선택</th>
						<td>
							<select name="chooseCurrency" id="" onchange="" class="form-control">
                           <option value="curr" >통화를 선택하세요</option>
                                          <option value="미국(USD)">미국달러(USD)</option>
                                          <option value="일본엔(JPY)">일본엔(JPY)</option>
                                          <option value="유럽유로(EUR)">유럽유로(EUR)</option>
                                          <option value="중국위안(CNY)">중국위안(CNY)</option>
                                          <option value="호주달러(AUD)">호주달러(AUD)</option>
                                          <option value="홍콩달러(HKD)">홍콩달러(HKD)</option>
                                         <option value="캐나다달러(CAD">캐나다달러(CAD)</option>
                                          <option value="영국파운드(GBP)">영국파운드(GBP)</option>
                                          <option value="스위스프랑(CHF)">스위스프랑(CHF)</option>
  
                     		</select>
                     	</td>
					</tr>
					
					<tr>
						<th style="width: 270px; background-color: #f2f6f7"">입금은행</th>
						<td><input autocomplete="off" type="text" class="form-control"
							name="bankCode"></td>
					</tr>
					
					<tr>
						<th style="width: 270px; background-color: #f2f6f7"">은행코드</th>
						<td><input autocomplete="off" type="text" class="form-control"
							name="swiftCode"></td>
					</tr>
					
					<tr>
					<th style="width: 270px; background-color: #f2f6f7"">입금계좌번호</th>
					<td><input autocomplete="off" type="text" class="form-control" name="receivedaccoutNo"
							></td>
				    </tr>
					
				</table>
						<div align="center"><input class="btn btn-info registerForm-chargeAccNo-btn" 
				type="submit" onclick="btn()" id="bloodModal" value="즐겨찾기등록"></div>		
			


		</form>
		</div>
				






</body>
</html>