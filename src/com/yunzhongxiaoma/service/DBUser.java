package com.yunzhongxiaoma.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

import com.yunzhongxiaoma.model.User;
import com.yunzhongxiaoma.utils.DBConnection;

public class DBUser {
	private Connection conn=null;
	public DBUser()
	{
		conn = DBConnection.getConnection();
	}
	// 获得所有User表的记录返回为一个Vector
	public  Collection getAllUser() {
		Collection stuVector = new ArrayList();
		Statement stmt = null;		
		try {
			 	if (conn != null) {
				stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM t_user");
				while (rs.next()) {
					User user = new User();
					user.setId(rs.getInt("uid"));
					user.setName(rs.getString("name"));
					user.setPassword(rs.getString("password"));
					//stu.setBirthday(rs.getString(4));
						
					stuVector.add(user);				
				}
				
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return stuVector;
	}
	 /*添加一个用户，使用User值对象作为参数传给这个方法。
	 */
	public void addUser(User user)throws Exception
	{
		
		PreparedStatement pstmt=conn.prepareStatement("insert into t_user(name,password) values(?,?)");
		pstmt.setString(1,user.getName());
		pstmt.setString(2,user.getPassword());
		
		pstmt.execute();
		
	}
	
	/**
	 *更改用户的信息，使用Product值对象作为参数传给这个方法。
	 */
	public void modifyUser(User user,String id)throws Exception
	{
		
		PreparedStatement	pstmt=conn.prepareStatement("update t_user set name=?, password=? where uid=?");
		pstmt.setString(1,user.getName());
		pstmt.setString(2,user.getPassword());
		pstmt.setLong(3,user.getId());
		pstmt.execute();		
	}
	
	/**
	 *删除某个指定ID的用户
	 */
	public void deleteUser(String id)throws Exception
	{
		Statement stmt=conn.createStatement();
		stmt.execute("delete from t_user where uid='"+id+"'");
	}
	
	/**
	 * 获取某用户的信息
	 */
	public User getUserInfo(String uId)throws Exception
	{
		
		Statement stmt=conn.createStatement();
		ResultSet rst=stmt.executeQuery("select * from t_user where uid='"+uId+"'");
		User user=null;
		while(rst.next())
		{
			user=new User();
			user.setName(rst.getString("name"));
			user.setPassword(rst.getString("password"));
		}
		return 	user;
	}	
}
	


