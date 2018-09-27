<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
	<link href="css/bootstrap-4/css/bootstrap.css" rel="stylesheet">
	
	 <%
    	 	request.setCharacterEncoding("utf-8");
	             String id = request.getParameter("id");
    	 		 String name = request.getParameter("name");
    	 		 String author = request.getParameter("author");
    	 		 String price = request.getParameter("price");
	%>
	
<!-- 		<script>
 function check() {
		
	
	     if(isNaN(document.getElementById("id").value.trim())){
		alert("输入的不是数字");
		return false; 
	}
	
	return true;
}
	</script> -->
	
	
	
</head>
<body>
<div><center><span class="badge badge-dark"><h1>卡塞尔学院图书馆</h1></span></center></div>
<hr>

	<div class="container">
		<form action="del_do.jsp" method="post"  >
			<div class="form-group">
				<h1><label for="id"><span class="badge  badge-warning">ID</span></label></h1>
				<input type="text" name="id" id="id" class="form-control" value="<%= id %>" readonly="readonly" />
			</div>
			
			<div class="form-group">
				<h1><span class="badge  badge-success"><label for="name">书名</label></span></h1>
				<input type="text" name="name" id="name" value="<%= name%>" class="form-control" readonly="readonly">
			</div>
			
			<div class="form-group">
				<h1><span class="badge  badge-danger"><label for="author">作者</label></span></h1>
				<input type="text" name="author" id="author" value="<%= author%>" class="form-control" readonly="readonly">
			</div>
			
			<div class="form-group">
				<h1><span class="badge badge-warning"><label for="price">书名</label></span></h1>
				<input type="text" name="price" id="price" value="<%= price%>" class="form-control" readonly="readonly">
			</div>
			
	<input type="submit"  class="btn btn-outline-primary btn-lg" value="确认删除" onclick="return dodelete()"/>
		</form>
		
	</div>
	
	


</body>


	<script type="text/javascript">
		function dodelete() {
			if(confirm("是否真的要删除（删除后将无法复原）")){
				return true;
			}return false;
		}
	</script>
</html>