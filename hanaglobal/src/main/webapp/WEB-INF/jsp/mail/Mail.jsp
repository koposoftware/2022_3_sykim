<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">


  <!-- Favicons -->
  <link href="/img/favicon.png" rel="icon">
  <link href="/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,600,700" rel="stylesheet">
  <link href='https://fonts.googleapis.com/css?family=Quicksand:300,400,700' rel="stylesheet">
  
  <!-- 노토산스 noto sans font  -->
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="vendor/aos/aos.css" rel="stylesheet">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">   
<link href="/css/style.css" rel="stylesheet" />
</head>
<body>
<header style="border-bottom: 2px solid rgb(64, 128, 128); background: #fff;" class="header fixed-top">
	<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>
</header>
</head>
<style>

header.masthead {
    margin-bottom: 50px;
    align-items:center;
    background: no-repeat center center;
    background-color: #fff;
    background-attachment: scroll;
    position: relative;
    background-size: cover;
    display : flex;
    flex-direction : column;
    justify-content : space-between; 
    align-items :  center ; 
}


.card-body {
    -webkit-box-flex: 1;
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    padding: 1.25pc;
    max-width:1500px;
    min-hegiht:1000px;
    background-color:#eeeded;
}

</style>   
   
<div class="container" style="margin-left:630px; margin-top:50px;">
<h2 style="font-family: 'Noto Sans KR', sans-serif; margin-left: 260px; margin-top:100px; display:inline-block; border-bottom:0.5px solid">메일 보내기
			</h2>
			
<body>



  <!-- Page Header -->

<header class="masthead" style="background-image: url('/startbootstrap-clean-blog-jekyll/img/bg-contact.jpg'); margin-right:450px; margin-top:50px">

<div class="card" style="width: 800px; height:350px">
  <img src="/img/message.gif" class="card-img-top" alt="..." style="width:350px;margin-left:230px; ">
  <div class="card-body">
    <p class="card-text">
    <div class="col-lg-8 col-md-10 mx-auto">
<form th:action="@{/mail/send}" method="post">
  <div class="control-group">
    <div class="form-group floating-label-form-group controls">
      <label>받는 분의 메일 주소를 입력하세요</label>
      <input type="email" class="form-control" name="address" placeholder="이메일 주소를 입력하세요" required="">
      <p class="help-block text-danger"></p>
    </div>
  </div>
  <div class="control-group">
    <div class="form-group floating-label-form-group controls">
      <label>제목을 입력하세요</label>
      <input type="text" class="form-control" name="title" placeholder="제목을 입력하세요" required="">
      <p class="help-block text-danger"></p>
    </div>
  </div>

  <div class="control-group">
    <div class="form-group floating-label-form-group controls">
      <label>내용을 입력하세요</label>
      <textarea rows="5" class="form-control" placeholder="Message" name="content" required="" data-validation-required-message="Please enter a message."></textarea>
      <p class="help-block text-danger"></p>
    </div>
  </div>
  <br>
  <div id="success"></div>
  <div class="form-group">
    <button type="submit" class="btn2 btn-secondary" id="sendMessageButton" style="margin-left:170px">Send</button>
    
  </div>
</form>
    
    
    
    </p>
  </div>
</div>


      </div>
    </div>
  </div>
          </div>
        </div>
      </div>
    </div>
  </header>

 

</body>
 

  
</body>
</html>