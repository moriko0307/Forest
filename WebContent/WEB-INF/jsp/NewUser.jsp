<!-- 森　悠馬 形は完了-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>会員登録</title>
<style>
img:hover {
	opacity: 0.8 ;
}
#body{
	width:500px;
	height:600px;
	background-color:#fdffa3;
	border:solid 5px #5a230f;
	color:#5a230f;
    text-align: center;
    font-family:georgia;
    }
img:hover {
	opacity: 0.8 ;
			}


</style>
</head>
    <div id="body" align="center">
<h1>新規ユーザー登録画面</h1>
<h2>※パスワードは半角英数字でお願いします</h2>

<p>
    ユーザー名:<input type="text" name="user"><br>

    パスワード:<input type="tel" name="pass1" class="ch1"><br>

    確認用のパスワード:<input type="tel" name="pass2" class="ch2"><br>

</p>
    <br><br>
<a href="check.jsp"><img src="images/check.png"></a>

    </div>
</html>