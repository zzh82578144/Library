<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <%@page import="java.sql.*"%>
    <%@page import="com.qq.util.DB" %>
    <%@page import="com.qq.util.Panduan" %>
    
	 <%
    	 	     request.setCharacterEncoding("utf-8");
    	 		 String name = request.getParameter("name");
    	 		 String author = request.getParameter("author");
    	 		 String price = request.getParameter("price");
    	 		 
    	 		 if(name == null || name.equals("")){
    	 	 out.print("书名不合法");
    	 	 return;
    	 		 }else if(author == null || author.equals("")){
    	 	 out.print("作者不合法");
    	 	 return;
    	 		 }else if(price == null || price.equals("")){
    	 	 out.print("价格不合法");
    	 	 return;
    	 		 }else if( !Panduan.check(price)){
    	 	 out.print("价格不是数字，不合法");
    	 	 return ;
    	 		 }
    	 		 
    	        
    	 	  
    	 	   Connection con =DB.getConnection();
    	 	   PreparedStatement st = con.prepareStatement("insert into book (name,author,price) values (?,?,?)");
    	 	   st.setString(1, name);
    	 	   st.setString(2, author);
    	 	   st.setString(3, price);
    	 	   
    	 	   int num = st.executeUpdate();
    	 %>
	 
	 <%=num %>
	 
	 <%
	   if(num>0){
		   response.sendRedirect("index.jsp");//重定向
	   }else{
		   %>
		   添加失败
		   <% 
	   }
	 %>
	 
	 
	 
	 
	 
	 
	 