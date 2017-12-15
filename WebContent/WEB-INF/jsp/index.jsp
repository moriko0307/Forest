<!-- 大廣　利希 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>家計簿</title>
<style>

#body{
	width:500px;
	height:600px;
	background-color:#fdffa3;
	border:solid 5px #5a230f;
	color:#5a230f;
	text-align:center;
	font-family:georgia;
	opacity: 0.8 ;
}
form{
	text-align:center;
}

a{
	text-align:right;
	margin-right:15px;
	color:#5a230f;
}

#title{
	width:400px;
	height:400px;
}
#new{
	margin:10px;
}
#new:hover{
	opacity: 0.8 ;
}

#im:hover{
	opacity: 0.8 ;
}
</style>
</head>

<body>
<div id="body">
	<img id="title" src="images/title.png" alt="家計簿">
    <form>
    ユーザー名:<input type="text" ><br>
    パスワード:<input type="password" ><br>
    <input id="new" type="image" src="images/login.png" class="h"><br>

    </form>

     <div align="right"><a href="NewUser.jsp"><img id="im" src="images/new.png"></a></div>


</div>
</body>
</html>