package com.yunzhongxiaoma.model;
/*
 * 用户实体类
 */
public class User {
	private Integer id;
	public String name; //用户名
	public String password;	//密码
	/*public int role;		//用户类型：1-管理员，2-普通编辑
	public int del;			//删除位：0-未删除；1-已删除
*/	
	//无参构造方法
	public User() {
		 
	}
	//有参构造方法
	public User(String name, String password ) {
		super();
		this.name = name;
		this.password = password;
		/*this.role = role;
		this.del = del;*/
	}
	//setter和getter方法

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	/*public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public int getDel() {
		return del;
	}

	public void setDel(int del) {
		this.del = del;
	}*/
}
