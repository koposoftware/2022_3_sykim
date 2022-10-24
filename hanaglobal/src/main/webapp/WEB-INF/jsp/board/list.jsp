<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="resources/css/table.css">



</head>
<body>
<table class="table table-striped" style="width:80%; margin:auto"> 
		<tr id="list">
			<th width="7%">번호</th>
			<th width="20%">제목</th>
			<th width="16%">내용</th>
			<th width="16%">날짜</th>
		
			
		</tr>
		<c:forEach items="${ boardlist }" var="list">

			<tr>

				<td><p>No : ${ list.no }</p></td>
				<td><p>Title : ${ list.title }</p></td>
				<td><p>Content : ${ list.content }</p></td>
				<td><p>regdate : ${ list.regDate }</p></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>