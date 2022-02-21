package bkap.model.dao;

import java.util.List;

import bkap.model.enitity.Categories;

public interface CatalogDao {

	public List<Categories> GetAllCatalog();
	public boolean addCatalog(Categories catalog);
	public boolean updateCatalog(Categories catalog);
	public boolean deleteCatalog(int catalogId);
	public Categories getCatalogById(int catalogId);
}
