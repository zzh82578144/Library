<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
	String name = request.getParameter("name");
	String author = request.getParameter("author");
	String price = request.getParameter("price");
    %>
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/bootstrap-4/css/bootstrap.css" rel="stylesheet" >

</head>

<body>

<div><center><span class="badge badge-dark"><h1>卡塞尔学院图书馆</h1></span></center></div>
<hr>

	<div class="container">
		<form action="update_do.jsp" method="post" >
			
			<div class="form-group">
				<h1><span class="badge badge-info"><label for="id">ID</label></span></h1>
				<input type="text" name="id" id="id" value="<%= id%>" readonly="readonly" class="form-control">
			</div>
			
			
			
			<div class="form-group">
				<h1><span class="badge  badge-success"><label for="name">书名</label></span></h1>
				<input type="text" name="name" id="name" value="<%= name%>" class="form-control">
			</div>
			
			<div class="form-group">
				<h1><span class="badge  badge-danger"><label for="author">作者</label></span></h1>
				<input type="text" name="author" id="author" value="<%= author%>" class="form-control">
			</div>
			
			<div class="form-group">
				<h1><span class="badge badge-warning"><label for="price">价格</label></span></h1>
				<input type="text" name="price" id="price" value="<%= price%>" class="form-control">
			</div>
			
			<input type="submit" class="btn btn-outline-primary btn-lg" value="确认修改" />
		</form>
	</div>

</body>
</html>