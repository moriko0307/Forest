<!-- 森琴音 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>家計簿</title>
<style type="text/css">
#body{
    text-align:center;
	font-family:georgia;
	width:500px;
	height:600px;
	background-color:#fdffa3;
	border:solid 5px #5a230f;
	color:#5a230f;
}
#add{
	width:500px;
	height:80px;
}
.scroll{
	overflow:scroll;
	width:245px;
	height:340px;
	white-space:nowrap;
	background-color:white;
}

#add:hover,#logout:hover {
	opacity: 0.8 ;
}
</style>
</head>

<body>
<div id="body">
	<a href="Select.jsp"><img alt="追加する" src="images/add.png" id="add"></a><br>

	<h4>さんのマイページ</h4>
	<table>
	<tr>
	<td><img id="kOut" alt="支出" src="images/kOut.png"></td>
	<td><img id="kIn" alt="収入" src="images/kIn.png"></td>
	</tr>

	<tr>
	<td><div class="scroll" align="left">DBaaaaaaaaaaaaaaaaaa<br>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa<br>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</div></td>
        <td><div class="scroll">DB</div></td>
	</tr>
	</table>

	<input type="image" alt="ログアウト" src="images/logout.png" id="logout">
</div>
</body>
</html>