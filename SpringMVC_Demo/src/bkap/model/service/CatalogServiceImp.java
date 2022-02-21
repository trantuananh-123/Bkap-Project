package bkap.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bkap.model.dao.CatalogDao;
import bkap.model.enitity.Categories;

@Service
public class CatalogServiceImp implements CatalogService{

	@Autowired CatalogDao catalogDao;
	@Override
	public List<Categories> GetAllCatalog() {
		// TODO Auto-generated method stub
		return catalogDao.GetAllCatalog();
	}

	@Override
	public boolean addCatalog(Categories catalog) {
		// TODO Auto-generated method stub
		return catalogDao.addCatalog(catalog);
	}

	@Override
	public boolean updateCatalog(Categories catalog) {
		// TODO Auto-generated method stub
		return catalogDao.updateCatalog(catalog);
	}

	@Override
	public boolean deleteCatalog(int catalogId) {
		// TODO Auto-generated method stub
		return catalogDao.deleteCatalog(catalogId);
	}

	@Override
	public Categories getCatalogById(int catalogId) {
		// TODO Auto-generated method stub
		return catalogDao.getCatalogById(catalogId);
	}

	
}
