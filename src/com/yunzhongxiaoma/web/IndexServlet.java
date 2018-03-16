package com.yunzhongxiaoma.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 处理用户get和post方式的请求，输出结果页面
 */
public class IndexServlet extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//调用doGet()处理请求
		doGet(req, resp);
	}
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/html");//设置输出内容的类型
		resp.setCharacterEncoding("UTF-8");//设置输出内容的编码
		PrintWriter out = resp.getWriter();//获取输出对象
		//输出头部声明
		out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		//输出标准的HTML结构
		out.println("<html>");
		out.println("<head>");
		out.println("<title>IndexServlet</title>");
		//设置页面字符集编码
		out.println("<meta http-equiv='Content-Type' content='text/html charset=UTF-8' />");
		out.println("</head>");
		out.println("<body>");
		out.println("欢迎进入新闻系统");
		out.println("</body>");
		out.println("</html>");
		//清空并关闭输出流
		out.flush();
		out.close();
	}
}
