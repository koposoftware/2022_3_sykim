<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <title>상담</title>
 <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css"/> 

 
 <!-- jquery -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<header style="border-bottom: 2px solid rgb(64, 128, 128); background: #fff;" class="header fixed-top">
	<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>
</header>

<style>
.table-striped>tbody>tr:nth-of-type(odd)>* {
    --bs-table-accent-bg: #fff;
    color: #0f0f0f;
    }
@font-face {
    font-family: 'HanaB.ttf';
    src: url('/font/HanaB.ttf');
    font-weight: 400;
    font-style: normal;
}    


</style>
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<script>
    $(document).ready(function() {
        $("#deviceTable").DataTable({
            "pageLength": 10,
            ajax:{
            	url:"${pageContext.request.contextPath}/boardlist",
            	type:"GET",
            	dataSrc :''
            },
            columns:[
            	
            	{targets: 0, data:"NO"},
            	{targets: 1, data:"TITLE"},
            	{targets: 2, data:"WRITER"},
            	{targets: 3, data:"CONTENT"},
            	{targets: 4, data:"REG_DATE"},
            ],
            
        });
        
    });

</script>
</head>

<body style="background: #f4f4f4">
<div class="container" style="margin-left: 350px; margin-top: 50px;">

		<h2 style="font-family: 'HanaB.ttf'; margin-left: 500px; margin-top:100px; display:inline-block">자주하는 질문(FAQ)</h2>
<table class="table table-striped dataTable mt-0" id="deviceTable">
	<thead class="" style="background-color:#b5b5b5">
		<tr>
			<th class="text-white">번호</th>
			<th class="text-white">제목</th>
			<th class="text-white">작성자</th>
			<th class="text-white">내용</th>
			<th class="text-white">날짜</th>
			
		</tr>
	</thead>
	
	<tbody>
	</tbody>
	
</table>
</div>
</body>
</html>