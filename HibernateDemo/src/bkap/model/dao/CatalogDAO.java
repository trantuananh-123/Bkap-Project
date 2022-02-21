package bkap.model.dao;

import java.util.List;

import bkap.model.entity.Categories;

public interface CatalogDAO {
	public List<Categories> getAll();
	public boolean save(Categories cat);
	public boolean merge(Categories cat);
	public boolean delete(int catalogId);
	public Categories getById(int catalogId);
}
