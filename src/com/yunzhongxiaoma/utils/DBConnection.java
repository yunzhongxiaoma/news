package com.yunzhongxiaoma.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	static String url = "jdbc:mysql://localhost/newsdb?useUnicode=true&amp;"+"characterEncoding=utf8";
	static String userName = "root";
	static String password = "root";
	static Connection conn = null;
	
	public static Connection getConnection(){ 
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch(ClassNotFoundException e) {
			System.out.println("加载驱动器类时出现异常");
		}
		
		try {
			conn = null;
			conn = DriverManager.getConnection(url, userName, password);
			System.out.println("connection seccess");
		} catch(SQLException e) {
				System.out.println("连接数据库的过程中出现SQL异常");
		} 
		
		if (conn==null)
			System.out.println("连接数据库失败");
		else
			System.out.println("连接数据库成功");	
	     return conn;
	}
	
	/**
	 * 关闭数据库连接
	 * @param conn
	 */
	public static void closeConnection(Connection conn){
		try {
			if (conn != null && !conn.isClosed()) {
				conn.close();
				conn = null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		getConnection();
	}
}
