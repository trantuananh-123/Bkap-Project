package bkap.dao;

import java.util.List;

import bkap.entities.Product;

public interface IProductDao {

	public List<Product> getAllProduct();
	public boolean insertProduct(Product pro);
	public boolean updateProduct(Product pro);
	public boolean deleteProduct(int productId);
}
