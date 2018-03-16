package com.yunzhongxiaoma.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.yunzhongxiaoma.model.User;

public class MyTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 读取hibernate.cfg.xml文件
		Configuration cfg = new Configuration().configure();
		// 创建SessionFactory,相当于是连接数据库
		SessionFactory factory = cfg.buildSessionFactory();
		
		Session session = null;
		try {
			session = factory.openSession();
			// 开启事务
			session.beginTransaction();

			User u = new User("小张", "123");
			// 保存数据
			session.save(u);

			// 提交事务
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			// 回滚事务
			session.getTransaction().rollback();
		}
		finally
		{
			if (session != null) {
				if (session.isOpen()) {
					session.close();
				}

			}
		}
	}

}
