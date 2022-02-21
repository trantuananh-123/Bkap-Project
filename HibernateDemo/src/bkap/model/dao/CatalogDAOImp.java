package bkap.model.dao;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bkap.model.entity.Categories;

@Repository
public class CatalogDAOImp implements CatalogDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Categories> getAll() {
		// TODO Auto-generated method stub
		//Khoi tao session tu sessionFactory
		Session session = sessionFactory.openSession();
		List<Categories> listCat = null;
		try {
			//Khoi tao transaction tu session
			session.getTransaction().begin();
			listCat = session.createQuery("from Categories").list();
			session.getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
			session.getTransaction().rollback();
		}finally {
			session.close();
		}
		return listCat;
	}

	@Override
	public boolean save(Categories cat) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		boolean check = false;
		try {
			session.getTransaction().begin();
			session.save(cat);
			session.getTransaction().commit();
			check = true;
		} catch (Exception e) {
			// TODO: handle exception
			session.getTransaction().rollback();
		}finally {
			session.close();
		}
		return check;
	}

	@Override
	public boolean merge(Categories cat) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		boolean check = false;
		try {
			session.getTransaction().begin();
			session.merge(cat);
			session.getTransaction().commit();
			check = true;
		} catch (Exception e) {
			// TODO: handle exception
			session.getTransaction().rollback();
		}finally {
			session.close();
		}
		return check;
	}

	@Override
	public boolean delete(int catalogId) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		boolean check = false;
		try {
			session.getTransaction().begin();
			Categories catDelete = getById(catalogId);
			if (catDelete!=null) {
				session.delete(catDelete);
			}
			session.getTransaction().commit();
			check = true;
		} catch (Exception e) {
			// TODO: handle exception
			session.getTransaction().rollback();
		}finally {
			session.close();
		}
		return check;
	}

	@Override
	public Categories getById(int catalogId) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Categories cat = null;
		try {
			session.getTransaction().begin();
			Query query = session.createQuery("from Categories where catalogId=:catId");
			//set gia tri cho tham so catId
			query.setParameter("catId", catalogId);
			//Thuc hien query
			cat = (Categories)query.uniqueResult();
			session.getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
			session.getTransaction().rollback();
		}finally {
			session.close();
		}
		return cat;
	}
	

}
