package com.yunzhongxiaoma.model;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
/*
 * 新闻类别实体类
 */
public class NewsType {
	public String name;			//类别名称
	public String description;	//描述
	public Date createtime;		//创建时间
	public int orders;			//排序号，默认为0，不排序
	public int del;				//删除位：0-未删除；1-已删除
	
	//无参构造方法
	public NewsType() {
		this.name = "";
		this.description = "";
		this.createtime = new java.sql.Date(0);
		this.orders = 0;
		this.del = 0;
	}

	//setter和getter方法
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public int getOrders() {
		return orders;
	}

	public void setOrders(int orders) {
		this.orders = orders;
	}

	public int getDel() {
		return del;
	}

	public void setDel(int del) {
		this.del = del;
	}
}