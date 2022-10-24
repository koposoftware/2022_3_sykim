<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 글씨체 -->
<!-- <link href="https://webfontworld.github.io/amore/AritaBuri.css" rel="stylesheet"> -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
   href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500&display=swap"
   rel="stylesheet">
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
   rel="stylesheet">
</head>

<header
   style="border-bottom: 2px solid rgb(64, 128, 128); background: #fff;"
   class="header fixed-top">
   <jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"></jsp:include>
   <jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>
   <link href="/css/style.css" rel="stylesheet">
</header>
<style>
@font-face {
    font-family: 'HanaB.ttf';
    src: url('/font/HanaB.ttf');
    font-weight: 400;
    font-style: normal;
}

</style>


<body>

   <div class="container" style="margin-right: 100px; margin-top: 50px">
      
      <h2 style="font-family: 'HanaB.ttf', sans-serif; margin-left: 390px; margin-top: 100px; display: inline-block">
         SMS 맞춤 환율통지 서비스</h2><br>
         
       				
       <form method="post" class="mt-3 container"
         action="${pageContext.request.contextPath }/exchange/ResultOfTargetedExchange"
         role="form">
         <table style="width: 90%; margin-top: 50px" class="table">
            <tr>
               <th style="width: 270px; background-color: #f4f4f4">외화 선택
               <td><select name="currency" class="form-control" id="" onchange="selectCountry(this.value);" style="width:700px;height:40px;">
                     <option value="a" selected disabled>통화를 선택하세요</option>
                     <option value="미국달러(USD)">미국달러(USD)</option>
                     <option value="일본엔(JPY)">일본엔(JPY)</option>
                     <option value="유럽유로(EUR)">유럽유로(EUR)</option>
                     <option value="중국위안(CNY)">중국위안(CNY)</option>
                     <option value="홍콩달러(HKD)">홍콩달러(HKD)</option>
                     <option value="호주달러(AUD)">호주달러(AUD)</option>
                     <option value="영국파운드(GBP)">영국파운드(GBP)</option>
                     <option value="캐나다달러(CAD)">캐나다달러(CAD)</option>
                     <option value="스위스프랑(CHF)">스위스프랑(CHF)</option>
                     <option value="싱가폴달러(SGD)">싱가폴달러(SGD)</option>
                     <option value="뉴질랜드달러(NZD)">뉴질랜드달러(NZD)</option>
                     <option value="태국바트(THB)">태국바트(THB)</option>
                    </select></td>
            </tr>

                
                <tr>
               <th style="width: 270px; background-color: #f4f4f4">현재 환율</th>
               <td>
                   <div class="d-flex" >
                   <input type="text" value="" id="CurrentRate1" name="CurrentRate" class="form-control"
                   placeholder="직접입력" / >   
                   <div style="margin-top:10px"><c:set var="value" value="selectbuybasicrate.value" /></div>
                   </div>
                
               </td>
                  
            </tr>
             

             <tr>
               <th style="width: 270px; background-color: #f4f4f4">지정 환율</th>
               <td>
                   <div class="d-flex">
                   <input autocomplete="off" type="text" id="" name="TargetedRate" class="form-control"
                   placeholder="직접입력" / style="width:647px;height:40px;"><div style="margin-top:10px">원 이하</div>
                   </div></td>
             </tr>
             

                 <tr>
                 
               <th style="width: 270px; background-color: #f4f4f4" id="contents">
               휴대폰번호</th>
                 <td><input autocomplete="off" type="text" class="form-control" name="phone" style="width:700px;height:40px;" aria-describedby="inputGroupSuccess1Status" /></td>
                 <td><input type="hidden" value="${loginVO.phone}" name="phone" style="width:700px;height:40px;" aria-describedby="inputGroupSuccess1Status" /></td>
             </tr>

         </table>

          
         <div align="center">
            <input class="btn" type="submit" data-bs-toggle="modal"
               data-bs-target="#exampleModal" style="margin-left: 50px"
               background-color:grey" value="알림 받기">
         </div>
      
      <div style="font-size:11px">
      <h6>유의사항</h6>
      - Hana Global 고시환율 기준, 설정하신 환율 도달 시 알림으로 제공됩니다.(일 1회)<Br>
      - 환율을 지정하신 다음 날부터 180일 이내에 환율이 지정환율에 도달하지 못하면 등록된 맞춤알림은 자동으로 취소됩니다.<br>
      - 환율은 실시간으로 변경되므로 실제 외환 거래시의 고시환율과 알림 제공시의 고시환율은 다를 수 있습니다.<Br>
      - 휴대폰 설정, 네트워크 환경 등에 따라 알림 발송이 지연되거나 누락될 수 있습니다.<Br>
      - 고객님께 필요한 환율 정보를 푸시/알림으로 알려드립니다.<Br>
      - 환율 알림서비스 문자메시지(SMS)/이메일을 받은 시점과 고객님의 거래 시점의 환율은 다를 수 있습니다. &nbsp;<Br>
      - 거래는 거래의 체결 고시환율이 예약환율과 같거나 낮을 때(고시환율≤예약환율)체결됩니다.<br>
     </div></div>
      </form>

   </div>
                      
                    
                    <div class="d-flex align-items-center gap-3 mt-5"><img src="assets/img/review/1.png" alt="" />
                      <div class="text-black">
                        <p class="mb-0 fw-bold text-dark">Albus Dumbledore</p><small>Manager @ Howarts</small>
                      </div>
                    </div>
                  </div>
                </div>

              </div>
            </div>
            <div class="swiper-button-next"><span class="fas fa-arrow-right fs-lg-3 fs-2"></span></div>
            <div class="swiper-button-prev"><span class="fas fa-arrow-left fs-lg-3 fs-2"></span></div>
          </div>
        </div>

        <script>
         function nextStep(){
             location.href = "${pageContext.request.contextPath}/exchange/ResultOfExchange"
             }
             
             
         function selectCountry(value) {
            $('#CurrentRate1').empty();
            let input1='${selectbuybasicrate.BUYBASICRATE}';
            let str =''
            console.log(value);
            
             if (value == '미국달러(USD)') {
                 $('#CurrentRate1').val(input1);
                  console.log("input1" + input1);
             }
         }
         
         
         </script>

     



</body>
</html>