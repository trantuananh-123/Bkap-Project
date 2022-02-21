package bkap.model.dao;

import java.util.List;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bkap.model.entity.Product;

@Repository
public class ProductDaoImp implements ProductDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Product> getAll() {
		// TODO Auto-generated method stub
		Session session = null;
		List<Product> listPro = null;
		boolean check = false;
		try {
			session = sessionFactory.openSession();
			session.beginTransaction();
			listPro = session.createQuery("from Product").list();
			check = true;
			session.getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
		return listPro;
	}

	@Override
	public boolean save(Product pro) {
		// TODO Auto-generated method stub
		Session session = null;
		boolean check = false;
		try {
			session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(pro);
			check = true;
			session.getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
		return check;
	}

	@Override
	public boolean merge(Product pro) {
		// TODO Auto-generated method stub
		Session session = null;
		boolean check = false;
		try {
			session = sessionFactory.openSession();
			session.beginTransaction();
			session.merge(pro);
			check = true;
			session.getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
		return check;
	}

	@Override
	public boolean delete(String productId) {
		// TODO Auto-generated method stub
		Session session = null;
		boolean check = false;
		try {
			session = sessionFactory.openSession();
			session.beginTransaction();
			Product proDelete = getById(productId);
			session.delete(proDelete);
			check = true;
			session.getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
		return check;
	}

	@Override
	public Product getById(String productId) {
		// TODO Auto-generated method stub
		Session session = null;
		Product pro = null;
		boolean check = false;
		try {
			session = sessionFactory.openSession();
			session.beginTransaction();
			Query query = session.createQuery("from Product where ProductId=:id");
			query.setParameter("id", productId);
			pro = (Product)query.uniqueResult();
			check = true;
			session.getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
		return pro;
	}

}
