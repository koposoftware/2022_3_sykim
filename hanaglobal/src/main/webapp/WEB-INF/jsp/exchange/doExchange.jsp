   <%@page import="org.apache.tomcat.util.json.JSONParser"%>
   <%@page import="java.io.IOException"%>
   <%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
   <!DOCTYPE html>
   <html>
   <head>
   
   <meta charset="UTF-8">
   <title>환전지갑</title>
   <!-- Template Main CSS File -->
   <link href="https://webfontworld.github.io/amore/AritaBuri.css"
   rel="stylesheet">

   <!-- Favicons -->
   <link href="/img/favicon.png" rel="icon">
   <link href="/img/apple-touch-icon.png" rel="apple-touch-icon">
   <link href="/css/style.css" rel="stylesheet">
   <!-- Google Fonts -->
   <link
   href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700"
   rel="stylesheet">
   <script src="/js/jquery-3.6.0.min.js"></script>
   <!-- JavaScript Bundle with Popper -->
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
   <script src="https://kit.fontawesome.com/d784f45187.js" crossorigin="anonymous"></script>
   <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
   </head>

<script src="https://cdn.jsdelivr.net/npm/gasparesganga-jquery-loading-overlay@2.1.7/dist/loadingoverlay.min.js"></script>
<style>
@font-face {
    font-family: 'HanaB.ttf';
    src: url('/font/HanaB.ttf');
    font-weight: 400;
    font-style: normal;
}

.swal2-styled.swal2-confirm {
	border: 0;
	border-radius: 0.25em;
	background: initial;
	background-color: #b5b5b5;
	color: #fff;
	font-size: 1em;
}
</style>

   <style>
   .exchange_main_bn {
   height: 125px;
   padding: 15px 15px;
   max-width:100%;
   background: url(/img/caltest1.png); 
  
   background-size: cover;
   background-repeat: no-repeat;
   box-sizing: border-box;
   opacity: 1;
   z-index: -0.5;
   }

   .padding_top {
   margin-top: -120px;
   z-index: 7;
   
   }

   .text_style {
   color: white;
   font-size: 15;
   }
   
  .couponimg{
   background: url(/img/excoupon.png); 
   z-index:1;
  }
  
  @font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
}
   </style>
<header style="border-bottom: 2px solid rgb(64, 128, 128); background: #fff;" class="header fixed-top">
	<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>
</header>



   <!-- 계산기 Modal -->
   <body>
   <div class="modal fade" id="Modal" tabindex="-1"
      aria-labelledby="ModalLabel" aria-hidden="true" style="box-shadow: 5px 10px 30px grey;background: #4a4747cc">
      <div class="modal-dialog">
      
         <div class="modal-content" style="background-color:#fff;width:500px;margin-left:40px;border: 0.5rem solid #0c8b8b;">
            <div class="modal-header" style="background-color:#f7ffff">
            <h5 class="modal-title" id="ModalLabel" style="color:#00b19a;    letter-spacing: -0.84px;text-align: center;">계산기</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal"
            aria-label="Close"></button>
            </div>
            <div style="border-top:2px solid #99b7b4;margin-left:5px;margin-right:5px">
            <div class="modal-body"  style="border-radius: 0.25em;margin-top:15px;margin-left:11px">
<!--             style="background-color: #f3f3f3;margin-left:25px;border: 5px solid #74a4a4;border-radius: 0.25em;" -->
            <!-- 계산식을 div안으로 묶어볼 수 있음 묶어서 해보기-->
            <div class="d-flex" style="margin-left:25px;">
            <!-- 수수료 선택 -->
            <div class="_mb10" style="text-align:left;display:block">
            <select class="me-2" id="sel_account_01" onclick="autoCal2()" style="width:118px;height:40px;">
               <option value="1">매매기준율</option>
               <option value="2">송금보내실때</option>
               <option value="3">송금받으실때</option>
               <option value="4">현찰사실때</option>
               <option value="5">현찰파실때</option>
            </select>
            </div>

            <!-- 국가선택 cs 입히기 전 -->
            <div class="exchange-rate">
            <div class="currency-info">
               <div class="select-currency">
                  <select class="me-2" id="sel_account" name="currency" style="width:60px;height:40px;"
                  onchange="selectCountry(this.value);">
                  <option value="미국달러(USD)">미국</option>
                  <option value="일본엔(JPY)">일본</option>
                  <option value="유럽유로(EUR)">유럽</option>
                  <option value="중국위안(CNY)">중국</option>
<!--                   <option value="캐나다달러(CAD)">캐나다</option> -->
                  </select>
               </div>
            </div>
            </div>
            
            <!-- 입력창 -->
            <div class="input-money d-flex">
               <input type="text" id="calc_forAmt" name="calc_forAmt" maxlength="15" 
                  title="환율계산할 금액 입력" value="1"
                  onkeyup="setNumeric(this); autoCal2();" style="width:154px" /> 
                  <div class="unit" id="unit" style="margin-top:5px;margin-left:7px;font-family:Pretendard-Regular">달러</div>
               <!-- 20160722 텍스트 겹침현상으로 위치 및 class속성값 수정 -->
            </div>
            </div>

            </div>

            <span class="exchange" style="background-color:#fff"><span class="blind" style="margin-left:226px;margin-bottom:80px;font-family: 'Noto Sans KR', sans-serif;margin-right:10px;justify-content:center;color:#0c8b8b;size:100px">  </span></span>
            
            <i class="fa-solid fa-arrow-down" style="width:500px;margin-left:-10px">
            </i>
            
               <!--         
       <hr style="border: 1px solid black"> -->
            <!-- 외화 영역 -->
            
            <div style="border-bottom: 0.25em;">
            <div class="currency-info d-flex" style="background-color: #fff;margin-left:30px;border-radius: 0.5em;margin-top:7px">
            <div class="select-currency d-flex">
               <div class="img" style="background-color:#f7ffff;margin-left:20px">
               <img src="https://airport.mibank.me/images/flag/big/flag_kr@3x.png" alt="KR" style="width:50px;">&nbsp;
               </div>
               <div class="currency KRW" style="margin-top:8px;font-size:11px;font-family:Pretendard-Regular;margin-left:0px">대한민국KRW&nbsp;</div>
            </div>
            <div class="input-money" style="background-color:#fff;style="font-family:Pretendard-Regular">
               <input type="text" id="calc_krwAmt" name="calc_krwAmt" style="width:231px;height:40px;margin-left:6px"  title="한화 금액 입력" />
               <span class="unit">원</span>
               <!-- 20160722 텍스트 겹침현상으로 위치 및 class속성값 수정 -->
            </div>
            </div>
         <div class="date" id="set_date" style="text-align:center;background-color:#fff;color:#99b7b4;margin-top:20px;border-bottom:2px solid #99b7b4;padding-bottom:20px"></div>
         </div>
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
               <ul class="list_type1 s2" style="background-color:#f7ffff;margin-bottom:3px">
                  <div class="smallfont" style="background-color:#f7ffff;margin-top:10px">
                  <li>환율계산기는 단순 참고용으로 위 계산결과는 환율변동 또는 우대율 적용에 따라<br>  실제 거래 시
                     적용되는 환율과 다를 수 있습니다.</li>
                  <li>현재 고시된 환율은 미달러 기준 1만 달러 상당액 미만 시 적용되는 환율입니다.<br>(단,
                     USD, EUR, JPY, GBP, CAD, NZD, AUD, CNY, CHF, HKD, SGD, AED,
                     THB를 <br> 제외한  기타 통화는 미달러 기준 5만 달러 상당액 미만)
                  </li>
                  </div>
               </ul>
            
            <div class="modal-footer" style="background-color:#f7ffff">
               <button type="button" class="btn btn-secondary"
                  data-bs-dismiss="modal" >취소</button>
               <button type="button" class="btn btn-secondary"
                  onclick="nextStep()" style="margin-right:150px">확인</button>
            </div>
            </div>
         </div>
      </div>
   </div>




   <!-- 쿠폰 사용하기 모달 수정필요 -->
   <div class="modal fade" id="couponModal" tabindex="-1"
      aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content" style="border: 0.5rem solid #0c8b8b">
            <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">
            <div class="basicfont" text-align:center">환율우대쿠폰</div>
            </h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal"
            aria-label="Close"></button>
            </div>
            <div class="modal-body">
           
            
            <!-- 시작 -->
            <div class="card" style="width: 29em;">
  			<img src="/img/giftunbox1.gif" class="card-img-top" alt="..." style="height:17em;">
 		 <div class="card-body">
    	<div><div class="card-title">
     
        <div class="d-flex mt-5">
       
     <div class="">   
     <img src="/img/excoupon.png"  style="width:27em" onclick="displaySelectedCoupon()">
     		<div style="display: flex; margin-left:340px; margin-top:-110px; ">
	          <p id="rate" class="text" style="color:#fff;font-size:30px;font-weight:700"></p>
	          <p id="rate" class="text" style=" color:#fff;font-size:30px;font-weight:700">%</p>
     		</div>
                  </div>
                </div>
                 <div class="modal-footer">
            <button type="button" class="btn btn-secondary"
               data-bs-dismiss="modal"  onclick="showSelectedCoupon(); autoCal()" style="margin-top:50px;margin-right:120px">쿠폰사용하기</button>
               
            </div>
                
                
                
               
              
                
              </div>
            </div>
            
          </div>
        </div>
      </div>
    </div>
   
  </div>

     </div> 
 
     </div>

</div>

   <div class="modal fade" id="exampleModal" tabindex="-1"
      aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content" style="border: 0.5rem solid #0c8b8b;margin-left: 40px">
            <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">
            <div class="basicfont" style="color:#00b19a;">환전하기</div>
            </h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal"
            aria-label="Close"></button>
            </div>
            <div class="modal-body">
            <div class="font">지금 환전하시겠습니까?</div>
            <Br>
            <div class="smallfont">'예'를 누르시면 환전이 완료되어 완료된 거래는 취소할 수 없습니다.</div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary"
               data-bs-dismiss="modal">취소</button>
            <button type="button" class="btn btn-secondary"
               onclick="nextStep2()" style="margin-right:140px">환전</button>
            </div>
            </div>
         </div>
      </div>
   </div>


 <div class="container" style="margin-right:170px;margin-top:0px">
 	<h2 style="font-family: 'Noto Sans KR', sans-serif; margin-left: 510px; margin-top:100px; display:inline-block">
			외화환전</h2>
         <div class="row gtr-uniform">
            <div align="center">
            <div class="container">
            <br>

          
            <br>

   
            <div style="box-shadow: 5px 10px 30px grey;">
               <dl>
                  <div class="exchange_main_bn" style="color:grey"></div>
                  <div class="padding_top">
                  
                  <div class="text_style"  style="color:black;margin-left:20px">
                     환율 계산기
                     </dt>
                     <dd>외화 환전 예상금액을 계산해 보아요</dd>
                  </div>
               </dl>
      
               <button type="button" class="btn " data-bs-toggle="modal"
                  data-bs-target="#Modal" style="margin-left: 20px; background-color:#b5b5b5;color:#fff">계산하기</button>
            </div>

            </div>

            <div class="container">
            <form method="post" action="${pageContext.request.contextPath }/exchange/ResultOfExchange"  role="form">
                     <br> <br> <br> <br>
                     <table class="table">
                     <tr>
                        <th style="width: 270px; background-color:  #f4f4f4">통화종류</th>
                        <td><select name="currency" id="sel_account_02" onchange=""
                        class="form-control">
                           <option value="a" selected disabled>환전할 통화를 선택하세요</option>
                           <option value="미국달러(USD)">미국달러(USD)</option>
                           <option value="일본엔(JPY)">일본엔(JPY)</option>
                           <option value="유럽유로(EUR)">유럽유로(EUR)</option>
                           <option value="중국위안(CNY)">중국위안(CNY)</option>
                           <option value="홍콩달러(HKD)">홍콩달러(HKD)</option>
                           <option value="호주달러(AUD)">호주달러(AUD)</option>
                           <option value="영국파운드(GBP)">영국파운드(GBP)</option>
                           <option value="캐나다달러(CAD)">캐나다달러(CAD)</option>
                           <option value="스위스프랑(CHF)">스위스프랑(CHF)</option>
                           <option value="싱가포르달러(SGD)">싱가폴달러(SGD)</option>
                           <option value="뉴질랜드달러(NZD)">뉴질랜드달러(NZD)</option>
                           <option value="태국바트(THB)">태국바트(THB)</option>
                        </select></td>
                     </tr>
                     <tr>
                        <th style="width: 270px; background-color:  #f4f4f4">사는금액(외화)</th>
                        <td><input type="text" autocomplete="off"
                        class="form-control" id="forAmt_01" name="forAmt_01"
                        placeholder="금액을 입력하세요" style="background-color:white" onkeyup="setNumeric(this); autoCal()" /></td>
                        
                     </tr>
                     <tr>
                        <th style="width: 270px; background-color:  #f4f4f4">현찰 살 때(고시환율)</th>    <!-- 추가한 부분 -->
                        <td><input  autocomplete="off" class="form-control" id="krwAmtTxt" style="background-color:white" name="krwAmtTxt" readonly></input> <span class="unit"></span></td>
                        
                     </tr>
                     
                     <tr>
                        <th style="width: 270px; background-color:  #f4f4f4">우대율(%)</th>
                        <td><input autocomplete="off"  class="form-control" id="ex_per" name="ex_per" value="85" style="background-color:white" readonly></input><span></span></td>
                        
                     </tr>
                     <tr>
                        <th style="width: 270px; background-color:  #f4f4f4">쿠폰 할인율(%)</th>
                        <td>
                        <div id="percentCoupon" style="margin-left:10px"></div>
                        <button class="btn nextBtn " type="button"
                           data-bs-toggle="modal" 
                           style="margin-left: 230px;  background-color:#b5b5b5;color:#fff" id="useCoupon" onclick="percent()" data-bs-target="#couponModal">쿠폰사용</button>
                     </tr>
                     
                     <tr>
                        <th style="width: 270px; background-color:  #f4f4f4">총 우대율(%)</th>
                        <td>
                        <input class="form-control" id="R_ex_per" name="R_ex_per" readonly style="background-color:white"></input><span></span>
                        </td>
                     </tr>
                     
                     <tr>
                        <th style="width: 270px; background-color: #f4f4f4">우대적용환율</th>       <!-- 추가한 부분 -->
                        <td><input class="form-control" id="basicEx" name="basicEx" readonly style="background-color:white"></input> <span class="unit"></span></td>
                        
                     </tr>
                     <tr> 
                        <th style="width: 270px; background-color: #f4f4f4">통화당 우대금액</th>        <!-- 추가한 부분 -->
                        <td>
                        <input class="form-control" id="preferentialAmount" name="preferentialAmount" readonly style="background-color:white"></input> <span class="unit"></span>
                        </td>
                     </tr>
                     

                     <tr>
                        <th style="width: 270px; background-color:  #f4f4f4">출금금액(원)</th>
                        <td><input class="form-control"
                        id="exchangecharge" name="exchangecharge"
                        value="" readonly style="background-color:white" /><span class="unit" readonly></input></td>
                     </tr>
                     </table>

                      
                     <table class="table">
                     <tr>
                        <th style="width: 270px; background-color:  #f4f4f4">수령인</th>
                        <td><input class="form-control"
                        type="hidden" id="name" name="name" 
                        value="${loginVO.name }" /><div style="margin-left:10px">${loginVO.name}</div></td>
                     </tr>
                     <tr>
                        <th style="width: 270px; background-color: #f4f4f4">수령희망지점</th>
                        <td>
                        
                        <select name="location" id=""
                        class="form-control"
                        onchange="categoryChange(this)" class="form-control" >
                         
                           <option value="a" selected disabled>영업점을 선택하세요 </option>
                           <option value="인천국제공항">인천국제공항</option>
                           <option value="김포공항">김포국제공항</option>
                           <option value="김해공항">김해국제공항</option>
                           <option value="여의도점">여의도점</option>
                           <option value="명동점">명동점</option>
                           <option value="강남지점">강남지점</option>  
                           <option value="하남점">하남점</option>
                           <option value="평택점">평택점</option>
                           <option value="은평점">은평점</option>
                        </select>
                        </td>
                     </tr>
                     <tr>
                        <th style="width: 270px; background-color:  #f4f4f4">수령희망일</th>
                        <td><input type="date" id=""  name="pickupdate"  
                        class="form-control"   
                        max="2022-12-31" /></td>
                     </tr>
                     
                      </table>
                    
                  
                   
                    <table class="table ">
                     <tr>
                        <th style="width: 270px; background-color:  #f4f4f4">출금계좌번호</th>
                        <td>
                        <div id="make" name="" class=""></div>
                         <select name="showAccount"
                        id="showAccount" class="form-control" 
                        aria-describedby="inputGroupSuccess1Status">
                              
                  <option value="account" >계좌를 선택하세요</option>
                  <c:forEach items="${ allaccount }" var="account">
                  <option value="account">${account.accountNo}</option>
                  </c:forEach>
            

                        </select>
                        </td>
                     </tr>
                     
                     
                     <tr>
                        <th style="width: 270px; background-color: #f4f4f4">비밀번호</th>
                        <td><input type="password" id="" name=""
                        class="form-control"
                        aria-describedby="inputGroupSuccess1Status"
                        placeholder="비밀번호 4자리를 입력하세요" /> <input type="hidden"
                        id="pwd" name="pwd"></td>
                     </tr>
                     
                     </table>
                     <input type="hidden" id="" name="" value="${loginVO.id}">
                     <input class="btn" type="submit" button type="button" class="btn3" data-bs-toggle="modal" data-bs-target="#exampleModal" style="margin-left: 62px;margin-top:-10px; background-color:#b5b5b5;color:#fff" value="환전하기" ></button>
                  </div>
                  </div>
               </div>
               
            </form>
            
            </div>
            </div>
            </section>




            <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
            <!-- Core theme JS-->
            <script src="/js/jquery-3.6.0.min.js"></script>
            <script src="js/scripts.js"></script>
            <script>
               async function process() {
                   $.LoadingOverlay("show", {
                      image :"",
                      text : "상담사 매칭 중 입니다."
                   });
                   
                   setTimeout(function(){
                      $.LoadingOverlay("text", "잠시만 기다려 주십시오");
                   }, 2000);
                }
                
               function btn(){
                  setTimeout(function() { 
                   $('#bloodModal').hide();
                   }, 5000),
                    Swal.fire({
                       title: '환전하시겠습니까',
                       width: 600,
                       padding: '2em',
                       margin-left:100,
                       color: '#5d6666',
                       background: '#fff url(/img/trees.png)',
                       backdrop: `
                        rgba(0,0,0,0.65)
                         url("/images/nyan-cat.gif")
                         left top
                         no-repeat
                       `
                     })
               
               }
               </script>
               
                  <script>
                  var cashbuy = 0; // 현찰 사실때
                  var coupon_per = 0; // 쿠폰적용환율
               
                  var preferential_fee = 0; // 우대수수료
         
                  function nextStep() {
                     location.href = "${ pageContext.request.contextPath}/exchange/doExchange"
                  }   
               
  
                  function login() {
                     location.href = "${pageContext.request.contextPath}/login"
                  }
               
   
                  function nextStep2() {
                     location.href = "${ pageContext.request.contextPath}/exchange/ResultOfExchange"
                  }
               
          
                  function percent() {
                     $('#useCoupon').css('display','none');
                        $.ajax({
                           url : '${pageContext.request.contextPath}/coupon/useCoupon',
                           method : 'get',
                           data :  {
                           id :  '${loginVO.id}',
                           },
                           success : displayCoupon
                           ,error : function(){
                           alert('실패');
                        },
                        
                           
                        })    
                     
                     
                  }
               
                 
                  function displayCoupon(result){
                     let list = result
                     let str =''
                     console.log(result);
      
                     $('#rate').text(result.pop().RATE)
                  }
                  
                  
              
                  function displaySelectedCoupon(){
                    let input=$('#rate').text()*1  
                     $('#percentCoupon').empty();     
                     console.log("input"+input);
                     $('#percentCoupon').text(input); 
                     $('#percentCoupon').css('display','none');
                     coupon_per = input;
                     change_ex_per();
                  }
                  
                  function showSelectedCoupon(){
                     $('#percentCoupon').css('display','block');
                     coupon_per = $('#rate').text()*1 
                     console.log(coupon_per);
                  }
                  
                  function setNumeric(num) {
                     var numeric = Number(num.value);
                     num.value = numeric;
                  }
               
               
                  var num2 = 0;

                  function autoCal2(){
                  
                  var currency = 0; 
               
                  var current = 0;
                  var current2 = 0;
                  var calc_total = 0;
               
                  var result = new Array();
                  var result2 = new Array();
               
                  currency = $("#sel_account option:selected").val();
                  var type = $("#sel_account_01 option:selected").val();
               
                  if(type=="1"){
                  <c:forEach items="${exchangelist}" var="item">
                     result.push("${item.buyBasicRate}");
                  </c:forEach>
                  }
                  if(type=="2"){
                  <c:forEach items="${exchangelist}" var="item">
                     result.push("${item.transferSendRate}");
                  </c:forEach>
                  }
                  if(type=="3"){
                  <c:forEach items="${exchangelist}" var="item">
                     result.push("${item.transferReceiveRate}");
                  </c:forEach>
                  }
                  if(type=="4"){
                  <c:forEach items="${exchangelist}" var="item">
                     result.push("${item.cashBuyRate}");
                  </c:forEach>
                  }
                  if(type=="5"){
                  <c:forEach items="${exchangelist}" var="item">
                     result.push("${item.cashSellRate}");
                  </c:forEach>
                  }
                  
                  <c:forEach items="${exchangelist}" var="item">
                     result2.push("${item.cashBuyRate}");
                  </c:forEach>
               
                  if (currency == "미국달러(USD)") {
                     current = result[0];
                     current2 = result2[0];
                  }
                  if (currency == '일본엔(JPY)') {
                     current = result[2];
                     current2 = result2[2];
                  }
                  if (currency == '유럽유로(EUR)') {
                     current = result[1];
                     current2 = result2[1];
                  }
                  if (currency == '중국위안(CNY)') {
                     current = result[3];
                     current2 = result2[3];
                  }
                  if (currency == '홍콩달러(HKD)') {
                     current = result[8];
                     current2 = result2[8];
                  }
               
               
               
                  $('#calc_forAmt').each(function(){
                     calc_total = Number($(this).val())*current;
                     num2 = Number($(this).val());
               
                     $('input[name="calc_krwAmt"]').val((calc_total).toFixed(2));
                  });
                  }
               
                  
                  function autoCal(){
                  
                  var currency = 0; 
                  
                  var total = 0;
                  var total2 = 0;
               
                  var current = 0;
                  var current2 = 0;
                  var current3 = 0;
               
               
                  var commission = 0;
                  var per3 = 0;
               
               
                  var result = new Array();
                  var result2 = new Array();
                  var result3 = new Array();
               
                  currency = $("#sel_account_02 option:selected").val();
                  var type = $("#sel_account_01 option:selected").val();
                  var ex_per = $('input[name="ex_per"]').val();
                  $('input[name="R_ex_per"]').val(Number(ex_per)+Number(coupon_per));
               
                  if(type=="1"){
                  <c:forEach items="${exchangelist}" var="item">
                     result.push("${item.buyBasicRate}");
                  </c:forEach>
                  }
                  if(type=="2"){
                  <c:forEach items="${exchangelist}" var="item">
                     result.push("${item.transferSendRate}");
                  </c:forEach>
                  }
                  if(type=="3"){
                  <c:forEach items="${exchangelist}" var="item">
                     result.push("${item.transferReceiveRate}");
                  </c:forEach>
                  }
                  if(type=="4"){
                  <c:forEach items="${exchangelist}" var="item">
                     result.push("${item.cashBuyRate}");
                  </c:forEach>
                  }
                  if(type=="5"){
                  <c:forEach items="${exchangelist}" var="item">
                     result.push("${item.cashSellRate}");
                  </c:forEach>
                  }
               
                  <c:forEach items="${exchangelist}" var="item">
                     result2.push("${item.cashBuyRate}");
                     result3.push("${item.buyBasicRate}");
                  </c:forEach>
                  
                  if (currency == "미국달러(USD)") {
                     current = result[0];
                     current2 = result2[0];
                     
                  }
                  if (currency == '일본엔(JPY)') {
                     current = result[2];
                     current2 = result2[2];
                  }
                  if (currency == '유럽유로(EUR)') {
                     current = result[1];
                     current2 = result2[1];
                  }
                  if (currency == '중국위안(CNY)') {
                     current = result[3];
                     current2 = result2[3];
                  }
                  if (currency == '홍콩달러(HKD)') {
                     current = result[8];
                     current2 = result2[8];
                  }
               
                  var value2 = $("#sel_account_02 option:selected").val();
                  if (value2 == "미국달러(USD)") {
                     current2 = result2[0];
                     current3 = result3[0];
                  }
                  if (value2 == "일본엔(JPY)") {
                     current2 = result2[2];
                     current3 = result3[2];
                  }
                  if (value2 == '유럽유로(EUR)') {
                     current2 = result2[1];
                     current3 = result3[1];
                  }
                  if (value2 == '중국위안(CNY)') {
                        current2 = result2[3];
                        current3 = result3[3];
                     }
                  
                  var num = 0;
               
                  var num3 = 0;
                  var coupon_per2 = 0;
               
                  console.log(current);
                  console.log(current2);
                  console.log(current3);
               
                  $('#forAmt').each(function(){
                  total = Number($(this).val())*current;
                  cashbuy = Number($(this).val())*current2;
                  num = Number($(this).val());
                  });
               
                  $('#forAmt_01').each(function(){
                  num3 = Number($(this).val());
                  total2 = Number($(this).val())*current2;
                  preferential_fee = (Number($(this).val())*((cashbuy-Number(current3))));
                  
                  coupon_per2 = Number(coupon_per)/100; 
                  
                  withdrawal_amount = (preferential_fee*(1-(0.85+coupon_per2))+Number(current3)*Number($(this).val()));
                  });
               
                  commission = cashbuy-total;
                  $('input[name="krwAmt"]').val(total);
               
                  var preferential_exchange_rate = (current2-current3)*(1-(0.85+coupon_per2))+Number(current3);
                  $('input[name="krwAmtTxt"]').val(current2);
                  $('input[name="basicEx"]').val(preferential_exchange_rate.toFixed(2));
                  
                  $('input[name="preferentialAmount"]').val((current2-preferential_exchange_rate).toFixed(2));
               
               
                  per3 = $('input[name="st_department"]').val();
               
                  if(type!='1'){
                  $('input[name="R_krwAmt"]').val(((1-per3/100)+current3)*num2);
                  }
               
                  
                  $('input[name="exchangecharge"]').val((preferential_exchange_rate*num3).toFixed(2));
                  }
                  
       
                  function selectCountry(value) {
                     $('#unit').empty();
                     if (value == '미국달러(USD)') {
                        $('#unit').append('달러');
                        autoCal2();
                     }
                     if (value == '일본엔(JPY)') {
                        $('#unit').append('(100)엔');
                        autoCal2();
                     }
                     if (value == '유럽유로(EUR)') {
                        $('#unit').append('유로');
                        autoCal2();
                     }
                     if (value == '중국위안(CNY)') {
                        $('#unit').append('위안');
                        autoCal2();
                     }
                     if (value == '캐나다달러(CAD)') {
                        $('#unit').append('달러');
                        autoCal2();
                     }
               
                  }
                  function change_ex_per(){
                     var per = $('input[name="ex_per"]').val();
                     console.log(coupon_per);
                     $('input[id="R_ex_per"]').val(Number(per)+Number(coupon_per));
                  }
                  </script>
               

            
   </body>
   </html>