package bkap.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import bkap.model.enitity.Categories;

@Service
public interface CatalogService {

	public List<Categories> GetAllCatalog();
	public boolean addCatalog(Categories catalog);
	public boolean updateCatalog(Categories catalog);
	public boolean deleteCatalog(int catalogId);
	public Categories getCatalogById(int catalogId);
}
