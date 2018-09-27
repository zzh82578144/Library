<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.sql.*" %>
 <%@page import="com.qq.util.DB" %> 
 <%@page import="com.qq.util.Panduan" %>   
    
    <% 
    	request.setCharacterEncoding("utf-8");
    	String id = request.getParameter("id");
    	
    	/* if( !Panduan.check(id)){
   	 	 out.print("id不是数字，不合法");
   	 	 return ;
   	 		 } */
    	
    	Connection con = DB.getConnection();
    	PreparedStatement st = con.prepareStatement("delete from book where id=?");
    	st.setString(1, id);
    	
    	int num = st.executeUpdate();
    %>
    
     <%=num %>
	 
	 <%
	   if(num>0){
		   response.sendRedirect("index.jsp");//重定向
	   }
%>