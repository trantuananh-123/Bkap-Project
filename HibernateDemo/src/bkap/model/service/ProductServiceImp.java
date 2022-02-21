package bkap.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bkap.model.dao.ProductDao;
import bkap.model.entity.Product;

@Service
public class ProductServiceImp implements ProductService {
	@Autowired
	private ProductDao proDao;

	@Override
	public List<Product> getAll() {
		// TODO Auto-generated method stub
		return proDao.getAll();
	}

	@Override
	public boolean save(Product pro) {
		// TODO Auto-generated method stub
		return proDao.save(pro);
	}

	@Override
	public boolean merge(Product pro) {
		// TODO Auto-generated method stub
		return proDao.merge(pro);
	}

	@Override
	public boolean delete(String productId) {
		// TODO Auto-generated method stub
		return proDao.delete(productId);
	}

	@Override
	public Product getById(String productId) {
		// TODO Auto-generated method stub
		return proDao.getById(productId);
	}

}
