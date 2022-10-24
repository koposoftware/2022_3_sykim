<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>HTML5 Canvas Winning Wheel</title>
<link rel="stylesheet" href="main.css" type="text/css" />
<script type="text/javascript" src="/js/Winwheel.js"></script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenMax.min.js"></script>

<!-- 부트스트랩 -->
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
<!-- sweet alert -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<!-- 노토산스 noto sans font  -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="vendor/aos/aos.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
<link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
<link href="/css/style.css" rel="stylesheet">
 <script src="https://cdn.jsdelivr.net/npm/gasparesganga-jquery-loading-overlay@2.1.7/dist/loadingoverlay.min.js"></script>

<header style="border-bottom: 2px solid rgb(64, 128, 128); background: #fff;" class="header fixed-top">
	<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>
</header>
<style>
@font-face {
    font-family: 'HanaB.ttf';
    src: url('/font/HanaB.ttf');
    font-weight: 400;
    font-style: normal;
}


</style>
</head>
<html>
    <head>
        <title>롤렛돌리기</title>
        <link rel="stylesheet" href="main.css" type="text/css" />
        <script type="text/javascript" src="js/Winwheel.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenMax.min.js"></script>
    </head>
<style>
.loadingoverlay{
	justify-content: center !important;
	padding-left:220px;
	background-color:#b5b5b5;
}

.loadingoverlay_text{
	font-family: 'HanaB.ttf';
	margin-top:30px;
    margin-left:50px;
    
}
.snowflakes{
 color:#fff;
}
.snowflake{
 color:#fff;
}
.swal2-container.swal2-center>.swal2-popup {
    grid-column: 2;
    grid-row: 2;
    align-self: center;
    justify-self: center;
    margin-left: 300px;
}
.swal2-styled.swal2-confirm {
    border: 0;
    border-radius: 0.25em;
    background: initial;
    background-color: #66e0d4;
    margin-right: 100,
    color: #fff;
    font-size: 1em;
}

.swal2-container.swal2-center>.swal2-popup {
    grid-column: 2;
    grid-row: 2;
    align-self: center;
    justify-self: center;
    margin-left: 250px;
    margin-top: -200px;
} 
<style>	.snowflake {  color: #fff;  font-size:150px;  font-family: Arial;  text-shadow: 0 0 10px #000;}
 @-webkit-keyframes snowflakes-fall{0%{top:-10%}100%{top:100%}}@-webkit-keyframes snowflakes-shake{0%
{-webkit-transform:translateX(0px);transform:translateX(0px)}50%{-webkit-transform:translateX(80px);
transform:translateX(80px)}100%{-webkit-transform:translateX(0px);transform:translateX(0px)}}
@keyframes snowflakes-fall{0%{top:-10%}100%{top:100%}}@keyframes snowflakes-shake{0%{transform:translateX(0px)}50%{transform:translateX(80px)}100%{transform:translateX(0px)}}.snowflake{position:fixed;top:-10%;z-index:9999;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;cursor:default;-webkit-animation-name:snowflakes-fall,snowflakes-shake;-webkit-animation-duration:10s,3s;-webkit-animation-timing-function:linear,ease-in-out;-webkit-animation-iteration-count:infinite,infinite;-webkit-animation-play-state:running,running;animation-name:snowflakes-fall,snowflakes-shake;animation-duration:10s,3s;animation-timing-function:linear,ease-in-out;animation-iteration-count:infinite,infinite;animation-play-state:running,running}.snowflake:nth-of-type(0){left:1%;-webkit-animation-delay:0s,0s;animation-delay:0s,0s}.snowflake:nth-of-type(1){left:10%;-webkit-animation-delay:1s,1s;animation-delay:1s,1s}.snowflake:nth-of-type(2){left:20%;-webkit-animation-delay:6s,.5s;animation-delay:6s,.5s}.snowflake:nth-of-type(3){left:30%;-webkit-animation-delay:4s,2s;animation-delay:4s,2s}.snowflake:nth-of-type(4){left:40%;-webkit-animation-delay:2s,2s;animation-delay:2s,2s}.snowflake:nth-of-type(5){left:50%;-webkit-animation-delay:8s,3s;animation-delay:8s,3s}.snowflake:nth-of-type(6){left:60%;-webkit-animation-delay:6s,2s;animation-delay:6s,2s}.snowflake:nth-of-type(7){left:70%;-webkit-animation-delay:2.5s,1s;animation-delay:2.5s,1s}.snowflake:nth-of-type(8){left:80%;-webkit-animation-delay:1s,0s;animation-delay:1s,0s}.snowflake:nth-of-type(9){left:90%;-webkit-animation-delay:3s,1.5s;animation-delay:3s,1.5s}</style>	</div>
</style>    
    <body style="background-image: url('img/party.jpg');opacity:0.9;" >
<div class="snowflakes" aria-hidden="true">  <div class="snowflake">❄</div><div class="snowflake">❄</div>
<div class="snowflake">❄</div><div class="snowflake">❄</div><div class="snowflake">❄</div>
<div class="snowflake">❄</div><div class="snowflake">❄</div><div class="snowflake">❄</div>
<div class="snowflake">❄</div><div class="snowflake">❄</div>


    <div class="container" style="margin-left: 400px" >
              <div class="mt-4" align="center" style="padding-right:100px">
       
            <h1 style="font-family: 'HanaB.ttf'; margin-top:70px; display:inline-block;margin-left: 110px;color:#fff"><span style="color:#fff;font-size:39px">외환</span>EVENT</h1>
            <h6 style="margin-left:110px;color:#fff"><span style="color:#d3f0f3;font-size:20px">환전 수수료</span>를 우대해주는 <span style="color:#d3f0f3;font-size:20px">쿠폰</span> 이벤트</h6>
            </h7>
            <br />
            <br />
            <table cellpadding="0" cellspacing="0" border="0">
             <tr>
                    <td>
                        <div class="power_controls" >
                            <br />
                            <br />
                        
                            <br />
                 
                            <button type="button" id="spin_button"  onClick="startSpin();" style="background-color: #64c7bb;  color: #510c74; padding: 8px 30px 5px 25px;margin-bottom:50px;border-radius: 4px;position:absolute;margin-left:370px;border-radius:100%;top:570px">
                            <div style="margin-top:15px;margin-left:3px;font-family: 'HanaB.ttf';">GO</div>
                     <br /> </button>
                   &nbsp;&nbsp;
                            <br /><br />
                            &nbsp;&nbsp;
                            <a href="#" onClick="resetWheel(); return false;" style="margin-left:150px;color:#110e43;" >중지</a><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                    </td>
                    <td width="438" height="582" class="the_wheel" align="center" valign="center">
<!--                     <i class="bi bi-arrow-down"></i> -->
                
           				<img src="/img/pointer1.png" alt="화살표" width="15%" height="15%" style="margin-left:-80px">
                        <canvas id="canvas" width="434" height="434" style="margin-bottom:50px;margin-right:80px">
                            <p style="{color: white}" align="center">Sorry, your browser doesn't support canvas. Please try another.</p>
                        </canvas>
                    </td>
                </tr>
            </table>
             <h7 style="color:#fff;
           margin-left:-100px;margin-top:-60px;position:absolute"><span style="color:#ff8484">※1인 1회만 사용 가능합니다※</span><br>
            <div style="margin-left:20px">(쿠폰의 유효기간은 발행일로부터 6개월입니다)</div>
   <button class="btn btn-primary py-2" type="button" id="transferAccount" onclick="nextStep1()"; style="margin-left:20px;color:#fff">환전하기</button>
   <button class="btn btn-primary py-2" type="button" id="Remittance" onclick="nextStep2()" style="margin-right:30px" >계좌조회</button>
        </div>
        
        
        <script>
            // Create new wheel object specifying the parameters at creation time.
            let theWheel = new Winwheel({
                'numSegments'  : 10,     // Specify number of segments.
                'outerRadius'  : 200,   // Set outer radius so wheel fits inside the background.
                'textFontSize' : 15,    // Set font size as desired.
                'segments'     :        // Define segments including colour and text.
                [
                   {'fillStyle' : '#76DCB0 ', 'text' : '환전 수수료 1% 우대', 'rate' : 1},
                   {'fillStyle' : '#fff', 'text' : '환전 수수료 2% 우대','rate' : 2},
                   {'fillStyle' : '#76DCB0', 'text' : '환전 수수료 3% 우대', 'rate' : 3},
                   {'fillStyle' : '#fff', 'text' : '환전 수수료 4% 우대', 'rate' : 4},
                   {'fillStyle' : '#76DCB0', 'text' : '환전 수수료 5% 우대', 'rate' : 5},
                   {'fillStyle' : '#fff', 'text' : '환전 수수료 6% 우대','rate' : 6},
                   {'fillStyle' : '#76DCB0', 'text' : '환전 수수료 7% 우대','rate' : 7},
                   {'fillStyle' : '#fff', 'text' : '환전 수수료 8% 우대','rate' : 8},
                   {'fillStyle' : '#76DCB0', 'text' : '환전 수수료 9% 우대','rate' : 9},
                   {'fillStyle' : '#fff', 'text' : '꽝','rate' : 10}
                  
                ],
                'animation' :           // Specify the animation to use.
                {
                    'type'     : 'spinToStop',
                    'duration' : 5,     // Duration in seconds.
                    'spins'    : 8,     // Number of complete spins.
                    'callbackFinished' : alertPrize
                }
            });

            // Vars used by the code in this page to do power controls.
            let wheelPower    = 0;
            let wheelSpinning = false;

            // -------------------------------------------------------
            // Function to handle the onClick on the power buttons.
            // -------------------------------------------------------
            function powerSelected(powerLevel)
            {
                // Ensure that power can't be changed while wheel is spinning.
                if (wheelSpinning == false) {
                    // Reset all to grey incase this is not the first time the user has selected the power.
                    document.getElementById('pw1').className = "";
                    document.getElementById('pw2').className = "";
                    document.getElementById('pw3').className = "";

                    // Now light up all cells below-and-including the one selected by changing the class.
                    if (powerLevel >= 1) {
                        document.getElementById('pw1').className = "pw1";
                    }

                    if (powerLevel >= 2) {
                        document.getElementById('pw2').className = "pw2";
                    }

                    if (powerLevel >= 3) {
                        document.getElementById('pw3').className = "pw3";
                    }

                    // Set wheelPower var used when spin button is clicked.
                    wheelPower = powerLevel;

                    // Light up the spin button by changing it's source image and adding a clickable class to it.
                    document.getElementById('spin_button').src = "spin_on.png";
                    document.getElementById('spin_button').className = "clickable";
                }
            }

            // -------------------------------------------------------
            // Click handler for spin button.
            // -------------------------------------------------------
            function startSpin()
            {
                // Ensure that spinning can't be clicked again while already running.
                if (wheelSpinning == false) {
                    // Based on the power level selected adjust the number of spins for the wheel, the more times is has
                    // to rotate with the duration of the animation the quicker the wheel spins.
                    if (wheelPower == 1) {
                        theWheel.animation.spins = 3;
                    } else if (wheelPower == 2) {
                        theWheel.animation.spins = 8;
                    } else if (wheelPower == 3) {
                        theWheel.animation.spins = 15;
                    }

                    // Disable the spin button so can't click again while wheel is spinning.
                    document.getElementById('spin_button').src       = "spin_off.png";
                    document.getElementById('spin_button').className = "";

                    // Begin the spin animation by calling startAnimation on the wheel object.
                    theWheel.startAnimation();

                    // Set to true so that power can't be changed and spin button re-enabled during
                    // the current animation. The user will have to reset before spinning again.
                    wheelSpinning = true;
                }
            }

            // -------------------------------------------------------
            // Function for reset button.
            // -------------------------------------------------------
            function resetWheel()
            {
                theWheel.stopAnimation(false);  // Stop the animation, false as param so does not call callback function.
                theWheel.rotationAngle = 0;     // Re-set the wheel angle to 0 degrees.
                theWheel.draw();                // Call draw to render changes to the wheel.

                document.getElementById('pw1').className = "";  // Remove all colours from the power level indicators.
                document.getElementById('pw2').className = "";
                document.getElementById('pw3').className = "";

                wheelSpinning = false;          // Reset to false to power buttons and spin can be clicked again.
            }

            // -------------------------------------------------------
            // Called when the spin animation has finished by the callback feature of the wheel because I specified callback in the parameters
            // note the indicated segment is passed in as a parmeter as 99% of the time you will want to know this to inform the user of their prize.
            // -------------------------------------------------------
  
   
            function alertPrize(indicatedSegment)
            {
                     $.ajax({
                        url : '${pageContext.request.contextPath}/coupon/addCoupon',
                        method : 'post'  ,
                        data :  {
                           id :  '${loginVO.id}' ,
                           content: indicatedSegment.text ,
                           rate:  indicatedSegment.rate ,
                        },
                      success : function btn(){
                    	  setTimeout(function() { 
                    	       
                    	        }, 5000),
                    		  Swal.fire({
                    			  title: indicatedSegment.text + "♥당첨♥",
                    			  width: 550,	
                    			  padding: '7em',
                    			  background: '#fff url(/img/firework.gif)',
                    			  color: '#0c8b8b',
                    			  
                    			  backdrop: `
                    				rgba(0,0,0,0.65)
                    			    url("/images/nyan-cat.gif")
                    			    left top
                    			    no-repeat
                    			  `
                    			})
                 
                        
                     },
                     error : function(){
                        alert('실패');
                     },
                   
                        
                  })    
            }
            
            
         
            function nextStep2(){
                location.href = "${ pageContext.request.contextPath}/remittance"
             	} 	
        </script>
         
   </div>
   <script>
async function nextStep1() {
         $.LoadingOverlay("show", {
        	image :"/img/finalload.gif",
        	imageAutoResize : false,
            maxSize: 100,
            text : "환전사이트로 이동 중 입니다.",
          	fontawesome      : "fa fa-spinner fa-pulse fa-fw",
         	fontawesomeColor : "#FFFFFF"
         });
         
         setTimeout(function(){
            $.LoadingOverlay("text", "잠시만 기다려 주십시오");
         }, 2000);
         
         setTimeout(function(){
            location.href = "${ pageContext.request.contextPath}/exchange/check";
         }, 1000);
      }
      
      
// document.getElementById('currentMonth').value= new Date().toISOString().slice(0,5);
// console.log("요일 : ", day);

document.getElementById('now_date').valueAsDate = new Date();





</script>
    </body>
</html>