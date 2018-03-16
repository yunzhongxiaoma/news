package com.yunzhongxiaoma.dao;

import com.yunzhongxiaoma.model.User;

public interface IUserDao {

	/**
	 * //添加单个用户
	 * @param u
	 */
	void addUser(User u);
	
	 
	
	
	/**
	 * 判断登录
	 * @param username
	 * @param password
	 * @return
	 */
	Boolean checkUserLogin(String username,String password);
}
