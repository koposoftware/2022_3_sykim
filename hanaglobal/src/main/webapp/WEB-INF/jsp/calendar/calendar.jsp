<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<title>Insert title here</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
 <link href="fullcalendar-6.0.0-beta.1/lib/main.css" type="text/css" rel="stylesheet" />
 <script src="<c:url value="fullcalendar-6.0.0-beta.1/lib/main.js" />"></script>
 <!-- 글씨체 -->
<!-- <link href="https://webfontworld.github.io/amore/AritaBuri.css" rel="stylesheet"> -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">
<link
   href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500&display=swap"
   rel="stylesheet">
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
   rel="stylesheet">

<link href="css/style.css" rel="stylesheet">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
   <link href="css/style.css" rel="stylesheet">
   
<script type="text/javascript" src="/js/Winwheel.js"></script>
<script
   src="http://cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenMax.min.js"></script>

<!-- 부트스트랩 -->
<!-- Bootstrap CSS -->
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>



<style>
@font-face {
    font-family: 'HanaB.ttf';
    src: url('/font/HanaB.ttf');
    font-weight: 400;
    font-style: normal;
}

.fc-event-title-container{
  background-color:#46abaf;
  color: #fff;
  font-weight:bold;
}
.fc-event-time{
   background-color:#46abaf;
    color:#fff;
}
.fc-scrollgrid-sync-inner{
background-color:#87a8a9;
}
.fc .fc-daygrid-day-frame{
background-color:#eee;

}
.fc-direction-ltr .fc-daygrid-event .fc-event-time {
    margin-right: 0px;
}

#calendar {
   background-color:#f4f4f4;
}

.fc-toolbar h2 {
  display: inline;
  border-bottom:1px solid;

}
.fc .fc-toolbar-title {
    font-size: em;
    margin: 0;
     font-family: 'Inter', sans-serif;
}



.fc .fc-button-primary {
    background-color: rgb(64, 128, 128) ;
    border-color: var(--fc-button-border-color, #2C3E50);
   hover:
     background-color: #B5B5B5;
}


.fc-day-sun a {
        color: red;
        text-decoration: none;
      }
      
 /* 토요일 날짜 파란색 */
      .fc-day-sat a {
        color: blue;
        text-decoration: none;
      }


@media screen and (max-width:500px) {
   body {
      margin: 40px 10px;
      padding: 0;
      font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
      font-size: 11px;
      height: 100%;
   }
   .fc-toolbar-title {
      font-size: 10px !important;
   }
}

@media screen and (min-width:501px) {
   body {
      margin: 40px 10px;
      padding: 0;
      font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
      font-size: 14px;
      height: 100%;
   }
}


/*요일*/
.fc-col-header-cell-cushion {
   color: #000;
}

.fc-col-header-cell-cushion:hover {
   text-decoration: none;
   color: #000;
}
/*일자*/
.fc-daygrid-day-number {
   color: #000;
   font-size: 1em;
}

/*종일제목*/
.fc-event-title.fc-sticky {
   
}
/*more버튼*/
.fc-daygrid-more-link.fc-more-link {
   color: #000;
}
/*일정시간*/
.fc-daygrid-event>.fc-event-time {
   color: #000;
}
/*시간제목*/
.fc-daygrid-dot-event>.fc-event-title {
   color: #000 !important;
}
/*가로 줄 - 월달력 종일 or 복수일자*/
.fc-h-event {
   
}
/*세로 줄 - 주달력, 일달력*/
.fc-v-event {
   
}
/*title 옆에 점*/
.fc-daygrid-event-dot {
   
}
/*month/week/day*/
.fc-button-active {
   border-color: #ffc107 !important;
   background-color: #ffc107 !important;
   color: #000 !important;
   font-weight: bold !important;
}
/*노란버튼*/
.btn-warning {
   font-weight: bold;
}
/*모달 푸터*/
.modal-footer {
   display: inline-block;
}

.fc .fc-toolbar.fc-footer-toolbar {
    margin-top: 1.5em;
    background-color:#fff;
}
</style>

<script> 
//5초후에 
$(document).ready(function() {
   
   $.ajax({
      url : 'calendar/chart',
      method : 'get',
      success : function(data) {

         console.log(data);
         console.log(data[0].TITLE);
         console.log(data[0].START1);
         console.log(data[0].END1);
         
         
         //차트
         var calendarEl = document.getElementById('calendar');
           var calendar = new FullCalendar.Calendar(calendarEl, {
               headerToolbar: {
                 left: 'prevYear,prev',
                 center: 'title',
                 right: 'next,nextYear'
               },footerToolbar:{
                  center: 'addEventButton', 
               },
               initialDate: '2022-10-10',
               navLinks: true, // can click day/week names to navigate views
               editable: true,
               dayMaxEvents: true, // allow "more" link when too many events
               locale: 'ko',
               eventSources : [{
                   
                   events: function(info, successCallback, failureCallback){
                      $.ajax({
                      
                         type: 'GET'
                      
                      , dataType: 'json'
                        ,  url : 'calendar/chart'
                         
                        , success : function(calendarlist) {
                             console.log(calendarlist);
                             var events = [];
                             $.each(calendarlist, function(index, data){
                                
                                events.push({
                                     title : data.TITLE
                                   , start : data.START1
                                   , end : data.END1
                                });
                            
                             });
                                
                            successCallback(events);
                            
                            
                             }
                             
                          });
                   }
                   }], 
                customButtons: {
                   addEventButton: { // 추가한 버튼 설정
                       text : "일정 추가",  // 버튼 내용
                       click : function(){ // 버튼 클릭 시 이벤트 추가
                           $("#calendarModal").modal("show"); // modal 나타내기

                           $("#addCalendar").on("click",function(){  // modal의 추가 버튼 클릭 시
                               var content = $("#calendar_content").val();
                               var start_date = $("#calendar_start_date").val();
                               var end_date = $("#calendar_end_date").val();
                               
                               //내용 입력 여부 확인
                               if(content == null || content == ""){
                                   alert("내용을 입력하세요.");
                               }else if(start_date == "" || end_date ==""){
                                   alert("날짜를 입력하세요.");
                               }else if(new Date(end_date)- new Date(start_date) < 0){ // date 타입으로 변경 후 확인
                                   alert("종료일이 시작일보다 먼저입니다.");
                               }else{ // 정상적인 입력 시
                                   var obj = {
                                       "title" : content,
                                       "start" : start_date,
                                       "end" : end_date
                                   }//전송할 객체 생성


                                  //서버로 해당 객체를 전달해서 DB 연동 가능
                               }
                           });
                       }
                   }
               },



             });

             calendar.render();
      }
   })
})


function nextStep2(){
    location.href = "${pageContext.request.contextPath}/mail/send"
    }
 
    

</script>
<script>
function addCalendar2(){
    let content = $("#calendar_content").val();
    let start_date = $("#calendar_start_date").val();
    let end_date = $("#calendar_end_date").val();
   console.log('정상작동?');
   console.log("end_date:"+end_date);
   console.log("start_date"+start_date);
   console.log("content"+content);
    $.ajax({
       url : 'calendar/chart'
        ,type: 'post'
        , data: { 
              calendar_content: content,
              calendar_start_date: start_date,
              calendar_end_date:end_date
          }
       ,success : function(result){
          $('#calendar').empty();
          

          
             $.ajax({
                url : 'calendar/chart',
                method : 'get',
                success : function(data) {

                   console.log(data);
                   console.log(data[0].TITLE);
                   console.log(data[0].START1);
                   console.log(data[0].END1);
                   
                   
                   //차트
                   var calendarEl = document.getElementById('calendar');
                     var calendar = new FullCalendar.Calendar(calendarEl, {
                        headerToolbar: {
                             left: 'prevYear,prev',
                             center: 'title',
                             right: 'next,nextYear'
                           },footerToolbar:{
                              center: 'addEventButton', 
                           },
                         initialDate: '2022-10-24',
                         navLinks: true, // can click day/week names to navigate views
                         editable: true,
                         dayMaxEvents: true, // allow "more" link when too many events
                         locale: 'ko',
                         eventSources : [{
                             
                             events: function(info, successCallback, failureCallback){
                                $.ajax({
                                
                                   type: 'GET'
                                
                                , dataType: 'json'
                                  ,  url : 'calendar/chart'
                                   
                                  , success : function(calendarlist) {
                                       console.log(calendarlist);
                                       var events = [];
                                       $.each(calendarlist, function(index, data){
                                          
                                          events.push({
                                               title : data.TITLE
                                             , start : data.START1
                                             , end : data.END1
                                          });
                                      
                                       });
                                          
                                      successCallback(events);
                                      
                                      
                                       }
                                       
                                    });
                             }
                             }], 
                           customButtons: {
                             addEventButton: { // 추가한 버튼 설정
                                 text : "일정 추가",  // 버튼 내용
                                 click : function(){ // 버튼 클릭 시 이벤트 추가
                                     $("#calendarModal").modal("show"); // modal 나타내기

                                     $("#addCalendar").on("click",function(){  // modal의 추가 버튼 클릭 시
                                         var content = $("#calendar_content").val();
                                         var start_date = $("#calendar_start_date").val();
                                         var end_date = $("#calendar_end_date").val();
                                         
                                         //내용 입력 여부 확인
                                         if(content == null || content == ""){
                                             alert("내용을 입력하세요.");
                                         }else if(start_date == "" || end_date ==""){
                                             alert("날짜를 입력하세요.");
                                         }else if(new Date(end_date)- new Date(start_date) < 0){ // date 타입으로 변경 후 확인
                                             alert("종료일이 시작일보다 먼저입니다.");
                                         }else{ // 정상적인 입력 시
                                             var obj = {
                                                 "title" : content,
                                                 "start" : start_date,
                                                 "end" : end_date
                                             }//전송할 객체 생성


                                            //서버로 해당 객체를 전달해서 DB 연동 가능
                                         }
                                     });
                                 }
                             }
                         },



                       });

                       calendar.render();
                }
             })
                  
           
         }
       ,error:function(){
          console.log("실패");      
       }
    })      
};
</script>

<script>
function Mail(){
	$.ajax({
	       url : '/mail/send'
	        ,type: 'post'
	        , data: { 
	              email_address: address,
	              email_title: title,
	              calendar_start_date: start_date,
	              calendar_end_date:end_date,
	          }
	       ,success : function(result){
	          $('#'calendar).empty();
	          
	       },
			error	:	function(){
				alert('실패')
			}
			
		})
	}
	          
	          
	          
</script>


<body>
<link href="/css/style.css" rel="stylesheet">
<header style="border-bottom: 2px solid rgb(64, 128, 128); background: #fff;" class="header fixed-top">
   <jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"></jsp:include>
   <jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>
   <link href="/css/style.css" rel="stylesheet">
</header>
	  <div class="margin-top:50px">
      <div id="viewport" style="max-width: 3500px; min-height: 100px; margin-left:280px; margin-top:100px;display:inline-block">
         <h2 style="font-family: 'HanaB.ttf'; margin-left: 390px;">
            일정조회</h2>
      <div id='calendar' style="width:760px;margin-top:20px;margin-left:70px" > 
     </div>
    



   <!-- 메일 모달 -->     
     <div class="modal fade" id="exampleModal" tabindex="-1"
      aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">
            <div class="basicfont">메일보내기</div>
            </h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal"
            aria-label="Close"></button>
            </div>
            <div class="modal-body">
       <form method="post" action="/mail/send" enctype="multipart/form-data" style="margin-top: 50px">
       <div class="control-group">
       <img src="/img/message.gif" style="width:150px;margin-left:160px"/>
       <div class="form-group floating-label-form-group controls">
      <label>받는 분의 메일 주소를 입력하세요</label>
      <input autocomplete="off" type="email" class="form-control" name="address" placeholder="이메일 주소를 입력하세요" required="">
      <p class="help-block text-danger"></p>
    </div>
  </div>
  <div class="control-group">
    <div class="form-group floating-label-form-group controls">
      <label>제목을 입력하세요</label>
      <input autocomplete="off" type="text" class="form-control" name="title" placeholder="제목을 입력하세요" required="">
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
  
   <div class="control-group">
    <div class="form-group floating-label-form-group controls">
      <label>파일 첨부</label>
     <input type="file" name="uploadfile" class="form-control"
							onchange="readURL(this);"></p>
    </div>
  </div>
    
					
  <br>
  <div id="success"></div>
  <div class="form-group">
            
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary"
               data-bs-dismiss="modal">취소</button>
<!--             <button type="button" class="btn btn-secondary" onclick="Mail()">보내기</button> -->
             <button type="submit" class="btn2 btn-secondary" id="sendMessageButton">보내기</button>
            </div>
            </div>
         </div>
         </form>
      </div>
   </div> 
     <!-- 모달 끝-->
    <div align="left" style="margin-top:-40px; margin-left:65px;">
    <button type="button" class="btn2 btn-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal"  style="margin-left:200px;font-size:16px;height:39px"> 메일보내기 </button>
    </div>
    <div align="right" style="margin-top:-37px; margin-right:30px;">
    <button type="button" class="btn2 btn-secondary" id="shareKakao" style="margin-right:183px;font-size:16px;height:39px"> 카톡공유 </button>
    </div>
    
     <body>
    <div id="calendarBox">
<!--     <h2 style="font-family: 'Noto Sans KR', sans-serif; text-align:center; color:#1478CD">일정 추가</h2> -->
<!--         <div id="calendar"></div> -->
    </div>

    <!-- modal 추가 -->
    <div class="modal fade" id="calendarModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">일정을 입력하세요</h5>
           <button type="button" class="btn-close" data-bs-dismiss="modal"
            aria-label="Close"></button>
                </div>
                <div class="modal-body">
                
                    <div class="form-group">
                   <form method="post" action="calendar/chart"  role="form">
                        <label for="taskId" class="col-form-label">일정 내용</label>
                        <input autocomplete="off" type="text" class="form-control" id="calendar_content" name="calendar_content">
                        <label for="taskId" class="col-form-label">시작 날짜</label>
                        <input autocomplete="off" type="date" class="form-control" id="calendar_start_date" name="calendar_start_date">
                        <label for="taskId" class="col-form-label">마감 날짜</label>
                        <input autocomplete="off" type="date" class="form-control" id="calendar_end_date" name="calendar_end_date">
                         <div class="modal-footer">
                   
                    
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"
                        id="sprintSettingModalClose" onclick="return()">취소</button>
                     <input class="btn btn-secondary" id="addCalendar" type="button" data-bs-toggle="modal" onClick="addCalendar2()" value="추가하기"></button>
                      </div>
                   </form>
                    </div>
                   </div>
               
    
            </div>
        </div>
    </div>

<!-- 	<div id="contents">  -->
<!-- 		받는사람 : <input type="text" id="to">   인증번호 받을사람 휴대폰 번호 -->
<!-- 		<button type="button" id="send">전송</button><br> 문자보내는 전송버튼 -->
		
<!-- 		인증번호 : <input type="text" id="userNum">   인증번호 입력창 -->
<!-- 		<button type="button" id="enterBtn">확인</button>  인증번호와 내가 입력창에 입력한 인증번호 비교하는 창		 -->
<!--     </div> -->
                    
    </div>
 </div>
<script>
$('#send').click(function(){
	 
	const to = document.getElementById("to").value;
	$.ajax({
		url : "/sendsms",
		type : "POST",
		data : {
			phone : to
		},
		success : function() {
			alert('성공했습니다');
		},
		error : function() {
			alert("에러")
		}
	});
});
</script>
<script type="text/JavaScript"
		src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>

<script>
		Kakao.init(''); 
		$("#shareKakao").click(function(e) { //jquery를 사용한다 가정
			  e.preventDefault();   //이벤트 버블링 prevent
			  
			  Kakao.Link.sendCustom({
			    templateId: 79913   // 15번 항목에서 확인하였던 이벤트번호 등록 
			  });
			 });
</script>
      <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
   <!-- Core theme JS-->
 
 
 <!-- test -->
  

</body>
</html>
