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
		받는사람 : <input type="text" id="to" name="phone"/>   
		<button type="button" id="send">전송</button><br> 
		
		인증번호 : <input type="text" id="userNum"> 
		<button type="button" id="enterBtn">확인</button> 	
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