<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
</header>
</head>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
	crossorigin="anonymous"></script>
<script>
$(document).ready(function(){
   $('#MemberlistBtn').click(function(){
      location.href = "/login"
   })
})

function checkForm(){
   let f =document.memberwriteForm;


   if(f.name.value ==''){
      alert('이름을 입력하세요')
      f.name.focus()
      return false
   }

   if(f.id.value == '') {
	      alert('아이디를 입력하세요')
	      f.id.focus()
	      return false
	   }
   if(f.phone.value == '') {
	      alert('핸드폰번호를 입력하세요')
	      f.id.focus()
	      return false
	   }
   
   if(f.password.value ==''){
   alert('비밀번호를 입력하세요')
   f.password.focus()
   return false
   }
   
   if(f.password1.value ==''){
	   alert('비밀번호를 한번 더 입력하세요')
	   f.password.focus()
	   return false
	   }
   
   if(f.email_id.value ==''){
      alert('이메일을 입력하세요')
      f.email_id.focus()
      return false
      }   
  
   if(f.tel1.value ==''){
         alert('핸드폰번호를 입력하세요')
         f.tel1.focus()
   return false
   }
   return true      
}


</script>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"></jsp:include>
	</header>



	<div class="container-xxl bg-white p-0">



		<!-- Quote Start -->
		<div class="container-xxl py-6">
			<div class="container">
				<div class="mx-auto text-center wow fadeInUp" data-wow-delay="0.1s"
					style="max-width: 600px;">
					<h2 class="mb-5">회원가입</h2>
					<hr style="border: 1px solid black">
				</div>
				<div class="row justify-content-center">
					<div class="col-lg-7 wow fadeInUp" data-wow-delay="0.3s">

						<form action="/joinprocess" method="post" name="memberwriteForm"
							onsubmit="return checkForm()">
							<div class="row g-3">
								<div class="col-md-6">
									<div class="form-floating">
										<input type="text" class="form-control" name="name" id="name"
											placeholder="유저 이름"> <label for="name">이름을
											입력하세요</label>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-floating">
										<input type="text" class="form-control" name="id" id="id"
											placeholder="유저 아이디">
											 <label for="name">아이디를
											입력하세요</label>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-floating">
										<input type="text" class="form-control" name="phone"
											id="phone" placeholder="휴대폰번호"> <label for="email">휴대폰번호
											ex)010-1234-5678</label>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-floating">
										<input type="password" class="form-control" name="password"
											id="password" placeholder="비밀번호"> <label for="email">비밀번호를
											입력하세요</label>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-floating">
										<input type="password" class="form-control" name="password1"
											id="password1" placeholder="비밀번호를 한번더 입력하세요"> <label
											for="name">비밀번호를 한번 더 입력하세요</label>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-floating">
										<input type="text" class="form-control" name="email"
											id="accountName" placeholder="이메일"> <label
											for="email">이메일을 입력하세요</label>
									</div>
								</div>


								<div class="col-md-6 wow fadeInUp" data-wow-delay="0.3s"">
									<div class="form-floating">
										<input type="text" id="sample6_postcode" placeholder="우편번호"
											class="form-control"> <label for="name">우편번호를
											입력하세요</label>
									</div>
								</div>

								<div class="col-md-6 wow fadeInUp">
									<div class="form-floating">
										<label class="form-floating" for="name"> </label> <input
											class="btn text-primary bg-white form-control"
											style="border: 0px solid white" type="button"
											onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
									</div>
								</div>

								<div class="col-md-12 wow fadeInUp">
									<div class="form-floating">

										<input type="text" name="addr1" id="addr1"
											class="form-control" placeholder="기본주소"> 
											<label
											for="name">기본주소<label>
									</div>
								</div>

								<div class="col-md-6 wow fadeInUp">
									<div class="form-floating">
										<input type="text" name="addr2" id="addr2"
											class="form-control" placeholder="상세주소"> <label
											for="name">상세주소<label>
									</div>
								</div>

								<div class="col-md-6 wow fadeInUp">
									<div class="form-floating">

										<input type="text" id="sample6_extraAddress"
											placeholder="참고항목" class="form-control"> <label
											for="name">참고항목<label>
									</div>




								</div>
								<input type="submit" value="등록" button
									class="btn btn-primary col-lg-12">
								<button id="MemberlistBtn ">회원 목록</button>
							</div>
					</div>
				</div>
			</div>
		</div>
		</form>


		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
			<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("addr1").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("addr2").focus();
            }
        }).open();
    }
</script>
</body>
</html>




