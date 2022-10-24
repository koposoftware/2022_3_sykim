<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
@font-face {
    font-family: 'HanaB.ttf';
    src: url('/font/HanaB.ttf');
    font-weight: 400;
    font-style: normal;
}
</style>
<script>
$(document).ready(function() {
$('#studentCourseInfo').DataTable( {

  "ajax": {

   "type" : 'POST',

   "url" : 'test.php',

   "dataSrc": function (json) {

    return json.data;

   }  

  },

  "columns": [      //이부분이 중요  columns 정보 가져올때 해당 '열' data에 render을 걸어주면 된다!

   {"data": "name"},

   {"data": "stage",

    "render": function(data, type, row, meta){

     var studentIdx = data.studentIdx;
     if(type === 'display'){

        data = '<a href="./show.php?studentIdx='+studentIdx+'">' +  data.title + '</a>';

     }

     return data;
   		 			},
   				},
   			]
		},
	)};
)
  				
	
</script>
<body>
</body>
</html>