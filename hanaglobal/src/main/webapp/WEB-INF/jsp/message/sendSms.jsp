<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
<meta http-equiv="X-UA-Compatible" content="ie=edge" /> 
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<title>문자인증</title>
</head>

<body>
	<div id="contents"> 
		받는사람 : <input type="text" id="to" name="phone"/>   <!-- 인증번호 받을사람 휴대폰 번호 -->
		<button type="button" id="send">전송</button><br> <!-- 문자보내는 전송버튼 -->
		
		인증번호 : <input type="text" id="userNum">   <!-- 인증번호 입력창 -->
		<button type="button" id="enterBtn">확인</button>  <!-- 인증번호와 내가 입력창에 입력한 인증번호 비교하는 창 -->		
    </div>
<script>
$('#send').click(function(){
	 
	var to = document.getElementById("to").value;
	$.ajax({
		url : "/sendSms",
		type : "POST",
		data : "phone=" + to,
		success : function() {
			alert('성공했습니다');
		},
		error : function() {
			alert("에러")
		}
	});
});
</script>

</body>

</html>