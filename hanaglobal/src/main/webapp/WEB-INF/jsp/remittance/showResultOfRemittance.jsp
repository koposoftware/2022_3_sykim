<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header style="border-bottom: 2px solid rgb(64, 128, 128)">
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
		<div class="flex justify-content-center container mt-5" >
								<h2 style="font-family: 'HanaB.ttf'; display: inline-block; margin-left: 500px">해외송금</h2>

							<table class="table table-striped">
								<thead>
									
										<th class="align-items-center justify-content-center"
											style="width: 15%">수취인명</th>
										<th style="width: 15%;">통화</th> &nbsp;
										<th style="width: 15%;">송금액</th> &nbsp;
										<th style="width: 15%;">받는 사람</th> &nbsp;
										
<!-- 									<th style="width: 15%;">결제방법</th> &nbsp; -->
<!-- 								    <th style="width: 15%;">상태</th> &nbsp; -->	
									</tr>
								</thead>
								
								
								<tbody>
                                        <th></th>
                                        <th></th> 
                                        <th></th> 
                                        <th></th> 
                                           
								</tbody>
							</table>
</div>
</body>
</html>