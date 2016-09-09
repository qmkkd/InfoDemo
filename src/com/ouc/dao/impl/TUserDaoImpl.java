package com.ouc.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.ouc.dao.TUserDao;
import com.ouc.domains.TUser;
import com.ouc.util.HibernateUtil;

public class TUserDaoImpl implements TUserDao {

	static SessionFactory sessionFactory = HibernateUtil.sessionFactory;

	public void save(TUser user) {
		Transaction tr = null;
		Session session = sessionFactory.openSession(); 

		try {
			tr = session.beginTransaction(); 
			session.save(user);
			tr.commit();
		} catch (Exception e) {
			if (null != tr) {
				tr.rollback();
			}
		} finally {
			session.close();
		}
	}

	@SuppressWarnings("unchecked")
	public List<TUser> listUsers() {
		List<TUser> list = null;
		Transaction tr = null;
		Session session = sessionFactory.openSession();

		try {
			tr = session.beginTransaction();
			String sql = "from TUser";
			Query query = session.createQuery(sql);

			list = (List<TUser>) query.list();
			tr.commit(); 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close(); 
		}
		return list;
	}

	public boolean userLogin(TUser u) {
		Transaction tr = null;
		String hql = "";

		try {
			Session session = HibernateUtil.sessionFactory.openSession();
			tr = session.beginTransaction();
			hql = "from TUser where username=? and password=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, u.getUsername());
			query.setParameter(1, u.getPassword());
			List list = query.list();
			tr.commit();
			if (list.size() > 0) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			if (tr != null) {
				tr = null;
			}
		}
	}
	
	@Override
	public TUser getUser(String username) {
		Transaction tr = null;
		String hql = "";
		TUser user=null;
		try {
			Session session = HibernateUtil.sessionFactory.openSession();
			tr = session.beginTransaction();
			hql = "from TUser where username=? ";
			Query query = session.createQuery(hql);
			query.setParameter(0, username);
			user =(TUser) query.uniqueResult();
			tr.commit();
		}catch(Exception e){
			e.printStackTrace();
		}
		return user;
	}

	@Override
	public boolean userRegister(TUser user) {
		// TODO Auto-generated method stub
		return false;
	}


}
