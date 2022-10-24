<%@page import="org.apache.tomcat.util.json.JSONParser"%>
<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


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

<!-- anmiated.js -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
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
	<link rel="stylesheet" href="css1/bootstrap.min.css">
	<link rel="stylesheet" href="css1/owl.carousel.min.css">
	<link rel="stylesheet" href="css1/owl.theme.default.min.css">
	<link rel="stylesheet" href="css/jquery.fancybox.min.css">
	<link rel="stylesheet" href="fonts/icomoon/style.css">
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
	<link rel="stylesheet" href="css1/daterangepicker.css">
	<link rel="stylesheet" href="css1/aos.css">
	<link rel="stylesheet" href="css1/style.css">
<style>
@font-face {
    font-family: 'HanaB.ttf';
    src: url('/font/HanaB.ttf');
    font-weight: 400;
    font-style: normal;
}

.gradient-custom {
/* fallback for old browsers */
background: #f6d365;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right bottom, rgba(246, 211, 101, 1), rgba(253, 160, 133, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right bottom, #018085 , #B5B5B5)
}

@font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
    }
.form-check-input:checked {
    background-color: #9ba1a9 !important;
    border-color: #c4c8cd !important;
}    




</style>
<body style="background-image: url('img/snow.png');opacity:0.9">

<!-- background-color:#f4f4f4" -->
<header style="border-bottom: 2px solid rgb(64, 128, 128); background: #fff;" class="header fixed-top">
	<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>
   <link href="/css/style.css" rel="stylesheet">
</header>


<div class="container" style="margin-left: 350px; margin-top: 50px;">
	<h2 style="font-family: 'HanaB.ttf'; margin-left: 500px; margin-top:100px; display:inline-block;">전체 계좌 보기</h2>
<!-- test -->		               
<!-- 이미지 -->	               
		     <div class="untree_co-section" style="margin-left:60px;margin-bottom:-80px">
		     <c:forEach items="${sum}" var="sum"> 
						<span style="margin-left:300px;margin-top:-150px;font-size:25px;font-family:Pretendard-Regular" >
						<strong style="font-size:25px;font-family:Pretendard-Regular">${loginVO.name}</strong> 고객님,</span>
						<span style="font-size:25px;font-family:Pretendard-Regular"><strong>총 금융자산</strong>은  <span style="font-size:25px; color: #007297" class="animate__animated animate__flash"><fmt:formatNumber value="${sum['SUM(BALANCE)']}" pattern="#,###"/>원</span>입니다.</span>
                         </c:forEach>
		<div class="container" style="margin-top:-20px">
			<div class="row text-center justify-content-center mb-5" style="font-family: 'Noto Sans KR', sans-serif; margin-left: 500px;  display:inline-block;">
				<div class="col-lg-7"></div>
			</div>

			<div class="owl-carousel owl-3-slider">

				<div class="item">
					<a class="media-thumb" href="images/hero-slider-1.jpg" data-fancybox="gallery">
						<div class="media-text">
							<h3>hana kim</h3>
							<span class="location">870-123456-00000</span>
						</div>
						<img src="img/하나카드1.png" alt="Image" class="img-fluid">
					</a> 
				</div>

				<div class="item">
					<a class="media-thumb" href="images/hero-slider-2.jpg" data-fancybox="gallery">
						<div class="media-text">
							<h3>hana kim</h3>
							<span class="location"></span>
						</div>
						<img src="img/card.png" alt="Image" class="img-fluid">
					</a> 
				</div>


			</div>

		</div>
	</div>
	
	
	<!-- 이미지 끝 -->
  <div class="container  h-60">
    <div class="d-flex justify-content-between mt-5 flex-grow;" style="margin-left:70px">
     <c:forEach items="${allaccount}" var="account"> 
       <c:choose>
      <c:when test="${account['ACCOUNTNAME']eq '글로벌통장'}">
         <div class="justify-content-between">   
      <div class="col mb-4 mb-lg-0">
        <div class="card mb-3 animate__animated animate__flipInX" style="border-radius: .5rem;">
          <div class="row g-0" style="max-width:700px">
          
            <div class="col gradient-custom text-center text-white"
              style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;width:90px">
              <img src="/img/account.png"
                alt="Avatar" class="img-fluid my-5" style="width: 130px;" />
              <h5 style="font-size:20px;font-family:Pretendard-Regular">${loginVO.name} 고객님</h5>
              <p>반갑습니다!</p>
              <i class="far fa-edit mb-5"></i>
            </div>
         
            <div class="col-md-8">
              <div class="card-body pe-5">
                <h6>Information</h6>
                <hr class="mt-0 mb-4">
              
                <div class="row pt-1">
                  <div class="col-6 mb-3">
                    <h6>예금주명</h6>
                    <p class="text-muted" style="font-size:17px">${loginVO.name} </p>
                  </div>
                  <div class="col-6 mb-3">
                    <h6>계좌종류</h6>
                    <p class="text-muted" style="font-size:17px"> ${account['ACCOUNTNAME']}    </p>
                  </div>
                </div>
                
     
                <div class="row pt-1">
                  <div class="col-12 mb-1">
                    <h6 >계좌번호</h6>
                    <p class="text-muted" style="font-size:17px">${account['ACCOUNTNO']}</p>
                 </div>
                  
                  <div class="col-6 mb-1">
                    <h6>잔액</h6>
                    <p class="text-muted" style="font-size:14px"><fmt:formatNumber value="${account['BALANCE']}" pattern="#,###"/>원</p>
                    
                  </div>  
                  
                 <div class="col-6 mb-1">
                    <h6>외화 금액</h6>
                    <p class="text-muted" style="font-size:14px">$<fmt:formatNumber value="${account['BALANCE']/1420}" pattern="#,###"/></p>
                  </div>
                  
                </div>
                
                <div class="d-flex justify-content-start">
                  <a href="#!"><i class="fab fa-facebook-f fa-lg me-3"></i></a>
                  <a href="#!"><i class="fab fa-twitter fa-lg me-3"></i></a>
                  <a href="#!"><i class="fab fa-instagram fa-lg"></i></a>
                </div>

              </div>
            </div>
            
          </div>
        </div>
      </div>
    </div>           
      </c:when>
    
     
     <c:otherwise>
     <div class="justify-content-between">   
      <div class="col mb-4 mb-lg-0">
        <div class="card mb-3 animate__animated animate__flipInX" style="border-radius: .5rem;">
          <div class="row g-0" style="max-width:800px">
          
            <div class="col-md-4 gradient-custom text-center text-white"
              style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
              <img src="/img/account.png"
                alt="Avatar" class="img-fluid my-5" style="width: 130px;" />
              <h5 style="font-size:20px;font-family:Pretendard-Regular">${loginVO.name} 고객님</h5>
              <p>반갑습니다!</p>
              <i class="far fa-edit mb-5"></i>
            </div>
         
            <div class="col-md-8">
              <div class="card-body pe-5">
                <h6>Information</h6>
                <hr class="mt-0 mb-4">
              
                <div class="row pt-1">
                  <div class="col-6 mb-3">
                    <h6>예금주명</h6>
                    <p class="text-muted" style="font-size:17px">${loginVO.name} </p>
                  </div>
                  <div class="col-6 mb-3">
                    <h6>계좌종류</h6>
                    <p class="text-muted" style="font-size:17px"> ${account['ACCOUNTNAME']}    </p>
                  </div>
                </div>
                
                
                
                
                <div class="row pt-1">
                  <div class="col-12 mb-1">
                    <h6 >계좌번호</h6>
                    <p class="text-muted" style="font-size:17px">${account['ACCOUNTNO']}</p>
                  </div>
                  <div class="col-6 mb-1">
                    <h6>잔액</h6>
                    <p class="text-muted" style="font-size:14px"><fmt:formatNumber value="${account['BALANCE']}" pattern="#,###"/>원</p>
                     </div>
                   <div class="col-6  form-check form-switch ps-0 ms-auto my-auto" ">
                   
                   <input style="margin-top:-30px;margin-left: 30px !important;" class="form-check-input ms-auto"  type="checkbox" id="navbarFixed" onclick="navbarFixed(this)" checked="checked">
                    </div>
                  </div>
                  
                </div>
                
                <div class="d-flex justify-content-start">
                  <a href="#!"><i class="fab fa-facebook-f fa-lg me-3"></i></a>
                  <a href="#!"><i class="fab fa-twitter fa-lg me-3"></i></a>
                  <a href="#!"><i class="fab fa-instagram fa-lg"></i></a>
                </div>
                
              </div>
            </div>
            
          </div>
        </div>
      </div>
    </div>
    </c:otherwise>
     </c:choose>
    </c:forEach>
  </div>


	
			
	
		</body>




	
	<script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
   <!-- Core theme JS-->
   <script src="js/scripts.js"></script>
   	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.fancybox.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/moment.min.js"></script>
	<script src="js/daterangepicker.js"></script>

	<script src="js/typed.js"></script>
	<script>
		$(function() {
			var slides = $('.slides'),
			images = slides.find('img');

			images.each(function(i) {
				$(this).attr('data-id', i + 1);
			})

			var typed = new Typed('.typed-words', {
				strings: ["San Francisco."," Paris."," New Zealand.", " Maui.", " London."],
				typeSpeed: 80,
				backSpeed: 80,
				backDelay: 4000,
				startDelay: 1000,
				loop: true,
				showCursor: true,
				preStringTyped: (arrayPos, self) => {
					arrayPos++;
					console.log(arrayPos);
					$('.slides img').removeClass('active');
					$('.slides img[data-id="'+arrayPos+'"]').addClass('active');
				}

			});
		})
	</script>

	<script src="js/custom.js"></script>

</body>
<!-- Bootstrap core JS-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
</html>