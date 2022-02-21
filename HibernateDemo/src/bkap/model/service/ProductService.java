package bkap.model.service;

import java.util.List;

import bkap.model.entity.Product;

public interface ProductService {
	public List<Product> getAll();
	public boolean save(Product pro);
	public boolean merge(Product pro);
	public boolean delete(String productId);
	public Product getById(String productId);
}
