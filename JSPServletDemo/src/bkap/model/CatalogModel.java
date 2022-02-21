package bkap.model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bkap.entities.Categories;
import bkap.util.ConnectionDB;

public class CatalogModel {
	public List<Categories> getAllCatalog(){
		Connection conn = null;
		CallableStatement callSt = null;
		List<Categories> listCat = null;
		try {
			conn = ConnectionDB.openConnection();
			callSt = conn.prepareCall("{call GetAllCatalog()}");
			ResultSet rs = callSt.executeQuery();
			listCat = new ArrayList<Categories>();
			while (rs.next()) {
				Categories cat = new Categories();
				cat.setCatalogId(rs.getInt("CatalogId"));
				cat.setCatalogName(rs.getString("CatalogName"));
				cat.setPriority(rs.getInt("CatalogPriority"));
				cat.setDescription(rs.getString("Descriptions"));
				cat.setStatus(rs.getBoolean("CatalogStatus"));
				listCat.add(cat);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			ConnectionDB.closeConnection(conn, callSt);
		}
		return listCat;
	}
}
