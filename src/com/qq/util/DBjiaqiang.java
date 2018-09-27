package com.qq.util;

import java.sql.Connection;
import java.sql.*;
public class DBjiaqiang {
	
	private static Connection con;//这将是该类能提供的唯一一个连接
	
	private static String driverName = "com.mysql.jdbc.Driver";
	private static String userName = "root";
	private static String userPwd = "123456";
	private static String dbName = "library";
	
	private static String url = "jdbc:mysql://localhost:3306/"+dbName+ "?user="+ userName + "&password=" + userPwd+"&characterEncoding=utf-8";
	private static String setUrl = url ; //这setUrl是最终选用的url
	
	// 私有构造器，避免用户调用而生成多个MysqlConnection实例
	private  DBjiaqiang() {};

	// 获得连接的静态公共方法
	public static Connection getConnection() {

		try {
			if (con == null) {
				Class.forName(driverName);
				con = DriverManager.getConnection(setUrl);
				return con;
			} else if ((con != null) &&(con.isClosed()) ){
				Class.forName(driverName);
				con = DriverManager.getConnection(setUrl, userName, userPwd);
				return con;
			}
			else return con;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	
	
}



