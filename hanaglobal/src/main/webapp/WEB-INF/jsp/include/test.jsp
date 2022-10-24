<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<head>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet">



<title>Insert title here</title>

<script>
	window.onload = function() {
		pieChartDraw();
	}

	let pieChartData = {
		labels : [ 'foo', 'bar', 'baz', 'fie', 'foe', 'fee' ],
		datasets : [ {
			data : [ 9, 12, 13, 7, 13, 10 ],
			backgroundColor : [ 'rgb(255, 99, 132)', 'rgb(255, 159, 64)',
					'rgb(255, 205, 86)', 'rgb(75, 192, 192)',
					'rgb(54, 162, 235)', 'rgb(153, 102, 255)' ]
		} ]
	};

	let pieChartDraw = function() {
		let ctx = document.getElementById('pieChartCanvas').getContext('2d');

		window.pieChart = new Chart(ctx, {
			type : 'pie',
			data : pieChartData,
			options : {
				responsive : false
			}
		});
	};
</script>



<body>
	<div>
		<button type="button" class="btn2 btn-secondary"
			data-bs-toggle="modal" data-bs-target="#exampleModal"
			style="margin-left: 200px; font-size: 16px; height: 39px">
			메일보내기</button>


		<canvas id="pieChartCanvas" width="300px" height="300px"></canvas>
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
						<form method="post" action="/mail/send"
							enctype="multipart/form-data" style="margin-top: 50px">
							<div class="control-group">
								<div class="form-group floating-label-form-group controls">
									<label>받는 분의 메일 주소를 입력하세요</label> <input type="email"
										class="form-control" name="address"
										placeholder="이메일 주소를 입력하세요" required="">
									<p class="help-block text-danger"></p>
								</div>
							</div>
							<div class="control-group">
								<div class="form-group floating-label-form-group controls">
									<label>제목을 입력하세요</label> <input type="text"
										class="form-control" name="title" placeholder="제목을 입력하세요"
										required="">
									<p class="help-block text-danger"></p>
								</div>
							</div>

							<div class="control-group">
								<div class="form-group floating-label-form-group controls">
									<label>내용을 입력하세요</label>
									<textarea rows="5" class="form-control" placeholder="Message"
										name="content" required=""
										data-validation-required-message="Please enter a message."></textarea>
									<p class="help-block text-danger"></p>
								</div>
							</div>
							<br>
							<div id="success"></div>
							<div class="form-group"></div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">취소</button>
								<!--             <button type="button" class="btn btn-secondary" onclick="Mail()">보내기</button> -->
								<button type="submit" class="btn2 btn-secondary"
									id="sendMessageButton">보내기</button>
							</div>
					</div>
				</div>
				</form>
			</div>
		</div>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
		<!-- Core theme JS-->
</body>


</html>