package bkap.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bkap.model.dao.CatalogDAO;
import bkap.model.entity.Categories;

@Service
public class CatalogServiceImp implements CatalogService {
	@Autowired
	private CatalogDAO catalogDAO;

	@Override
	public List<Categories> getAll() {
		// TODO Auto-generated method stub
		return catalogDAO.getAll();
	}

	@Override
	public boolean save(Categories cat) {
		// TODO Auto-generated method stub
		return catalogDAO.save(cat);
	}

	@Override
	public boolean merge(Categories cat) {
		// TODO Auto-generated method stub
		return catalogDAO.merge(cat);
	}

	@Override
	public boolean delete(int catalogId) {
		// TODO Auto-generated method stub
		return catalogDAO.delete(catalogId);
	}

	@Override
	public Categories getById(int catalogId) {
		// TODO Auto-generated method stub
		return catalogDAO.getById(catalogId);
	}
}
