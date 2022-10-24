<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<title>Insert title here</title>
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
   crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css"/> 
  <!-- Icon Font Stylesheet -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
 
  <!-- jquery -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

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


</head>


<header style="border-bottom: 2px solid rgb(64, 128, 128); background: #fff;" class="header fixed-top">
   <jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"></jsp:include>
   <jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>
   <link href="/css/style.css" rel="stylesheet">
</header>
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<style>
.table-striped tbody tr:nth-of-type(odd) {
    background-color: #fff;
}
@font-face {
    font-family: 'HanaB.ttf';
    src: url('/font/HanaB.ttf');
    font-weight: 400;
    font-style: normal;
}
.table td, .table th {
   padding: 0.75rem;
   
   vertical-align: bottom;
   border-top: 1px solid #dee2e6;
   overflow:hidden;
   white-space:nowrap;
   text-overflow: ellipsis;
}



</style>


<body style="background-color:#f4f4f4">
   <!-- 잔액 -->
   <div class="container" style="margin-left: 420px; margin-top: 50px;">

      <h2 style="font-family: 'HanaB.ttf'; margin-left: 470px; margin-top:100px; display:inline-block">송금거래내역</h2>
   


        <div class="container-xxl py-4">
            <div class="container px-lg-5">
                
                <div class="row g-4" >
                <div class="col-12 text-center" style="margin-bottom:-30px">
                    </div>
                    <div class="col-lg-4 col-md-6 wow animate__animated animate__zoomIn" data-wow-delay="0.1s" style="background-color:#e6eded;border-right:5px solid #fff">
                        <div class="service-item d-flex flex-column justify-content-center text-center rounded">
                            <div class="service-icon flex-shrink-0">
                                <i class="fa fa-home fa-2x"></i>
                            </div>
                            <h5 class="mb-3" style="font-family: 'Noto Sans KR', sans-serif;">지난3개월</h5>
                            <p>거래내역 </p>
                            <a class="btn px-3 mt-auto mx-auto" href="">조회하기</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow  animate__animated animate__zoomIn" data-wow-delay="0.3s" style="background-color:#e6eded;border-right:5px solid #fff">
                        <div class="service-item d-flex flex-column justify-content-center text-center rounded">
                            <div class="service-icon flex-shrink-0">
                                <i class="fa fa-home fa-2x"></i>
                            </div>
                            <h5 class="mb-3" style="font-family: 'Noto Sans KR', sans-serif;">지난6개월</h5>
                            <p>거래내역 </p>
                            <a class="btn px-3 mt-auto mx-auto" href="">조회하기</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow animate__animated animate__zoomIn" data-wow-delay="0.6s" style="background-color:#e6eded">
                        <div class="service-item d-flex flex-column justify-content-center text-center rounded">
                            <div class="service-icon flex-shrink-0">
                                <i class="fa fa-home fa-2x"></i>
                            </div>
                            <h5 class="mb-3" style="font-family: 'Noto Sans KR', sans-serif;">지난1년</h5>
                            <p>거래내역 </p>
                            <a class="btn px-3 mt-auto mx-auto" href="">조회하기</a>
                        </div>
                    </div>
                
                </div>
            </div>
        </div>
        <!-- Service End -->
       
        <!-- Portfolio End -->
        
        
<!-- table-striped  -->
<table class="table dataTable mt-0" id="deviceTable" style="font-size:15px" >

            <thead class="" style="background-color:#5d8896;color:#fff">
               <tr> 
                              <th style="width: 10%;font-size:13px">송금인 </th> &nbsp;   
                              <th style="width: 10%;font-size:13px">송금인 출금계좌번호</th> &nbsp;
                              <th style="width: 13%;font-size:13px">수취인 </th> &nbsp;
                              <th style="width: 13%;font-size:13px">수취인 입금계좌번호</th> &nbsp;
                              <th style="width: 13%;font-size:13px">통화</th> &nbsp;
                              <th style="width: 10%;font-size:13px">송금액(원)</th> &nbsp;
                              <th style="width: 10%;font-size:13px">신청일</th> &nbsp;
                              <th style="width: 10%;font-size:13px">승인상태</th> &nbsp;
                           
               </tr>
            </thead>
            
            <tbody>
                </tbody>
                
         </table>

      
<!-- Bootstrap core JS-->

<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
<script src="lib/wow/wow.min.js"></script>
<script>
    $(document).ready(function() {
        $("#deviceTable").DataTable({
            "pageLength": 10,
            ajax:{
               url:"${pageContext.request.contextPath}/showAccounttables",
               type:"GET",
               dataSrc :''
               
               
            },
            columns:[
              
               {targets: 0, data:"SENDER_NAME"},
               {targets: 1, data:"WITHDRAWAL_ACCOUNTNO", "width":"250px"},
               {targets: 2, data:"RECEIVED_NAME"},
               {targets: 3, data:"DEPOSIT_ACCOUNTNO","width":"250px"},
               {targets: 4, data:"CURRENCY"},
               {targets: 5, data:"TRANS_AMOUNT"},
               {targets: 6, data:"TRANS_DATE"},
               {targets: 7, data:"STATUS"}
            
            ],
            "bLengthChange": false,
            "bFilter": false,
            "bInfo": false,
            "order": [[1, 'desc']],//order column in descending order.
            "columnDefs": [
                { "type": "date", "targets": [1] }//date column formatted like "03/23/2018 10:25:13 AM".
            ], 
            
        });
        
    });
    
  
</script>
</html>      