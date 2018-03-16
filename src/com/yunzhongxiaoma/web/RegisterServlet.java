package com.yunzhongxiaoma.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet{
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException,IOException{
		//设置请求的字符集为"utf-8"
		req.setCharacterEncoding("UTF-8");
		String name = req.getParameter("name");
		String password = req.getParameter("password");
		
		System.out.println("--注册成功--");
		System.out.println("用户名："+name);
		System.out.println("密码："+password);
	}
}
