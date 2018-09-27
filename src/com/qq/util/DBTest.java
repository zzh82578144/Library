package com.qq.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBTest {
	
	private static Connection con = null;
	
	public static Connection getConnection() {
		
		try {
			if(con == null) {
				Class.forName("com.mysql.jdbc.Driver");
			    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "zzh14318450");
			    return con;
			}else if(con != null && con.isClosed()) {
				Class.forName("com.mysql.jdbc.Driver");
			    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "zzh14318450");
			    return con;
			}else {
				return con;
			}
			
				
				
				
			} catch (SQLException e) {
				
				e.printStackTrace();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		return con;
	}

}
