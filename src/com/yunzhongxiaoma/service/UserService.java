package com.yunzhongxiaoma.service;

import com.yunzhongxiaoma.model.User;
import com.yunzhongxiaoma.utils.AppException;

public class UserService {
	public boolean register(User user) throws AppException{
		boolean flag = false;	//定义标示
		//业务逻辑处理
		String existName = "jack";
		//验证不存在同名用户
		if (!user.getName().equals(existName)) {
			//保存用户信息
			System.out.println("注册成功!");
			flag = true;
		}
		return flag;
	}
}
