<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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
<!-- sweet alert -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
	crossorigin="anonymous"></script>
</head>
<style>
@font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
}

@font-face {
	font-family: 'HanaB.ttf';
	src: url('/font/HanaB.ttf');
	font-weight: 400;
	font-style: normal;
}

@media (min-width: 1200px){
.container {
    max-width: 1200px; !important;
}
}
</style>



<script>
 function selectList(){
        $.ajax({
           url : '${pageContext.request.contextPath}/selectRegister',
           method : 'get',
           data :  {
           id :  '${loginVO.id}',
           },
           success : displaySelectetList
           ,error : function(){
           alert('실패');
        },
        }) 
        console.log('하이2');
  }
 

 function displaySelectetList(result){
	 let list = result
     let str =''
     console.log(result);
	 $('#receivedName').text(result[0].RECEIVEDNAME)
	 $('#receivedPhone').text(result[0].RECEIVEDPHONE)
	 $('#receivedAddress').text(result[0].RECEIVEDADDR2)
	 $('#receivedAccountNo').text(result[0].RECEIVEDACCOUTNO)
	 $('#phone').text(result[0].PHONE)
	 $('#email').text(result[0].EMAIL)
	 $('#engAddr').text(result[0].ENGADDR)
	 $('#bankCode').text(result[0].BANKCODE)
	 $('#swiftCode').text(result[0].SWIFTCODE)
	 $('#receivedEmail').text(result[0].RECEIVEDEMAIL)
	 $('#choosecurrency').text(result[0].CHOOSECURRENCY)
	
     
	 //선택2
	 $('#receivedName2').text(result[1].RECEIVEDNAME)
	 $('#receivedPhone2').text(result[1].RECEIVEDPHONE)
	 $('#receivedAddress2').text(result[1].RECEIVEDADDR2)
	 $('#receivedAccountNo2').text(result[1].RECEIVEDACCOUTNO)
   }



function chooseSelectedList(){
	  
	   Swal.fire({
 	   title: '선택하시겠습니까',})
	   let input1=$('#receivedName').text()
	   let input2=$('#receivedPhone').text()
	   let input3=$('#receivedAddress').text()
	   let input4=$('#receivedAccountNo').text()
	   let input5=$('#phone').text()
	   let input6=$('#email').text()
	   let input7=$('#engAddr').text()
	   let input8=$('#bankCode').text()
	   let input9=$('#swiftCode').text()
	   let input10=$('#receivedEmail').text()
	   let input11=$('#choosecurrency').text()

	
	   $('#receivedName1').val(input1); 
	   $('#receivedPhone1').val(input2); 
	   $('#receivedAddress1').val(input3); 
	   $('#receivedAccountNo1').val(input4); 
	   $('#phone1').val(input5);
	   $('#email1').val(input6);
	   $('#engAddr1').val(input7);
	   $('#bankCode1').val(input8);
	   $('#swiftCode1').val(input9);
	   $('#receivedEmail1').val(input10);
	   $('#choosecurrency1').val(input11);
	
//         $('#exampleModal').css('display','block');
	   $("#show1").empty();
       $("#show1").append('<img src="/img/check.png" style="width:50px">');
       
     
}



//선택하기2 버튼을 클릭했을 때 
function chooseSelectedList2(){
	alert('선택하기성공2');
	$('#show2').css('display','none');
	
}



function nextStep(){
	$('#receivedName').css('display','block');
	$('#receivedAddress').css('display','block');
	$('#receivedPhone').css('display','block');
	$('#receivedaccoutNo').css('display','block');
	$('#bankCode').css('display','block');
	$('#swiftCode').css('display','block');
	$('#receivedEmail').css('display','block');
	$('#exampleModal').css('display','block');
}




function readURL(input) {
    console.log("들어오나?");
    document.getElementById('preview').style.display="block";
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function(e) {
        document.getElementById('preview').src = e.target.result;
      };
      reader.readAsDataURL(input.files[0]);
    } else {
      document.getElementById('preview').src = "";
    }
} 


	

function calc(val){
	let commission ='';
	let str = '';
	
	
	$.ajax({ 
		url		:	'${pageContext.request.contextPath}/remittance/getCommsion'	,
		type	:	'get',
		success	:	 function(data){
		    
			$('#commission').empty();
			console.log(data)
			let list = data;
			$('#show').fadeIn(500);
			$(list).each(function(){
				commission = list[0].TRANSFERSENDRATE;

// 				console.log("들어오나2"+ list[0].TRANSFERSENDRATE);
				str += '<div style="bold">' + list[0].TRANSFERSENDRATE +'</div>';		
			})
			$('#commission').append(str);
			console.log("commission4:" + commission);
			let amount = parseInt(val);
			let interest = amount * commission + 8000 ;
		    if(val == ""){
		        document.getElementById('result').value = 0;
		    }else{
		        document.getElementById('result').value = interest;
		    }
		},
		error	:	function(){
			alert('실패')
		}
		
	})
	

  
}







//입력한 숫자 
//    var comm = $(#commission);
//    var selectDiv = document.querySelector("#commission");
    //(송금 보낼 때 수수료 – 매매기준율) * (1-우대율) + 매매기준율 + 5000 (전신료) + 3000(미화 5천불 이하) 또는 5000 (5천불 초과)
//    var interest = amount * (list[0].TRANSFERSENDRATE)  + 8000;
//test 자바스크립트로 수수료 계산하기




</script>

<style>
@font-face {
    font-family: 'HanaB.ttf';
    src: url('/font/HanaB.ttf');
    font-weight: 400;
    font-style: normal;
}

.check {
	margin: 27px 0 0;
	font-size: 12px;
	font-family: '돋움', doutm, '굴림', gulim, sans-serif;
	padding-left: 9px;
	line-height: 21px;
}

th {
	background-color: #f2f6f7;
}

.swal2-styled.swal2-confirm {
    border: 0;
    border-radius: 0.25em;
    background: initial;
    background-color: #0c8b8b;
    color: #fff;
    font-size: 1em;
}
.card-body {
    -webkit-box-flex: 1;
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    padding: 0.25rem;
}

@font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
}

#table, th, td {
	font-size: 12px;
    font-family: "돋움", sans-serif;!important;
    color: black;
    
	border-collapse: collapse;
	color: #black;
}
table, th, td {
	font-size: 15px;
	align-itmes:center;
    font-family: "돋움", sans-serif;
    color: black;
	border-collapse: collapse;
	color: #black;
}

.swal2-styled.swal2-confirm {
	border: 0;
	border-radius: 0.25em;
	background: initial;
	background-color: #0c8b8b;
	color: #fff;
	font-size: 1em;
}
.swal2-container.swal2-center>.swal2-popup {
    grid-column: 2;
    grid-row: 2;
    align-self: center;
    justify-self: center;
    margin-left: 230px;
    margin-top: -250px;
} 
</style>
<body>
<header style="border-bottom: 2px solid rgb(64, 128, 128); background: #fff;" class="header fixed-top">
	<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>
</header>



	<div class="modal fade" id="exampleModal" tabindex="-1"
      aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content" style="border: 0.5rem solid #0c8b8b;margin-left:100px">
            <div class="modal-header" style="background-color:#ffffff">
            <h5 class="modal-title" id="exampleModalLabel" >
            <div class="basicfont" style="color:#00b19a">즐겨찾기 리스트</div>
            </h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal"
            aria-label="Close"></button>
            </div>
            
            <div class="modal-body" style="height:500px;text-align:center;background-color:#ffffff">
           <h2 style="font-family: 'HanaB.ttf';"><img src="/img/star.gif" style="width:50px">즐겨찾기 리스트<img src="/img/star.gif" style="width:50px"></h2>
          <!-- 리스트 보여주기 -->
           <div class="d-flex justify-content-center" style="margin-top:50px">
           <div class="card col-mb-6"  style="width: 18rem;height:11rem">
  			<div class="card-body ">
    		<h5 class="card-title" style="font-size:20px;font-family:Pretendard-Regular"></h5>
    		<p class="card-text"> 
    		
    		<table id="table1">
    			<tr style="border-bottom:1px solid">
    		<th style="width:50%;height:30px;font-size:12px">받는 분 성함</th>
    		
    		<th style="width:50%;height:30px;font-size:12px">계좌</th>
    		</tr>
    		
    		<tbody>
    		<td id="receivedName"></td>
    	
    		<td id="receivedAccountNo"></td>
    		<input type="hidden" id="phone">
    		<input type="hidden" id="receivedAddress">
    		<input type="hidden" id="receivedPhone">
    		<input type="hidden" id="email">
    		<input type="hidden" id="engAddr">
    		<input type="hidden" id="bankCode">
    		<input type="hidden" id="swiftCode">
    		<input type="hidden" id="receivedEmail">
    		<input type="hidden" id="choosecurrency">
    		<input type="hidden" id="">
    		<input type="hidden" id="">
    		<input type="hidden" id="">
   
    		</tbody>
    		</table>
    		<div><button class="btn" style="background-color:#b5b5b5;border-radius:300px">+see more</button></div>
    		</p>
    		<div>
    		</div>
  			</div>
  			 </div>
    		<button class="btn btn-secondary" onclick="chooseSelectedList()" style="width:120px" ><div style="margin-top:1px;font-size:20px;font-family:Pretendard-Regular" id="show1">선택하기</div></a>
    		<div id="checkimg">
    		
    		</div>
    		
    		</div>
    		<div class="d-flex justify-content-center" style="margin-top:50px">
		   <div class="card col-mb-6"  style="width: 18rem;height:10rem">
  			<div class="card-body ">
    		<h5 class="card-title" style="font-size:20px;font-family:Pretendard-Regular""></h5>
    		<p class="card-text">
    		
    		<table>
    		<tr style="border-bottom:1px solid">
    		<th style="width:50%;height:30px;font-size:12px">받는 분 이름</th>
    	
    		<th style="width:50%;height:30px;font-size:12px">계좌&nbsp;</th>
    		</tr>
    		<tbody>
    		<td id="receivedName2"></td>
    		<td id="receivedPhone2"></td>
    		<td id="receivedAddress2"></td>
    		<td id="receivedAccountNo2"></td>
    	    <input type="hidden" id="">
    	    <input type="hidden" id="">
    	    <input type="hidden" id="">
    	    <input type="hidden" id="">
    	    <input type="hidden" id="">
    	    <input type="hidden" id="">
    	    <input type="hidden" id="">
    	    <input type="hidden" id="">
    	    <input type="hidden" id="">
    	    <input type="hidden" id="">
    	    <input type="hidden" id="">
    	    <input type="hidden" id="">
    	    <input type="hidden" id="">
    	    
    	    
    		</tbody>
    		</table></p>
    		<div>
    		</div>
  			</div>
		   </div>
    		<button class="btn btn-secondary" style="font-size:20px;font-family:Pretendard-Regular" onclick="chooseSelectedList2()" id="show2">선택하기</a>
		   </div>
		   </div>
  			
           
          <!-- 리스트 클릭했을때 --> 
          <div class="" onclick="displaySelectetList()">  
           
          </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary"
               data-bs-dismiss="modal">취소</button>
            <button type="button" class="btn btn-primary" style= "margin-right: 130px;"
               onclick="nextStep()" data-bs-dismiss="modal" >확인</button>
            </div>
            </div>
         </div>
      </div>
   </div>
      
    
	
	<!-- 모달 끝 -->
	
	
	 <!-- 메인 -->
	<div class="container" style="margin-left: 300px; margin-top: 50px;max-width: 1200px;">
			<div id="showRem"></div>
		<h2 style="font-family: 'HanaB.ttf'; margin-left: 550px; margin-top:100px; display:inline-block">해외송금 예약하기</h2>
         
         <button class="btn" style="margin-left:-200px;margin-top:190px;font-family: 'Noto Sans KR', sans-serif;"  id="" data-bs-toggle="modal" data-bs-target="#exampleModal" id="choosememberList" onclick="selectList()">즐겨찾기 불러오기</button><Br>

		<form method="post" action="/resultOfReserveRemittance" enctype="multipart/form-data" style="margin-top: 50px;margin-left:130px">
			<table class="table" style="width:100%">
			   <tr> 
					<th style="width: 280px; background-color: #f2f6f7">예약송금 날짜설정</th>
					<td><div class="d-flex">
					    <input type="date" id="targeteddate" name="targeteddate"
						class="form-control" aria-describedby="inputGroupSuccess1Status"
						max="2022-12-23" />
						<select name="time" id="" onchange=""
						class="form-control">
						<option value="time1">시간을 선택하세요</option>
		
						<option value="09:00">09:00~10:00</option>
						<option value="12:00">12:00~13:00</option>
						<option value="15:00">15:00~16:00</option>
						<option value="18:00">18:00~17:00</option>
						<option value="21:00">21:00~22:00</option>
						</select>
				    
						 </div>
						
						<br>
					</td>
					
				</tr>
			       
				<tr>
					<h5>보내는 분 정보</h5>
					<th style="background-color: #f2f6f7">영문성명</th>
					<td><div class="input-group">
							<input type="text" class="form-control"
								value="${ loginVO.engName }" disabled="disabled">

						</div></td>
				</tr>
		
				<tr>
					<th style="background-color: #f2f6f7;vertical-align: middle;">송금사유</th>
					<td>
<!-- 						checked="checked" -->
						
					    <input type="radio" name="under$5000" value="미화 5천불 상당액 이하">
						미화 5천불 상당액 이하 증빙서류 미제출 송금(구.증여성송금) <br>
						<input type="radio" name="over$5000" value="미화 5천불 상당액 초과">미화 5천불
						상당액 초과 증빙서류 미제출 송금(구.증여성송금) <br>
						<input type="radio" name="expenses" value="유학경비 송금" checked="checked">해외유학생의 유학경비 송금 
					    
						 
						 <textarea class="form-control text-secondary p-3" style="resize: none"
							rows="8" disabled="disabled"> 1. 순수한 증여성 송금 이외의 해외부동산 취득, 유학생경비, 재외동포 국내재산반출, 해외차입금&nbsp;상환등을 목적으로 송금하실 경우에는 외국환거래규정에 위배되므로 유의 하셔야 합니다.
&nbsp;2.해외예금(신탁)계약, 금전대차계약, 증권취득, 회원권 취득 등 자본거래를 위해 건당 미화5천불 상당액 이하로 분할 송금시, 분할된 송금액의 합계가 미화5천불 상당액을 초과하면 외국환거래규정에 따른 자본거래 신고를 하여야 하므로 영업점을 방문하셔서 사전신고 및 송금거래 하시기 바랍니다. (단, 해외부동산 취득, 해외 법인설립 및 직접투자, 해외지사설치 관련 송금은 금액과 상관없이 사전신고 사항이니 영업점 직원과 상담하시기 바랍니다) 
&nbsp;3."증빙서류 미제출 송금"은 금융사기 등 예방을 위해서 당행의 모든 채널을 통해 동일한 수취인앞으로 송금된 누계액이 미화 5만불 상당액을 초과하는 경우 인터넷/모바일 등 비대면 채널을 통한 송금이 불가합니다.<br>
&nbsp;4. "증빙서류 미제출 송금"은 당행의 모든 채널을 통하여 송금인 기준 연간 송금 누계액이 미화 5만불상당액을 초과하는 경우 인터넷/모바일 등 비대면 채널을 통한 송금이 불가하오니 영업점 창구를 통해서 송금하시기 바랍니다.
                        </textarea>
                        
						<div class="text-right">
							<input type="checkbox" id="scales" name="scales"> 
							<label class="form-check-label mt-2" for="checkReason">확인함</label></td>
				</tr>
				<tr>
					<th style="background-color: #f2f6f7">연락가능한 번호</th>
					<td><input type="text" class="form-control" name="phone1" id="phone1" val=""
							id=""></td>

				</tr>
				<tr>
					<th style="background-color: #f2f6f7">이메일주소</th>
					<td><input type="text" class="form-control" name="email1" id="email1" val="email1"
							id=""></td>
				</tr>


				<tr>
					<th style="background-color: #f2f6f7">송금인주소</th>
					<td><input type="text" class="form-control" name="engAddr1" id="engAddr1" val=""
							></td>
				</tr>

			</table>
			<br>


		



			<table class="table ">
					<h5>출금 및 송금금액 정보</h5>
					
					<tr>
					<th style="width: 270px; background-color: #f2f6f7">통화구분</th>
					<td>
						<Input name="choosecurrency1" id="choosecurrency1" onchange="" val="" class="form-control">
					</td>
					
					
					<tr>
					<th style="width: 270px; background-color: #f2f6f7;vertical-align: middle;">송금할 금액</th>
					<td class="remAmount">
							    

			               
								<div class="input-group">
									<div class="input-group-prepend">
									
										<span class="input-group-text registerForm-amount-krw-prepend" name="usd">해외 거래 금액</span>
									</div>
									
									 <input autocomplete="off" type="text" id="amount" name="amount" onkeyup="calc(this.value)"class="form-control krwAmountInput"
										placeholder="0.00" />
								</div>
								
								<div class="d-flex justify-content-end text-secondary"></div>
								<div class="text-center align-middle accType-hideAndShow">
									<span class="material-icons"><img src="/img/exarrows1.gif" style="width:30px"></span>
								</div>
								<div class="input-group accType-hideAndShow">
									<div>
										<span class="input-group-text registerForm-amount-other-prepend">환전 원화 금액</span>
									</div>
									 <input autocomplete="off" type="text" id="result" name="finalamount" class="form-control otherAmountInput"  placeholder="0.00">
								</div>
								
								
								    적용환율 :   <div id="commission"> 
								</div>
								<div id="show" style="display:none"><span> 전신료와 송금 수수료를 포함한 금액입니다</span></div>
							</td>
				</tr>
				
			
				<tr>
					<th style="background-color: #f2f6f7" >원화출금계좌</th>
					<td>
						<select name="chooseAccount" id="" onchange="" class="form-control">
                           <option value="chooseAccount" >계좌를 선택하세요</option>
				            <c:forEach items="${ allaccount }" var="account">
                           <option value="${account['ACCOUNTNO']}">${account['ACCOUNTNO']}(${ account['ACCOUNTNAME']})</option>
                           
                        </c:forEach>
                        
                     </select>
				           
					</td>
				</tr>

					<th style="background-color: #f2f6f7">원화출금계좌 비밀번호</th>
					<td><input type="password" class="form-control" name="password"></td>
				</tr>





			

			</table>


		
			<br>
			<table class="table ">
                <tr><h5> 받는 분 정보</h5>
				<th style="width: 270px; background-color: #f2f6f7">받는 분 성함</th>
				<td><input name="receivedName1" value="" id="receivedName1" onchange="" class="form-control">
                           </td>
				</tr>

				<tr>
					<th style="width: 270px; background-color: #f2f6f7">받는분주소</th>
					<td><input type="text" class="form-control"
						id="receivedAddress1" value="" name="receivedAddress1"></td>
				</tr>
				<tr>
					<th style="width: 270px; background-color: #f2f6f7">받는분핸드폰번호</th>
					<td><input type="text" class="form-control"
						id="receivedPhone1" value="" name="receivedPhone1"></td>
				</tr>
				<tr>
					<th style="width: 270px; background-color: #f2f6f7">입금은행/지점주소</th>
					<td><input name="bankCode1" value="" id="bankCode1" onchange="" class="form-control">
                         </td>


				</tr>
				<tr>
				<th style="width: 270px; background-color: #f2f6f7"">국가별 은행코드</th>
						<td><input type="text" value="" class="form-control"
						 name="swiftCode1" id="swiftCode1"></td>
				</tr>

				<tr>
					<th style="width: 270px; background-color: #f2f6f7"">입금계좌번호</th>
					<td><input name="receivedAccountNo1" id="receivedAccountNo1" value="" onchange="" class="form-control">
                          </td>
				</tr>


				<tr>
					<th style="width: 270px; background-color: #f2f6f7">송금받는분 이메일</th>
					<td><input name="receivedEmail1" id="receivedEmail1" value="" onchange="" class="form-control">
                          </td>
				</tr>
				
				<table class="table ">
				<br>

			
			   </table>

					<div align="center">
					<input class="btn btn-info " 
				type="submit" onclick="btn()" id="bloodModal" value="예약송금하기" >	</div>
			
		</table>

		</form>

        



		<div class="check mt-5 " style="margin-left:150px">                 	-송금전 확인사항 가상화폐 관련한 송금을 하거나, 이와 관련한 자금을 제3자를 대신하여 송금할 경우, 외국환거래법에 의거하여
			관계기관으로부터 제재를 받을 수 있습니다.<br> 송금수수료 :송금액이 건당 미화 5,000불 상당액 이하인 경우 3,000원 <Br>
			송금액이 건당 미화 5,000불 상당액 초과인 경우 5,000원 (단, 별도의 전신료 5,000원이 추가됩니다.<br>
			-예약이체일시 당일 이체한도내에서 1회만 이체실행되며, 잔액부족 및 이체오류 발생 시 이체가 정상적으로 처리되지 않으니 반드시 이체결과를 확인하시기 바랍니다.<br>
			-예약이체일은 최대 6개월 이내로 지정가능합니다.
	
		</div>
	</div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="/js/jquery-3.6.0.min.js"></script>
	 <script src="js/scripts.js"></script>

</body>

</html>