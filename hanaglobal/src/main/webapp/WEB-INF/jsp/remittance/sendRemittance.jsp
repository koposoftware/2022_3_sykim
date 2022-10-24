<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<!-- sweet alert -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
	crossorigin="anonymous"></script>
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

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
</head>




<style>
@font-face {
	font-family: 'HanaB.ttf';
	src: url('/font/HanaB.ttf');
	font-weight: 400;
	font-style: normal;
}
table, th, td {
	font-size: 15px;
    font-family: "돋움", sans-serif;
    color: black;
	border-collapse: collapse;
	color: #black;
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
.table td, .table th {
    padding: 0.75rem;
    vertical-align: middle;
    border-top: 1px solid #dee2e6;
}
</style>


<body>
	<header
		style="border-bottom: 2px solid rgb(64, 128, 128); background: #fff;"
		class="header fixed-top">
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>
	</header>

	<!-- #f2f6f7 -->
	<!-- 폼 -->
	<div class="container" style="margin-left: 430px; margin-top: 50px;max-width: 1080px">
	
		<div id="showRem"></div>
		<h2
			style="font-family: 'HanaB.ttf'; margin-left: 430px; margin-top: 100px; display: inline-block">해외송금
			보내기</h2>

		<!--          <button class="btn" style="margin-left:-200px;margin-top:190px" onClick="getInfo()">즐겨찾기 불러오기</button> -->
		<form method="post" action="/resultOfRemittance"
			enctype="multipart/form-data" style="margin-top: 50px">
			<table class="table ">
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
						<input type="radio"
						name="under$5000" value="미화 5천불 상당액 이하" onchange = "under()"> 미화 5천불 상당액 이하
						증빙서류 미제출 송금(구.증여성송금) <br> 
						<input type="radio"
						name="over$5000" value="미화 5천불 상당액 초과" onchange = "over()">미화 5천불 상당액 초과 증빙서류
						미제출 송금(구.증여성송금) <br> 
						<input type="radio" name="expenses"
						value="유학경비 송금" onchange = "internationalFees()">해외유학생의 유학경비 송금
						 <textarea class="form-control text-secondary p-3" id="remreason" style="display:none;">
                        </textarea>

<!-- 						<div class="text-right"> -->
<!-- 							<input type="checkbox" id="scales" name="scales"> <label -->
<!-- 								class="form-check-label mt-2" for="checkReason">확인함</label> -->
					</td>
				</tr>
				<tr>
					<th style="background-color: #f2f6f7">연락가능한 번호</th>
					<td><select type="text" class="form-control" name="phone">
							<option value="phone">보내는 분의 핸드폰 번호를 선택하세요</option>
							<c:forEach items="${registerlist}" var="registerlist">
								<option value="${registerlist['PHONE']}">${registerlist['PHONE']}</option>
							</c:forEach></td>

				</tr>
				<tr>
					<th style="background-color: #f2f6f7">이메일주소</th>
					<td><select type="text" class="form-control" name="email">
							<option value="email">보내는 분의 이메일주소를 선택하세요</option>
							<c:forEach items="${registerlist}" var="registerlist">
								<option value="${registerlist['EMAIL']}">${registerlist['EMAIL']}</option>
							</c:forEach></td>
				</tr>


				<tr>
					<th style="background-color: #f2f6f7;width:274px">송금인주소</th>
					<td><select type="text" class="form-control" name="engAddr">
							<option value="engAddr">보내는 분의 주소를 선택하세요</option>
							<c:forEach items="${registerlist}" var="registerlist">
								<option value="${registerlist['ENGADDR']}">${registerlist['ENGADDR']}</option>
							</c:forEach></td>
				</tr>

			</table>
			<br>






			<table class="table ">
				<h5>출금 및 송금금액 정보</h5>

				<tr>
					<th style="width: 270px; background-color: #f2f6f7">통화구분</th>
					<td><select name="chooseCurrency" id="" onchange=""
						class="form-control">
							<option value="curr">통화를 선택하세요</option>
							<option value="미국(USD)">미국달러(USD)</option>
							<option value="일본엔(JPY)">일본엔(JPY)</option>
							<option value="유럽유로(EUR)">유럽유로(EUR)</option>
							<option value="중국위안(CNY)">중국위안(CNY)</option>
							<option value="호주달러(AUD)">호주달러(AUD)</option>
							<option value="홍콩달러(HKD)">홍콩달러(HKD)</option>
							<option value="캐나다달러(CAD">캐나다달러(CAD)</option>
							<option value="영국파운드(GBP)">영국파운드(GBP)</option>
							<option value="스위스프랑(CHF)">스위스프랑(CHF)</option>

					</select></td>
				<tr>
					<th style="width: 270px; background-color: #f2f6f7;vertical-align: middle;">송금할 금액</th>
					<td class="remAmount">



						<div class="input-group">
							<div class="input-group-prepend">

								<span class="input-group-text" name="usd">해외 거래 금액</span>
							</div>

							<input autocomplete="off" type="text" id="amount" onkeyup="calc(this.value)"
								class="form-control krwAmountInput" placeholder="0.00" />
						</div>

						<div class="d-flex justify-content-end text-secondary"></div>
						<div class="text-center align-middle accType-hideAndShow">
							<span class="material-icons">계산</span>
						</div>
						<div class="input-group accType-hideAndShow">
							<div>
								<span class="input-group-text registerForm-amount-other-prepend">필요
									원화금액</span>
							</div>
							<input type="text" id="result" name="finalamount"
								class="form-control otherAmountInput" placeholder="0.00">
						</div> 
						<div id="initialRate" style="display:none;">적용환율 :
						<div id="commission"></div> <span> 전신료와 송금 수수료를 포함한 금액입니다</span></div>
					</td>
				</tr>


				<tr>
					<th style="background-color: #f2f6f7">원화출금계좌</th>
					<td><select name="chooseAccount" id="" onchange=""
						class="form-control">
							<option value="chooseAccount">계좌를 선택하세요</option>
							<c:forEach items="${ allaccount }" var="account">
								<option value="${account['ACCOUNTNO']}">${account['ACCOUNTNO']}(${ account['ACCOUNTNAME']})</option>

							</c:forEach>

					</select></td>
				</tr>

				<th style="background-color: #f2f6f7">원화출금계좌 비밀번호</th>
				<td><input type="password" class="form-control" name="password"></td>
				</tr>

				<tr>
					<th style="background-color: #f2f6f7">거래외국환 은행 지정</th>
					<td>
						<div class="d-flex">
							<select name="location" id="" class="form-control"
								onchange="categoryChange(this)" class="form-control">
								<option value="a" selected disabled>영업점을 선택하세요</option>
								<option value="당산점">당산점</option>
								<option value="마포점">마포점</option>
								<option value="은평점">은평점</option>
								<option value="여의도점">여의도점</option>
								<option value="명동점">명동점</option>
								<option value="서현역점">서현역점</option>
								<option value="강남지점">강남지점</option>
								<option value="평택점">평택점</option>
								<option value="양주점">양주점</option>
								<option value="대구점">대구점</option>
								<option value="목포점">목포점</option>
								<option value="나주점">나주점</option>
								<option value="기타">기타</option>
							</select>
							<button type="button" class="input-group-text"
								data-bs-toggle="modal" data-bs-target="#mapModal"
								style="margin-right: 5px">거래외국환 은행 지정</button>
						</div>
					</td>
				</tr>





			</table>


			<!-- 받는 분 정보 -->
			<br>
			<table class="table ">
				<tr>
					<h5>받는 분 정보</h5>
					<th style="width: 270px; background-color: #f2f6f7">받는 분 성함</th>
					<td><select name="receivedName" id="" onchange=""
						class="form-control">
							<option value="receivedName">받는 분의 성함을 선택하세요</option>
							<c:forEach items="${registerlist}" var="registerlist">
								<option value="${registerlist['RECEIVEDNAME']}">${registerlist['RECEIVEDNAME']}</option>

							</c:forEach>

					</select></td>
				</tr>

				<tr>
					<th style="width: 270px; background-color: #f2f6f7">받는분주소</th>
					<td><select class="form-control" name="receivedAddress">
							<option value="receivedAddress">받는 분의 주소를 선택하세요</option>
							<c:forEach items="${registerlist}" var="registerlist">
								<option value="${registerlist['RECEIVEDADDR2']}">${registerlist['RECEIVEDADDR2']}</option>
							</c:forEach></td>
				</tr>
				<tr>
					<th style="width: 270px; background-color: #f2f6f7">입금은행/지점주소</th>
					<td><select name="bankCode" id="" onchange=""
						class="form-control">
							<option value="bankCode">받는 분의 은행을 선택하세요</option>
							<c:forEach items="${registerlist}" var="registerlist">
								<option value="${registerlist['BANKCODE']}">${registerlist['BANKCODE']}</option>

							</c:forEach>

					</select></td>

				</tr>
				<tr>
					<th style="width: 270px; background-color: #f2f6f7"">국가별 은행코드</th>
					<td><select type="text" class="form-control" name="swiftCode">
							<option value="swiftCode">받는 분의 은행코드를 선택하세요</option>
							<c:forEach items="${registerlist}" var="registerlist">
								<option value="${registerlist['SWIFTCODE']}">${registerlist['SWIFTCODE']}</option>
							</c:forEach></td>
				</tr>

				<tr>
					<th style="width: 270px; background-color: #f2f6f7"">입금계좌번호</th>
					<td><select name="receivedaccoutNo" id="" onchange=""
						class="form-control">
							<option value="receivedaccoutNo">받는 분의 계좌를 선택하세요</option>
							<c:forEach items="${registerlist}" var="registerlist">
								<option value="${registerlist['RECEIVEDACCOUTNO']}">${registerlist['RECEIVEDACCOUTNO']}</option>

							</c:forEach>

					</select></td>
				</tr>


				<tr>
					<th style="width: 270px; background-color: #f2f6f7">송금받는분 이메일</th>
					<td><select name="receivedEmail" id="" onchange=""
						class="form-control">
							<option value="receivedEmail">받는 분의 이메일을 선택하세요</option>
							<c:forEach items="${registerlist}" var="registerlist">
								<option value="${registerlist['RECEIVEDEMAIL']}">${registerlist['RECEIVEDEMAIL']}</option>

							</c:forEach>

					</select></td>
				</tr>

				<table class="table ">
					<br>
					<tr>
						입증서류 제출
						<th style="width: 270px; background-color: #f2f6f7">파일선택</th>
						<td><input type="file" name="uploadfile"
							onchange="readURL(this);">
							 <img id="preview"
							style="width: 300px" /></td>
					</tr>
				</table>
				<div align="center">
					<input class="btn btn-info " type="submit" onclick="btn()"
						id="bloodModal" value="최종송금하기">
				</div>

			</table>

		</form>




		<div class="check mt-5">
			<!-- 		처음 이용하시거나 해외송금과 관련하여 궁금한 사항이 있으시면 [해외송금안내]를 참고해 주세요 <br> -->
			송금전 확인사항 가상화폐 관련한 송금을 하거나, 이와 관련한 자금을 제3자를 대신하여 송금할 경우, 외국환거래법에 의거하여
			관계기관으로부터 제재를 받을 수 있습니다.  <Br><br>송금수수료 :송금액이 건당 미화 5,000불 상당액 이하인 경우 3,000원 
			송금액이 건당 미화 5,000불 상당액 초과인 경우 5,000원 (단, 별도의 전신료 5,000원이 추가됩니다.
			
		</div>
	</div>


	

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="/js/jquery-3.6.0.min.js"></script>
	<script src="js/scripts.js"></script>
	
<script>
	 function under() {
		$("#remreason").empty(); 
		   let tmp = "";    
		   tmp += "1. 순수한 증여성 송금 이외의 해외부동산 취득, 유학생경비, 재외동포 국내재산반출, 해외차입금 상환등을 목적으로 송금하실 경우에는 외국환거래규정에 위배되므로 유의 하셔야 합니다. 2. 해외예금(신탁)계약, 금전대차계약, 증권취득, 회원권 취득 등 자본거래를 위해 건당 미화5천불 상당액 이하로 분할 송금시, 분할된 송금액의 합계가 미화5천불 상당액을 초과하면 외국환거래규정에 따른 자본거래 신고를 하여야 하므로 영업점을 방문하셔서 사전신고 및 송금거래 하시기 바랍니다. (단, 해외부동산 취득, 해외 법인설립 및 직접투자, 해외지사설치 관련 송금은 금액과 상관없이 사전신고 사항이니 영업점 직원과 상담하시기 바랍니다) 3. 증빙서류 미제출 송금은 금융사기 등 예방을 위해서 당행의 모든 채널을 통해 동일한 수취인앞으로 송금된 누계액이 미화 5만불 상당액을 초과하는 경우 인터넷/모바일 등 비대면 채널을 통한 송금이 불가합니다. 4. 증빙서류 미제출 송금은 당행의 모든 채널을 통하여 송금인 기준 연간 송금 누계액이 미화 5만불상당액을 초과하는 경우 인터넷/모바일 등 비대면 채널을 통한 송금이 불가하오니 영업점 창구를 통해서 송금하시기 바랍니다. "  
		$("#remreason").val(tmp);
		$("#remreason").fadeIn(500);   
	}
	 function over()    { 
		$("#remreason").empty();	   
		let tmp = "";    
		tmp += "1. 222</div>"  
		$("#remreason").val(tmp);
		$("#remreason").fadeIn(500);   
	}
	 function internationalFees() {
		$("#remreason").empty(); 
		   let tmp = "";    
		   tmp += "1. 순수한 증여성 송금 이외의 해외부동산 취득, 유학생경비, 재외동포 국내재산반출, 해외차입금 상환등을 목적으로 송금하실 경우에는 외국환거래규정에 위배되므로 유의 하셔야 합니다. 2. 해외예금(신탁)계약, 금전대차계약, 증권취득, 회원권 취득 등 자본거래를 위해 건당 미화5천불 상당액 이하로 분할 송금시, 분할된 송금액의 합계가 미화5천불 상당액을 초과하면 외국환거래규정에 따른 자본거래 신고를 하여야 하므로 영업점을 방문하셔서 사전신고 및 송금거래 하시기 바랍니다. (단, 해외부동산 취득, 해외 법인설립 및 직접투자, 해외지사설치 관련 송금은 금액과 상관없이 사전신고 사항이니 영업점 직원과 상담하시기 바랍니다) 3. 증빙서류 미제출 송금은 금융사기 등 예방을 위해서 당행의 모든 채널을 통해 동일한 수취인앞으로 송금된 누계액이 미화 5만불 상당액을 초과하는 경우 인터넷/모바일 등 비대면 채널을 통한 송금이 불가합니다. 4. 증빙서류 미제출 송금은 당행의 모든 채널을 통하여 송금인 기준 연간 송금 누계액이 미화 5만불상당액을 초과하는 경우 인터넷/모바일 등 비대면 채널을 통한 송금이 불가하오니 영업점 창구를 통해서 송금하시기 바랍니다. "  
		$("#remreason").val(tmp);
		$("#remreason").fadeIn(500);   
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
	
	
	
	//수수료 계산식
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
				$('#initialRate').fadeIn(1500);
			},
			error	:	function(){
				alert('실패')
			}
			
		})
		
	
	  
	}
	
	
	</script>

</body>

</html>