<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@page import="com.qq.util.DBTest" %>
    <%@page import="java.sql.*" %>
    
    <% 
    		request.setCharacterEncoding("utf-8");
            String id = request.getParameter("id");
    		String name = request.getParameter("name");
    		String author = request.getParameter("author");
    		String price = request.getParameter("price");
    		
    		Connection con = DBTest.getConnection();
    		PreparedStatement st = con.prepareStatement("update book set name=?,author=?,price=? where id=?");
    		st.setString(1, name);
    		st.setString(2, author);
    		st.setString(3, price);
    		st.setString(4, id);
    		int num = st.executeUpdate();
    		
    %>
    <%=num %>
	 
	 <%
	   if(num>0){
		   response.sendRedirect("index.jsp");//重定向
	   }
		   %>
    