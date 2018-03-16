package com.yunzhongxiaoma.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

import com.yunzhongxiaoma.model.News;
import com.yunzhongxiaoma.utils.DBConnection;

public class DBNews {
	private Connection conn=null;
	public DBNews()
	{
		conn = DBConnection.getConnection();
	}
	// 获得所有News表的记录返回为一个Vector
	public  Collection getAllNews() {
		Collection newsVector = new ArrayList();
		Statement stmt = null;		
		try {
			 	if (conn != null) {
				stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM t_news");
				while (rs.next()) {
					News news = new News();
					news.setId(rs.getInt("nid"));
					news.setTitle(rs.getString("title"));
					news.setAuthor(rs.getString("author"));
					news.setNewsType(rs.getString("newsType"));
					news.setKeywords(rs.getString("keywords"));
					news.setSource(rs.getString("source"));
					news.setContent(rs.getString("content"));
					//news.setCreateTime(rs.getDate("createTime"));
						
					newsVector.add(news);				
				}
				
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return newsVector;
	}
	/**
	 * 获取最新10条新闻标题
	 */
	public Collection getTopTenNews() {
		Collection newsVector = new ArrayList();
		Statement stmt = null;		
		try {
			 	if (conn != null) {
				stmt = conn.createStatement();
				//1~5条新闻
				ResultSet rs = stmt.executeQuery("SELECT * FROM t_news  LIMIT 0,5 ");//where newTypeId=? 
				while (rs.next()) {
					News news = new News();
					news.setId(rs.getInt("nid"));
					news.setTitle(rs.getString("title"));
					
					newsVector.add(news);				
				}
				
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return newsVector;
	}
	/**
	 * 获取新闻标题
	 */
	public Collection search(String t) {
		Collection newsVector = new ArrayList();
		Statement stmt = null;		
		try {
			 	if (conn != null) {
				stmt = conn.createStatement();
				//查询新闻
				ResultSet rs = stmt.executeQuery("SELECT * FROM t_news where title LIKE '%"+t+"%'"); 
				while (rs.next()) {
					News news = new News();
					news.setId(rs.getInt("nid"));
					news.setTitle(rs.getString("title"));
					
					newsVector.add(news);				
				}
				
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return newsVector;
	}
	 /*添加一个新闻，使用News值对象作为参数传给这个方法。
	 */
	public void addNews(News news)throws Exception
	{
		
		PreparedStatement pstmt=conn.prepareStatement("insert into t_news(title,author,newsType,keywords,source,content) values(?,?,?,?,?,?)");
		
		pstmt.setString(1,news.getTitle());
		pstmt.setString(2,news.getAuthor());
		pstmt.setString(3,news.getNewsType());
		pstmt.setString(4,news.getKeywords());
		pstmt.setString(5,news.getSource());
		pstmt.setString(6,news.getContent());
		//pstmt.setString(6,news.getContent());
		pstmt.execute();
		
	}
	
	/**
	 *更改新闻的信息，使用Product值对象作为参数传给这个方法。
	 */
	public void modifyNews(News news,String id)throws Exception
	{
		PreparedStatement	pstmt=conn.prepareStatement("update t_news set title=?,author=?,newsType=?,keywords=?,source=?,content=? where nid=?");
		pstmt.setString(1,news.getTitle());
		pstmt.setString(2,news.getAuthor());
		pstmt.setString(3,news.getNewsType());
		pstmt.setString(4,news.getKeywords());
		pstmt.setString(5,news.getSource());
		pstmt.setString(6,news.getContent());
		pstmt.setString(7,id);
		pstmt.execute();		
	}
	
	/**
	 *删除某个指定ID的新闻
	 */
	public void deleteNews(String id)throws Exception
	{
		Statement stmt=conn.createStatement();
		stmt.execute("delete from t_news where nid='"+id+"'");
	}
	/**
	 * 获取某个新闻的信息
	 * @param id
	 * @return
	 * @throws Exception
	 */
	
	public News getNewsInfo(String id)throws Exception
	{
		
		Statement stmt=conn.createStatement();
		ResultSet rst=stmt.executeQuery("select * from t_news where nid='"+id+"'");
		News news=null;
		while(rst.next())
		{
			news=new News();
			news.setTitle(rst.getString("title"));
			news.setAuthor(rst.getString("author"));
			news.setNewsType(rst.getString("newsType"));
			news.setKeywords(rst.getString("keywords"));
			news.setSource(rst.getString("source"));
			news.setContent(rst.getString("content"));
		}
		return 	news;
	}
	
}
	


