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
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
   integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
   crossorigin="anonymous"></script>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
   integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
   crossorigin="anonymous">
<link rel="stylesheet"
   href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
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
<link href="css/style.css" rel="stylesheet">

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
<!-- 노토산스 noto sans font  -->
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
   rel="stylesheet">
   <script src="https://cdn.jsdelivr.net/npm/gasparesganga-jquery-loading-overlay@2.1.7/dist/loadingoverlay.min.js"></script>


<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/data.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>
    
    
<header style="border-bottom: 2px solid rgb(64, 128, 128); background: #fff;" class="header fixed-top">
   <jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"></jsp:include>
   <jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>
</header>
</head>

<style type="text/css">
@font-face {
    font-family: 'HanaB.ttf';
    src: url('/font/HanaB.ttf');
    font-weight: 400;
    font-style: normal;
}

.tg {
   border-collapse: collapse;
   border-spacing: 0;
}

.tg td {
   border-color: black;
   border-style: solid;
   border-width: 1px;
   font-family: Arial, sans-serif;
   font-size: 14px;
   overflow: hidden;
   padding: 10px 5px;
   word-break: normal;
}

.tg th {
   border-color: black;
   border-style: solid;
   border-width: 1px;
   font-family: Arial, sans-serif;
   font-size: 14px;
   font-weight: normal;
   overflow: hidden;
   padding: 10px 5px;
   word-break: normal;
}

.tg .tg-zs35 {
   background-color: #efefef;
   border-color: #b8babc;
   text-align: center;
   vertical-align: top
}


.loadingoverlay{
   justify-content: center !important;
   padding-left:100px;
}

.loadingoverlay_text{
   font-family: 'Noto Sans KR', sans-serif;
   margin-top:30px;
   margin-left:50px;
}

</style>
<style type="text/css">
@font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
}
.menu{
   font-size: 12pt;
   text-align: center;/*중앙정렬*/
   background: #00b3d3;
   border-radius: 4px;
   

}
.tg .tg-0pky {
    border-color: inherit;
    font-size: 12pt;
    text-align: center;
    vertical-align: center;
    border:1px solid;
}
.menu li {
  display: inline-block;/*여백 없이 좌측으로 붙은 li*/
  padding: 0 20px 0 0;
}
.menu a{
   font-family: 'Pretendard-Regular';
   color: #black;/*폰트컬러*/
   font-weight: 200;/*폰트굵기*/
   text-decoration: none;/*a href 밑줄 등 글자 꾸밈 없음*/
   line-height: 40px;
}
.menu a:after {/*after 가상요소*/
   display:block;/*a요소를 블록 요소라고 선언*/
   width:70px;/*카테고리 메뉴 밑줄의 크기를 동일하게 주기 위해 width 설정*/
/*혹시 동일하지 않길 바란다면 width 삭제*/
   content: '';
   border-bottom: solid 2px  rgb(64, 128, 128);
   margin-left:20px;
   transform: scaleX(0);/*크기를 0으로 줌으로써 평상시엔 밑줄 없음*/
   transition: transform 250ms ease-in-out; /*변형 방식*/
}
.menu a:hover:after {
   transform: scaleX(1);/*a 속성에 hover시 기존 크기로*/
}


.btn5 {
  color: #fff;
  border-radius: 2px;
  padding: 8px 25px 8px 25px;
  white-space: nowrap;
  transition: 0.3s;
  font-size: 14px;
  display: inline-block;
  background-color: rgb(64, 128, 128);
  border-radius: 4px;
}

#chart{
background: linear-gradient(#dedede, #fff, #fff);;
}


.tg {
   border-collapse: collapse;
   border-spacing: 0;
}

.tg td {
   border-color: black;
   border-style: solid;
   border-width: 1px;
   font-family: Arial, sans-serif;
   font-size: 14px;
   overflow: hidden;
   padding: 10px 5px;
   word-break: normal;
}

.tg th {
   border-color: black;
   border-style: solid;
   border-width: 1px;
   font-family: Arial, sans-serif;
   font-size: 14px;
   font-weight: normal;
   overflow: hidden;
   padding: 10px 5px;
   word-break: normal;
}

.tg .tg-zs35 {
   background-color: #efefef;
   border-color: #656565;
   text-align: center;
   vertical-align: top
}




.highcharts-figure,
.highcharts-data-table table {
    min-width: 360px;
    max-width: 800px;
    margin: 1em auto;
}

.highcharts-data-table table {
    font-family: Verdana, sans-serif;
    border-collapse: collapse;
    border: 1px solid #fff;
    margin: 10px auto;
    text-align: center;
    width: 100%;
    max-width: 500px;
}

.highcharts-data-table caption {
    padding: 1em 0;
    font-size: 1.2em;
    color: #fff;
}

.highcharts-data-table th {
    font-weight: 600;
    padding: 0.5em;
}

.highcharts-data-table td,
.highcharts-data-table th,
.highcharts-data-table caption {
    padding: 0.5em;
}

.highcharts-data-table thead tr,
.highcharts-data-table tr:nth-child(even) {
    background: #fff;
}

.highcharts-data-table tr:hover {
    background: #fff;
}

.highcharts-subtitle{
font-size:20px;
}



.highcharts-figure,
.highcharts-data-table table {
  min-width: 360px;
  max-width: 800px;
  margin: 1em auto;
  color:#fff;
}

.rect[Attributes] {
    fill: transparent;
    x: 0;
    y: 0;
    width: 690;
    height: 400;
    rx: 0;
    ry: 0;
}

.highcharts-background{
background-color:transparent;
}

.menu {
   
    text-align: center;
    background: #f4f4f4;
    
}

.modal-footer{
margin-right:350px;!important;
}
</style>

<body style="background: #f4f4f4">


   <div class="container" style="margin-top: 50px">
   <h2 style="margin-left: 600px; margin-top:100px; display:inline-block">실시간 환율 조회</h2>
       <div  style="color:#657c9d;font-family: 'HanaB.ttf'"></div>   
      <div class="hanafont" style="margin-left: 250px; margin-top: 30px">

         <div style="padding-left: -700px;">
            <h6 class="tar s1" id="set_date" style="color: #007297" align="left" font-family: 'HanaB.ttf'"></h6>
            현찰 사실 때 환율 : 매매기준율 * (1+외화현찰 사실 때 스프레드율)<br> 현찰 파실 때 환율 : 매매기준율
            * (1-외화현찰 파실 때 스프레드율)<br>

         </div>
         <script>
      
            Date.prototype.format = function(f) {
                   if (!this.valueOf()) return " ";
                   var d = this;
                   return f.replace(/(yyyy|yy|MM|dd|E|hh|mm|ss|a\/p)/gi, function($1) {
                          switch ($1) {
                                 case "yyyy": return d.getFullYear();
                                 case "yy": return (d.getFullYear() % 1000).zf(2);
                                 case "MM": return (d.getMonth() + 1).zf(2);
                                 case "dd": return d.getDate().zf(2);
                                 case "hh": return ((h = d.getHours() % 12) ? h : 12).zf(2);
                                 case "mm": return d.getMinutes().zf(2);
                                 case "ss": return d.getSeconds().zf(2);
                                 case "a/p": return d.getHours() < 12 ? "오전" : "오후";
                                 default: return $1;
                          }
                   });
            };
             String.prototype.string = function(len){var s = '', i = 0; while (i++ < len) { s += this; } return s;};
             String.prototype.zf = function(len){return "0".string(len - this.length) + this;};
             Number.prototype.zf = function(len){return this.toString().zf(len);};

            document.getElementById("set_date").innerHTML = new Date().format("yyyy년 MM월 dd일 a/p hh시 mm분 ss초");
      </script>
        


      </div>

      <div class style="margin-left: 250px; margin-top:-1350px">
         <table class="tg" width="900">
            <thead>
               <tr>
                  <th class="tg-zs35" rowspan="2" style="border-top: solid;border-top: solid;border-left:none">통화</th>
                  <th class="tg-zs35" colspan="2" style="border-top: solid">현찰</th>
                  <th class="tg-zs35" colspan="2" style="border-top: solid">송금</th>
                  <th class="tg-zs35" rowspan="2" style="border-top: solid">매매기준율</th>
                  <th class="tg-zs35" rowspan="2" style="border-top: solid">미화환산율</th>
                  <th class="tg-zs35" rowspan="2" style="border-top: solid;border-right:none;text-align:center">환율동향</th>
               </tr>
               <tr>
                  <th class="tg-zs35" style="width:100px">사실때</th>
                  <th class="tg-zs35" style="width:100px">파실때</th>
                  <th class="tg-zs35" style="width:100px">보낼때</th>
                  <th class="tg-zs35" style="width:100px">받을때</th>
               </tr>
            </thead>
            <tbody>

               <c:forEach items="${exchangelist}" var="list">
                  <tr>
                     <td class="tg-0pky" style="border-left: none">${list.nationKr}</td>
                     <td class="tg-0pky">${list.cashBuyRate}</td>
                     <td class="tg-0pky">${list.cashSellRate}</td>
                     <td class="tg-0pky">${list.transferSendRate}</td>
                     <td class="tg-0pky">${list.transferReceiveRate}</td>
                     <td class="tg-0pky">${list.buyBasicRate}</td>
                     <td class="tg-0pky" style="border-right: none">${list.usdChangeRate}</td>
                     <td class="tg-0pky" style="border-right: none">
                     
                        <div class="menu">
                          
                         <a href="#" onclick="showChart()" data-bs-toggle="modal" data-bs-target="#exampleModal" style="color:black">차트보기</a>
                           
                     
      
                           </div>
                        </td>
                     <Br>
                  
               </c:forEach>
            </tbody>
         </table>

         <div align="center" style="margin-top: 50px">

         </div>

      </div>

   </div>
   
   <!-- 차트보기 -->
    <div class="modal fade" id="exampleModal" tabindex="-1"
      aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" style="margin-left:370px">
         <div class="modal-content" style="border: 0.5rem solid #0c8b8b;width:1000px">
            <div class="modal-header" style="background-color:#f6f6f6">
            <h5 class="modal-title" id="exampleModalLabel">
            <div class="basicfont">환율 동향</div>
            </h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal"
            aria-label="Close"></button>
            </div>
            
            <div class="modal-body" style="height:700px;text-align:center;background-color:#f6f6f6">
           <div style="font-family:Pretendard-Regular"></div>
          <!-- 리스트 보여주기 -->
 
         <div class="container" style="margin-left: 30px">
              <div class="mt-2" align="center" style="padding-right:150px">
           
           <div style="margin-top: 30px;">
            
            <select class="" id="sel_date" name="chooseMonth" onchange="month(this.value);" >
                  <option value="3">3개월</option>
                  <option value="6">6개월</option>
                  <option value="12">12개월</option>
              </select> 
               
            
          
      <h2 style="font-family: 'Noto Sans KR', sans-serif; margin-left: 50px; margin-top:0px; display:inline-block" class="animate__animated animate__flipInX">미국 USD</h2>
        </div>
      
      </div>
      
      <div align="center">
      
      <figure class="highcharts-figure">
          <div id="container" style="margin-top:50px">

        <p class="highcharts-description"></p>
        </div>
       </figure>
       
       
       </div>
         </div>

  </section> 
  			<div >
            <div class="modal-footer" >
            <button type="button" class="btn btn-secondary"
               data-bs-dismiss="modal">취소</button>
            <button type="button" class="btn btn-primary"
               onclick="nextStep()" data-bs-dismiss="modal" >확인</button>
            </div>
            </div>
            </div>
         </div>
      </div>
   </div>
      
    
   
   <!-- 모달 끝 -->
   
      
     <script src="https://unpkg.com/typewriter-effect@2.3.1/dist/core.js"></script>
   <script>
       
var app = document.getElementById('notificationBar');
      var typewriter = new Typewriter(app, {
         loop : true,
         cursor : "",
      });
      typewriter.typeString('실시간 환율 조회').pauseFor(2500)
            .deleteAll().typeString('실시간 환율 조회').pauseFor(2500)
            .deleteAll().typeString('실시간 환율 조회').pauseFor(2500)
            .start();
   </script>
   <script>
      async function nextStep() {
               $.LoadingOverlay("show", {
                 image :"/img/finalload.gif",
                 imageAutoResize : false,
                  maxSize: 100,
                  text : "차트로 이동 중 입니다.",
                   fontawesome      : "fa fa-spinner fa-pulse fa-fw",
                  fontawesomeColor : "#FFFFFF"
               });
               
               setTimeout(function(){
                  $.LoadingOverlay("text", "잠시만 기다려 주십시오");
               }, 2000);
               
               setTimeout(function(){
                  location.href = "${ pageContext.request.contextPath}/chart";
               }, 1000);
            }
      
      document.getElementById('now_date').valueAsDate = new Date();
      
      
      </script>
      <script>
       //3개월전
      $(document).ready(function(){
         $.ajax({
                   url: '${pageContext.request.contextPath}/ex_otherrate',
                   method: 'get',
                   success: function(data){
      //                 alert('성공');
                      console.log(data);
                     
                      tmp = [];
                      for(let i = 0 ; i < data.length; i++){
                         data1 = [parseInt(data[i].rate_date), parseInt(data[i].rate)];
                         tmp.push(data1);
                      }
                      console.log(tmp)
                      
             
                       Highcharts.chart('container', {
                               chart: {
                                   zoomType: 'x'
                               },
                               title: {
                                   text: ''
                               },
                               subtitle: {
                                   text: document.ontouchstart === undefined ?
                                       '3개월 환율 동향' : 'Pinch the chart to zoom in'
                               },
                               xAxis: {
                                   type: 'datetime'
                               },
                               yAxis: {
                                   title: {
                                       text: 'Exchange rate'
                                   }
                               },
                               legend: {
                                   enabled: false
                               },
                               plotOptions: {
                                   area: {
                                       fillColor: {
                                           linearGradient: {
                                               x1: 0,
                                               y1: 0,
                                               x2: 0,
                                               y2: 2
                                           },
                                           stops: [
                                               [0, Highcharts.getOptions().colors[7]],
                                               [1, Highcharts.color(Highcharts.getOptions().colors[0]).setOpacity(0).get('rgba')]
                                           ]
                                       },
                                       marker: {
                                           radius: 2
                                       },
                                       lineWidth: 1,
                                       states: {
                                           hover: {
                                               lineWidth: 1
                                           }
                                       },
                                       threshold: null
                                   }
                               },
      
                               series: [{
                                   type: 'area',
                                   name: 'USD to EUR',
                                   data: tmp
                               }]
                           });
                   },
                   error: function(){
                      alert('실패');
                   }
                })
          });
       
      //option에 따라서(주피터에서 이미 120으로 설정해서 6개월분을 가지고 옴)
      $(document).ready(function(){
          $("#sel_date").change(function(){ // 체인지 이벤트
                 ; // 현재 변화된 객체의 value를 가져 올 수 있음.
                
          $('#container').empty();
          $.ajax({
               url: '${pageContext.request.contextPath}/ex_rate',
               method: 'get',
               success: function(data){
      //             alert('성공');
                  console.log(data);
                  
                  tmp = [];
                  for(let i = 0 ; i < data.length; i++){
                     data1 = [parseInt(data[i].rate_date), parseInt(data[i].rate)];
                     tmp.push(data1);
                  }
                  console.log(tmp)
                  
         
                   Highcharts.chart('container', {
                           chart: {
                               zoomType: 'x'
                           },
                           title: {
                               text: ''
                           },
                           subtitle: {
                               text: document.ontouchstart === undefined ?
                                   '6개월 환율 동향' : 'Pinch the chart to zoom in'
                           },
                           xAxis: {
                               type: 'datetime'
                           },
                           yAxis: {
                               title: {
                                   text: 'Exchange rate'
                               }
                           },
                           legend: {
                               enabled: false
                           },
                           plotOptions: {
                               area: {
                                   fillColor: {
                                       linearGradient: {
                                           x1: 0,
                                           y1: 0,
                                           x2: 0,
                                           y2: 2
                                       },
                                       stops: [
                                           [0, Highcharts.getOptions().colors[7]],
                                           [1, Highcharts.color(Highcharts.getOptions().colors[0]).setOpacity(0).get('rgba')]
                                       ]
                                   },
                                   marker: {
                                       radius: 2
                                   },
                                   lineWidth: 1,
                                   states: {
                                       hover: {
                                           lineWidth: 1
                                       }
                                   },
                                   threshold: null
                               }
                           },
      
                           series: [{
                               type: 'area',
                               name: 'USD to EUR',
                               data: tmp
                           }]
                       });
               },
               error: function(){
                  alert('실패');
               }
            })
            
         })
      });
            
        
      </script>
</body>
</html>