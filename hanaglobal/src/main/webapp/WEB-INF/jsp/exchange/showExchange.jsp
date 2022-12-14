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
<!-- ???????????? noto sans font  -->
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
   text-align: center;/*????????????*/
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
  display: inline-block;/*?????? ?????? ???????????? ?????? li*/
  padding: 0 20px 0 0;
}
.menu a{
   font-family: 'Pretendard-Regular';
   color: #black;/*????????????*/
   font-weight: 200;/*????????????*/
   text-decoration: none;/*a href ?????? ??? ?????? ?????? ??????*/
   line-height: 40px;
}
.menu a:after {/*after ????????????*/
   display:block;/*a????????? ?????? ???????????? ??????*/
   width:70px;/*???????????? ?????? ????????? ????????? ???????????? ?????? ?????? width ??????*/
/*?????? ???????????? ?????? ???????????? width ??????*/
   content: '';
   border-bottom: solid 2px  rgb(64, 128, 128);
   margin-left:20px;
   transform: scaleX(0);/*????????? 0?????? ???????????? ???????????? ?????? ??????*/
   transition: transform 250ms ease-in-out; /*?????? ??????*/
}
.menu a:hover:after {
   transform: scaleX(1);/*a ????????? hover??? ?????? ?????????*/
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
   <h2 style="margin-left: 600px; margin-top:100px; display:inline-block">????????? ?????? ??????</h2>
       <div  style="color:#657c9d;font-family: 'HanaB.ttf'"></div>   
      <div class="hanafont" style="margin-left: 250px; margin-top: 30px">

         <div style="padding-left: -700px;">
            <h6 class="tar s1" id="set_date" style="color: #007297" align="left" font-family: 'HanaB.ttf'"></h6>
            ?????? ?????? ??? ?????? : ??????????????? * (1+???????????? ?????? ??? ???????????????)<br> ?????? ?????? ??? ?????? : ???????????????
            * (1-???????????? ?????? ??? ???????????????)<br>

         </div>
         <script>
      
            Date.prototype.format = function(f) {
               ????????if (!this.valueOf()) return " ";
               ????????var d = this;
               ????????return f.replace(/(yyyy|yy|MM|dd|E|hh|mm|ss|a\/p)/gi, function($1) {
                  ????????????????switch ($1) {
                     ????????????????????????case "yyyy": return d.getFullYear();
                     ????????????????????????case "yy": return (d.getFullYear() % 1000).zf(2);
                     ????????????????????????case "MM": return (d.getMonth() + 1).zf(2);
                     ????????????????????????case "dd": return d.getDate().zf(2);
                     ????????????????????????case "hh": return ((h = d.getHours() % 12) ? h : 12).zf(2);
                     ????????????????????????case "mm": return d.getMinutes().zf(2);
                     ????????????????????????case "ss": return d.getSeconds().zf(2);
                     ????????????????????????case "a/p": return d.getHours() < 12 ? "??????" : "??????";
                     ????????????????????????default: return $1;
                  ????????????????}
               ????????});
            };
            ??String.prototype.string = function(len){var s = '', i = 0; while (i++ < len) { s += this; } return s;};
             String.prototype.zf = function(len){return "0".string(len - this.length) + this;};
             Number.prototype.zf = function(len){return this.toString().zf(len);};

            document.getElementById("set_date").innerHTML = new Date().format("yyyy??? MM??? dd??? a/p hh??? mm??? ss???");
      </script>
        


      </div>

      <div class style="margin-left: 250px; margin-top:-1350px">
         <table class="tg" width="900">
            <thead>
               <tr>
                  <th class="tg-zs35" rowspan="2" style="border-top: solid;border-top: solid;border-left:none">??????</th>
                  <th class="tg-zs35" colspan="2" style="border-top: solid">??????</th>
                  <th class="tg-zs35" colspan="2" style="border-top: solid">??????</th>
                  <th class="tg-zs35" rowspan="2" style="border-top: solid">???????????????</th>
                  <th class="tg-zs35" rowspan="2" style="border-top: solid">???????????????</th>
                  <th class="tg-zs35" rowspan="2" style="border-top: solid;border-right:none;text-align:center">????????????</th>
               </tr>
               <tr>
                  <th class="tg-zs35" style="width:100px">?????????</th>
                  <th class="tg-zs35" style="width:100px">?????????</th>
                  <th class="tg-zs35" style="width:100px">?????????</th>
                  <th class="tg-zs35" style="width:100px">?????????</th>
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
                          
                         <a href="#" onclick="showChart()" data-bs-toggle="modal" data-bs-target="#exampleModal" style="color:black">????????????</a>
                           
                     
      
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
   
   <!-- ???????????? -->
    <div class="modal fade" id="exampleModal" tabindex="-1"
      aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" style="margin-left:370px">
         <div class="modal-content" style="border: 0.5rem solid #0c8b8b;width:1000px">
            <div class="modal-header" style="background-color:#f6f6f6">
            <h5 class="modal-title" id="exampleModalLabel">
            <div class="basicfont">?????? ??????</div>
            </h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal"
            aria-label="Close"></button>
            </div>
            
            <div class="modal-body" style="height:700px;text-align:center;background-color:#f6f6f6">
           <div style="font-family:Pretendard-Regular"></div>
          <!-- ????????? ???????????? -->
 
         <div class="container" style="margin-left: 30px">
              <div class="mt-2" align="center" style="padding-right:150px">
           
           <div style="margin-top: 30px;">
            
            <select class="" id="sel_date" name="chooseMonth" onchange="month(this.value);" >
                  <option value="3">3??????</option>
                  <option value="6">6??????</option>
                  <option value="12">12??????</option>
              </select> 
               
            
          
      <h2 style="font-family: 'Noto Sans KR', sans-serif; margin-left: 50px; margin-top:0px; display:inline-block" class="animate__animated animate__flipInX">?????? USD</h2>
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
               data-bs-dismiss="modal">??????</button>
            <button type="button" class="btn btn-primary"
               onclick="nextStep()" data-bs-dismiss="modal" >??????</button>
            </div>
            </div>
            </div>
         </div>
      </div>
   </div>

     <script src="https://unpkg.com/typewriter-effect@2.3.1/dist/core.js"></script>
   <script>
      ??
var app = document.getElementById('notificationBar');
      var typewriter = new Typewriter(app, {
         loop : true,
         cursor : "",
      });
      typewriter.typeString('????????? ?????? ??????').pauseFor(2500)
            .deleteAll().typeString('????????? ?????? ??????').pauseFor(2500)
            .deleteAll().typeString('????????? ?????? ??????').pauseFor(2500)
            .start();
   </script>
   <script>
      async function nextStep() {
               $.LoadingOverlay("show", {
                 image :"/img/finalload.gif",
                 imageAutoResize : false,
                  maxSize: 100,
                  text : "????????? ?????? ??? ?????????.",
                   fontawesome      : "fa fa-spinner fa-pulse fa-fw",
                  fontawesomeColor : "#FFFFFF"
               });
               
               setTimeout(function(){
                  $.LoadingOverlay("text", "????????? ????????? ????????????");
               }, 2000);
               
               setTimeout(function(){
                  location.href = "${ pageContext.request.contextPath}/chart";
               }, 1000);
            }
      
      document.getElementById('now_date').valueAsDate??=??new??Date();
      
      
      </script>
      <script>

      $(document).ready(function(){
         $.ajax({
                   url: '${pageContext.request.contextPath}/ex_otherrate',
                   method: 'get',
                   success: function(data){
      //                 alert('??????');
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
                                       '3?????? ?????? ??????' : 'Pinch the chart to zoom in'
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
                      alert('??????');
                   }
                })
          });
       
     
      $(document).ready(function(){
          $("#sel_date").change(function(){ 
                 ; 
                
          $('#container').empty();
          $.ajax({
               url: '${pageContext.request.contextPath}/ex_rate',
               method: 'get',
               success: function(data){
      //             alert('??????');
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
                                   '6?????? ?????? ??????' : 'Pinch the chart to zoom in'
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
                  alert('??????');
               }
            })
            
         })
      });
            
        
      </script>
</body>
</html>