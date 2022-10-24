<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 글씨체 -->
<link href="https://webfontworld.github.io/amore/AritaBuri.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">	

<!-- Vendor CSS Files -->
<link href="vendor/aos/aos.css" rel="stylesheet">
<link href="vendor/bootstrap/bootstrap.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
<link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">



</head>

<header style="border-bottom: 2px solid rgb(64, 128, 128); background: #fff;" class="header fixed-top">
   <jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"></jsp:include>
   <jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>
</header>
<body>
<link href="css/style.css" rel="stylesheet">
	
	
	<section id="login" class="d-flex align-items-center justify-content-center" style="margin-top:50px">
		<div class="container" data-aos="fade-up">
			<div align="center" style="margin-top: -200px; padding-left:150px;">
				
				<h2 class="container-fluid fw-bold font-sans-serif py-3 " style="color: black;">로그인</h2>
			    
				<br>
<!-- 				<div style="border:1px solid; max-width:450px; padding-right:0px; padding-top:35px; padding-right:20px; border; border-radius: 22px;  color:#408080;"> -->
				
				<form:form action="${pageContext.request.contextPath}/login" method="post" modelAttribute="memberVO">
					<table>
						<!-- 						2px solid 밑에랑 띄어쓰기 하려면 margin-bottom을 써야 함-->
						<tr>
							<th style="width: 100px" id="font" mt-5>ID</th>
							<td><input autocomplete="off" style="width: 300px; border:0.5px transparent;border-bottom:1px solid; min-height:35px; margin-bottom: 10px" type="text" name="id" placeholder="아이디입력"></td>
						</tr>
					
						
						<tr>
							<th style="width: 100px" id="font" mt-5>PASSWORD</th>
							<td><input style="width: 300px;  border:0.5px transparent;border-bottom:transparent;border-bottom:1px solid; min-height:35px; margin-bottom: 10px" type="password" name="password" placeholder="비밀번호입력"></td>
						</tr>
						
					</table>
					<br>
					
					<input style="border-radius: 22px; width: 400px;
					 height: 50px; font-size: 20px;
					  font-family: 'Noto Sans KR', sans-serif; background-color:#388284
					; border: none; margin-bottom: 10px; color:white"
						type="submit" value="로그인" class="py-2" id="btn"><br>
			      <button style="border-radius: 22px; width: 400px; height: 50px;
     font-size: 20px; font-family: 'Noto Sans KR', sans-serif;
				    background-color:#388284; border: none; margin-bottom: 10px; color:white"
						type="submit" class="py-2" id="btn">회원가입</button><br>
					
				<a id="custom-login-btn" href="javascript:kakaoLogin()" class="order-1 order-lg-0 mt-lg-3">
                     <img
                   src="/img/kakao_login.png"   width="400" alt="카카오 로그인 버튼"/>
               </a>
               </form:form>
                <form:form id="kakaoLogin" method="post">
                <input type="hidden" name="email"/>
               </form:form>
               
				    
				    	
				 <br><a href="javascript:kakaoLogout();" width="400px">로그아웃</a>
               
               </a>
			</div>
		</div>
	</section>




	<!-- Vendor JS Files -->
	<script src="vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="vendor/aos/aos.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="vendor/glightbox/js/glightbox.min.js"></script>
	<script src="vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="vendor/swiper/swiper-bundle.min.js"></script>
	<script src="vendor/php-email-form/validate.js"></script>
     <!-- 카카오 스크립트 -->
      <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
      <script  type="text/javascript">
      //카카오 초기화
            Kakao.init('');
            console.log(Kakao.isInitialized());
            
            function kakaoLogin() {
              
               Kakao.Auth.login({
                  scope: 'account_email',
                   success: function(response) {
                       Kakao.API.request({ // 사용자 정보 가져오기 
                           url: '/v2/user/me',
                           data: {
                               property_keys: [
                                 'properties.nickname',
                                 'kakao_account.email',
                               ],
                             },
                           success: (response) => {
                              var kakaoemail = response.kakao_account.email;
                              $('#kakaoLogin input[name=email]').val(kakaoemail);
                          
                              document.querySelector('#kakaoLogin').submit();
                           }
                       });
                       // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
                   },
                   fail: function(error) {
                     console.log('실패')
                       alert(error);
                   }
               });
           }

           function createHiddenLoginForm(kakaoId){
              
              var frm = document.createElement('form');
              frm.setAttribute('method', 'post');
              frm.setAttribute('action', '/member/kakaoLogin.go');
              var hiddenInput = document.createElement('input');
              hiddenInput.setAttribute('type','hidden');
              hiddenInput.setAttribute('name','userid');
              hiddenInput.setAttribute('value',kakaoId);
              frm.appendChild(hiddenInput);
              document.body.appendChild(frm);
              frm.submit();
              
           }
         
         function kakaoLogout() {
            if (Kakao.Auth.getAccessToken()) {
              Kakao.API.request({
                url: '/v1/user/unlink',
                success: function (response) {
                    console.log(response)
                },
                fail: function (error) {
                  console.log(error)
                },
              })
              Kakao.Auth.setAccessToken(undefined)
            }
          }  

           </script>
	<!-- Template Main JS File -->
	<script src="js/main.js"></script>
</body>
</html>


