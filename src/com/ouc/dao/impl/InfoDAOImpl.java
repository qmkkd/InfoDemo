package com.ouc.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.ouc.dao.InfoDAO;
import com.ouc.domains.Info;
import com.ouc.util.HibernateUtil;

public class InfoDAOImpl implements InfoDAO {

	static SessionFactory sessionFactory = HibernateUtil.sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<Info> getInfos() {
		List<Info> list = null;
		Transaction tr = null;
		Session session = sessionFactory.openSession();

		try {
			tr = session.beginTransaction();
			String sql = "from Info";
			Query query = session.createQuery(sql);
			list = (List<Info>) query.list();
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

	@Override
	public void save(Info info) {
		Transaction tr = null;
		Session session = sessionFactory.openSession();

		try {
			tr = session.beginTransaction();
			session.save(info);
			tr.commit();
		} catch (Exception e) {
			if (null != tr) {
				tr.rollback();
			}
		} finally {
			session.close();
		}
	}

	@Override
	public void delete(int id) {
		 Session session =sessionFactory.openSession();
         Transaction tr = null;
         
         try {
                tr =session.beginTransaction();// 开启事务并且返回该事务对象
                
                Info info=new Info();
                info.setId(id);
                
                session.delete(info);// 此时处于瞬时状态
                tr.commit();
         } catch (Exception e) {
				if (null != tr) {
					tr.rollback();
				}
         }finally {// 保证资源得到释放
                if (session != null) {
                       session.close();
                }
         }
		
	}

	@Override
	public Info getInfoById(int id) {
		Session session=sessionFactory.openSession();
		Transaction tr=null;
		Info info=null;
		try {
			tr = session.beginTransaction();
			String sql = "from Info where id=?";
			Query query = session.createQuery(sql);
			query.setParameter(0, id);
			info = (Info)query.uniqueResult();
//			System.out.println("get info"+info.getMajor());
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return info;
	}


	@Override
	public void update(int id,Info newInfo) {
		Session session=sessionFactory.openSession();
		Transaction tr=null;
		
		try{
			tr=session.beginTransaction();
			newInfo.setId(id);
			session.update(newInfo);
			tr.commit();
		}catch(Exception e){
			if (null != tr) {
				tr.rollback();
			}
		}finally{
			session.close();
		}
	}
	
}
