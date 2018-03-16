package com.yunzhongxiaoma.model;

import java.sql.Date;

/*
 * 新闻实体类
 */
public class News {
	private int id; 			//id
	private String title;		//新闻标题
	private String author;  	//作者姓名 
	private String newsType; 	//新闻类型
	/*private int userid;*/			//录入者id
	private String keywords;	//关键字
	private String source;  	//新闻来源 
	private String content; 	//新闻正文
	private Date createTime;	//创建时间 
	private int click; 			//点击次数 
	private int state; 			// 
	private int del;			//删除状态
	
	//无参构造方法
	public News() {
		this.id = 0;
		this.title = "";
		this.author = "";
		this.newsType = "";
		//this.userid = 0;
		this.keywords = "";
		this.source = "";
		this.content = "";
		//this.createTime = new java.sql.Date(0);
		this.click = 1;
		this.state = 0;
		this.del = 0;
	}

	//setter和getter方法
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getNewsType() {
		return newsType;
	}

	public void setNewsType(String newsType) {
		this.newsType = newsType;
	}
/*
	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}
*/
	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public int getClick() {
		return click;
	}

	public void setClick(int click) {
		this.click = click;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public int getDel() {
		return del;
	}

	public void setDel(int del) {
		this.del = del;
	}
}
