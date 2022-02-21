package bkap.model.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import bkap.model.enitity.Categories;
import bkap.model.util.ConnectionDB;

@Repository

public class CatalogDaoImp implements CatalogDao {

	@Override
	public List<Categories> GetAllCatalog() {
		Connection conn = null;
		CallableStatement callSt = null;
		List<Categories> listCat = new ArrayList<Categories>();
		try {
			conn = ConnectionDB.openConnection();
			callSt = conn.prepareCall("{call GetAllCatalog()}");
			ResultSet rs = callSt.executeQuery();
			while (rs.next()) {
				Categories cat = new Categories();
				cat.setCatalogId(rs.getInt("CatalogId"));
				cat.setCatalogName(rs.getString("CatalogName"));
				cat.setDescriptions(rs.getString("Descriptions"));
				cat.setPriority(rs.getInt("CatalogPriority"));
				cat.setStatus(rs.getBoolean("CatalogStatus"));
				listCat.add(cat);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			ConnectionDB.closeConnection(conn, callSt);
		}
		return listCat;
	}

	@Override
	public boolean addCatalog(Categories catalog) {
		Connection conn = null;
		CallableStatement callSt = null;
		boolean flag = false;
		try {
			conn = ConnectionDB.openConnection();
			callSt = conn.prepareCall("{call AddCatalog(?,?,?,?,?)}");
			callSt.setString(1, catalog.getCatalogName());
			callSt.setString(2, catalog.getDescriptions());
			callSt.setInt(3, catalog.getPriority());
			callSt.setBoolean(4, catalog.isStatus());
			callSt.registerOutParameter(5, Types.BIT);
			callSt.execute();
			flag = callSt.getBoolean(5);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			ConnectionDB.closeConnection(conn, callSt);
		}
		return flag;
	}

	@Override
	public boolean updateCatalog(Categories catalog) {
		// TODO Auto-generated method stub
		Connection conn = null;
		CallableStatement callSt = null;
		boolean flag = false;
		try {
			conn = ConnectionDB.openConnection();
			callSt = conn.prepareCall("{call UpdateCatalog(?, ?, ?, ?, ?, ?)}");
			callSt.setInt(1, catalog.getCatalogId());
			callSt.setString(2, catalog.getCatalogName());
			callSt.setString(3, catalog.getDescriptions());
			callSt.setInt(4, catalog.getPriority());
			callSt.setBoolean(5, catalog.isStatus());
			callSt.registerOutParameter(6, Types.BIT);
			callSt.execute();
			flag = callSt.getBoolean(6);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			ConnectionDB.closeConnection(conn, callSt);
		}
		return flag;
	}

	@Override
	public boolean deleteCatalog(int catalogId) {
		// TODO Auto-generated method stub
		Connection conn = null;
		CallableStatement callSt = null;
		boolean flag = false;
		try {
			conn = ConnectionDB.openConnection();
			callSt = conn.prepareCall("{call DeleteCatalog(?)}");
			callSt.setInt(1, catalogId);
			callSt.executeUpdate();
			flag = true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			ConnectionDB.closeConnection(conn, callSt);
		}
		return flag;
	}

	@Override
	public Categories getCatalogById(int catalogId) {
		// TODO Auto-generated method stub
		Connection conn = null;
		CallableStatement callSt = null;
		Categories pro = new Categories();
		try {
			conn = ConnectionDB.openConnection();
			callSt = conn.prepareCall("{call GetCatalogById(?)}");
			callSt.setInt("catalogId", catalogId);
			ResultSet rs = callSt.executeQuery();
			if(rs.next()) {
				pro.setCatalogId(rs.getInt("CatalogId"));
				pro.setCatalogName(rs.getString("CatalogName"));
				pro.setDescriptions(rs.getString("Descriptions"));
				pro.setPriority(rs.getInt("CatalogPriority"));
				pro.setStatus(rs.getBoolean("CatalogStatus"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			ConnectionDB.closeConnection(conn, callSt);
		}
		return pro;
	}
}
