<!-- 森琴音 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>家計簿</title>
<style>
body{
	text-align:center;
}
#body{
	font-family:georgia;
	width:500px;
	height:600px;
	background-color:#fdffa3;
	border:solid 5px #5a230f;
	color:#5a230f;
}

p{
	margin-top:100px;
	margin-bottom:50px;
}

.back{
	margin-top:100px;
}

img:hover {
	opacity: 0.8 ;
}
</style>
</head>

<body>
<div id="body">
<p><b>どちらの情報を入力しますか？</b></p>

<a href="Out.jsp"><img alt="out" src="images/out.png"></a>
<a href="In.jsp"><img alt="in" src="images/in.png"></a><br>

<a class="back" href="Top.jsp"><img alt="Top" src="images/back.png"></a>

</div>
</body>
</html>