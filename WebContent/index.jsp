
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.qq.util.DB" %>


<font color="blue"> <% 
	
	  
	   Connection con = DB.getConnection();
	   Statement st = con.createStatement();
	   ResultSet rs = st.executeQuery("select * from book");
	   %> <!DOCTYPE html>
	<html>
<head>
	<meta charset="utf-8">
	<title>Insert title here</title>
	<link href="css/bootstrap-4/css/bootstrap.css" rel="stylesheet">
	
</head>
<body>

<div><center><span class="badge badge-dark"><h1>小美的图书馆</h1></span></center></div>
<hr>

<div class="container">
    <p><a href="add_form.jsp" class="btn btn-outline-primary">添加</a></p>
	<table class="table  table-hover" >
		<tr>
			<th>编号</th>
			<th>书名</th>
			<th>作者</th>
			<th>价格</th>
			<th>操作</th>
		</tr>


		<%
	   while(rs.next()){
		   %>
		<tr>
			<td><%= rs.getInt(1) %></td>
			<td><%= rs.getString("name")  %></td>
			<td><%= rs.getString("author") %></td>
			<td><%= rs.getString("price") %></td>
		    <td> 
		    <a href="update_form.jsp?&id=<%=rs.getInt(1) %>&name=<%= rs.getString("name") %>&author=<%= rs.getString("author") %>&price=<%= rs.getString("price")  %>" class="btn btn-outline-primary" >编辑</a>
		     <a  href="del_form.jsp?&id=<%=rs.getInt(1) %>&name=<%= rs.getString("name") %>&author=<%= rs.getString("author") %>&price=<%= rs.getString("price")  %>" class="btn btn-outline-secondary">删除</a>
		      </td>
		</tr>
		<%
	   }
	%>
	</table>

</div>

<hr>

</body>
	</html>