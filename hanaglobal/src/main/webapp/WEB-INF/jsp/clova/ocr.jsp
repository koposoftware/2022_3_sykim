<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 사업정보확인하기</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<script>
   $(document).ready(function() {
      $.ajax({
         url : '${pageContext.request.contextPath}/clovaOCR',
         method : 'get',
         success : function(data) {
            /* alert('성공'); */
            let list = JSON.parse(data);
            console.log(list);
            console.log(list.images);
            console.log(list.images[0]); 
            console.log(list.images[0].fields);
            console.log(list.images[0].fields);
            /* for (let i = 0; i < list.images[0].fields.length; i++) {
               console.log(list.images[0].fields[i].inferText);
            } */
            
            let regNo = document.getElementById('regNo');
            let ceo = document.getElementById('ceo');
            let ceo1 = document.getElementById('ceo1');
            let ceo2 = document.getElementById('ceo2');
            let compNo = document.getElementById('compNo');
            let addr = document.getElementById('addr');
//             let addrFull = '';
//             for(let i = 35; i < 40; i++){
//                addrFull = addrFull + list.images[0].fields[i].inferText + ' '
//             }
//             console.log(addrFull);
            
            regNo.innerText = list.images[0].fields[0].inferText;
            ceo.innerText  = list.images[0].fields[18].inferText +" "+ list.images[0].fields[19].inferText + " "+ list.images[0].fields[20].inferText; 
           
            ceo2.innerText = list.images[0].fields[20].inferText;
          
            compNo.innerText = list.images[0].fields[5].inferText;
            addr.innerText = list.images[0].fields[30].inferText;
//             addr.innerText = addrFull;
            
         },
         error : function() {
            alert('실패');
         }
      })
   })
</script>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-10">
				<h2 class="mb-5">외국인등록증</h2>

				<table class="table">
					<tbody>
						<tr>
							<th scope="row">외국인등록번호</th>
							<td id="regNo"></td>

						</tr>
						<tr>
							<th scope="row">국가지역</th>
							<td id="ceo"></td>
						</tr>
						<tr>
							<th scope="row">국가지역</th>
							<td id="ceo1"></td>
						</tr>
						<tr>
							<th scope="row">국가지역</th>
							<td id="ceo2"></td>
						</tr>
						<tr>
							<th scope="row">성명</th>
							<td id="compNo"></td>
						</tr>


						<tr>
							<th scope="row">체류자격 기업투자</th>
							<td id="addr"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>
</body>
</html>