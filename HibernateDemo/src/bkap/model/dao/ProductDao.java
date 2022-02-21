package bkap.model.dao;

import java.util.List;

import bkap.model.entity.Product;

public interface ProductDao {
	public List<Product> getAll();
	public boolean save(Product pro);
	public boolean merge(Product pro);
	public boolean delete(String productId);
	public Product getById(String productId);
}
