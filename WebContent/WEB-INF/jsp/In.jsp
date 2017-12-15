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
.img1:hover,.img2:hover {
	opacity: 0.8 ;
}
.img1{
    margin-right:30px;
}
#h2,.img1,.img2{
    margin:50px;
}
.year{
    width:45px;
    text-align: center;
}
.md{
    width:20px;
    text-align: center;
}
#money{
    width:100px;
}
</style>
</head>


<body>
<div id="body">
    <h2 id="h2">入力してください</h2>
    <form name="#">
    <h4>金額：<input type="text" name="money" id="money">円</h4>
    <h4>日付：
    <script type="text/javascript">
<!--
    var now = new Date();
    var thisYear = now.getFullYear();
    var thisMonth = now.getMonth() + 1;
    var today = now.getDate();

    document.write("<input type='text' value='"+thisYear+"' name='year' class='year'>年　");
    document.write("<input type='text' value='"+thisMonth+"' name='month' class='md'>月　");
    document.write("<input type='text' value='"+today+"' name='day' class='md'>日　");
//-->
    </script>
    </h4>

    <h4>
    種類：
        <script type="text/javascript">
<!--
	document.write("<select name='type'>");
    var type = ["","給料","臨時収入","副業","年金","その他"];

    for(var i = 1; i <= type.length; i ++){
        document.write("<option value='" +i+ "'>" +type[i]+ "</option>");
    }
    document.write("</select>");
//-->
    </script>
    </h4>

    <a href="Select.jsp"><img src="images/back.png" class="img2"></a>
     <input type="image" src="images/comp.png" alt="完了" class="img1">

    </form>
</div>
</body>
</html>