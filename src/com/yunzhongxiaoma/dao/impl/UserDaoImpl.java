package com.yunzhongxiaoma.dao.impl;

import org.hibernate.Session;

import com.yunzhongxiaoma.dao.IUserDao;
import com.yunzhongxiaoma.model.User;
import com.yunzhongxiaoma.utils.HibernateSessionFactory;

public class UserDaoImpl implements IUserDao {

	public void addUser(User u) {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		session.save(u);
		session.getTransaction().commit();
	}
	 
	

	public Boolean checkUserLogin(String username, String password) {
		System.out.println("开始校验\n"+"用户名：" + username + "\n密码" + password);
		Boolean returnValue = false;
		Session session = HibernateSessionFactory.getSession();
		String strHQl  = "select count(*) from User u where u.name = :n and u.password = :p ";
		Object obj =session.createQuery(strHQl)
									.setParameter("n", username)
									.setParameter("p", password)
									.list()
									.iterator()
									.next();
		Long count=obj==null?0:(Long)obj;
		if(count>0)  returnValue = true;
		HibernateSessionFactory.closeSession();
		System.out.println("returnValue="+returnValue);
		return returnValue;
		/*String strHQl  = "from User u where u.name = :name and" +
				" u.password = :p ";
		
		Long count = (Long) session.createQuery(strHQl)
									.setParameter("name", username)
									.setParameter("p", password)
									.iterate().next();
		if(count>0)  returnValue = true;*/
	 
	}

}
