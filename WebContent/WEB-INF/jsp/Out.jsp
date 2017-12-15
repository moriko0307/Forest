<!-- 大廣　利希
	 森　琴音 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
.kaimono{
width:143px;
height:15px;
}
.hiduke{
width:50px;
height:15px;
}
#table1,#table2,td,th{
	border:solid 2px #5a230f;
	border-collapse:collapse;
	background-color:white;

}
#table1{
	margin-top:30px;
}
th{
	padding:4px;
	width:150px;
}
#table2 td{
	padding:4px;
	width:280px;
}

#scroll{
	overflow-y:scroll;
	height:250px;
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

.img1:hover,.img2:hover {
	opacity: 0.8 ;
}
.img1{
    margin-right:30px;
}
.img1,.img2{
    margin:50px;
}
</style>
<script type="text/javascript">
var counter = 0;
function AddTableRows(){
	// カウンタを回す
	counter++;

	var table1 = document.getElementById("table2");
	var row1 = table1.insertRow(counter);
	var cell1 = row1.insertCell(0);
	var cell2 = row1.insertCell(1);
	var cell3 = row1.insertCell(2);

	// class の付与は UserAgent によって
	// 挙動が違うっぽいので念のため両方の方法で
	cell1.setAttribute("class","name");
	cell2.setAttribute("class","address");
	cell3.setAttribute("class","tel");
	cell1.className = 'name';
	cell2.className = 'address';
	cell3.className = 'tel';

	var HTML1 = '<input type="text" name="name' + counter + '" value="" size="10" maxlength="20" />';
	var HTML2 = '<input type="text" name="address' + counter + '" value="" size="10" maxlength="20" />';
	var HTML3 = '<input type="text" name="tel' + counter + '" value="" size="10" maxlength="20" />';
	cell1.innerHTML = HTML1;
	cell2.innerHTML = HTML2;
	cell3.innerHTML = HTML3;
}
</script>

</head>
<body>
<div id="body">

	<h1>入力してください</h1>
	<form>

		合計金額:
		<input type="text" class="kaimono">
		円<br>

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

  <table id="table1">
	  <tr >
	    <th>商品名</th>
	    <th>値段</th>
	    <th>個数</th>
	  </tr>
  </table>

    <div id="scroll">
  <table id="table2">
  <tr>
    <td class="name"><input type="text" name="name0" value="" size="10" maxlength="20" /></td>
    <td class="address"><input type="text" name="address0" value="" size="10" maxlength="20" /></td>
    <td class="tel"><input type="text" name="tel0" value="" size="10" maxlength="20" /></td>
  </tr>
</table>
  </div>
  <input type="button" value="追加" onClick="AddTableRows();" /><br>
	<a href="Select.jsp" ><img src="images/back.png" class="img1"></a>
	<input type="image" src="images/comp.png" class="img2">
</form>
</div>
</body>
</html>