package com.yunzhongxiaoma.action;


import com.yunzhongxiaoma.dao.IUserDao;
import com.yunzhongxiaoma.dao.impl.UserDaoImpl;
import com.yunzhongxiaoma.model.User;

public class UserAction/* extends ActionSupport*/ {
	private User user;
	private IUserDao userDao = new UserDaoImpl();

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	//登录
	public String login() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("登录验证#########");
		String returnValue = "input";
		if(this.userDao.checkUserLogin(this.getUser().getName(), this.getUser().getPassword()))
			returnValue = "success";
		return returnValue;
	}
	//注册
	public String regist() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("注册验证#########");
		this.userDao.addUser(this.user);
		return "success";
	}

}
