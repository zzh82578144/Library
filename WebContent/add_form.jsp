
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<html>
<head>
	<meta charset="utf-8">
	<title>Insert title here</title>
	<link href="css/bootstrap-4/css/bootstrap.css" rel="stylesheet">
	
</head>
<body>
<div><center><span class="badge badge-dark"><h1>卡塞尔学院图书馆</h1></span></center></div>
<hr>

	<div class="container">
		<form action="add_do.jsp" method="post" onsubmit="return check()">
		<div class="form-group">
			<h1><span  class="badge  badge-success"><label for="name">书名</label></span></h1>
			<input type="text" name="name" id="name" class="form-control" />
		</div>
		
		<div class="form-group">
		<h1><span class="badge  badge-danger"><label for="author">作者</label></span></h1>
		<input type="text" name="author" id="author" class="form-control" />
		</div>
		
		<div class="form-group">
		<h1><span class="badge  badge-warning"><label for="price">价格</label></span></h1>
		<input type="text" name="price" id="price" class="form-control" />
		</div >
		
		<input type="submit" class="btn btn-outline-primary btn-lg"  />
		</form>
	</div>
	
	<script>
	function check(){
		if(document.getElementById("name").value.trim() == ""){
			alert("你没有输入正确的书名");
			return false;
		}
		if(document.getElementById("author").value.trim() == ""){
		    alert("你没有输入正确的作者");
			return false;
		}
		if(document.getElementById("price").value.trim() == ""){
		    alert("你没有输入正确的价格");
			return false;
		}else if(isNaN(document.getElementById("price").value.trim())){
			alert("输入的不是数字");
			return false;
		}
		
		return true;
	}
	</script>
	
</body>
	</html>