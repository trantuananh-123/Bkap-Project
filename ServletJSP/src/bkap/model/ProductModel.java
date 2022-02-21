package bkap.model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import bkap.entities.Product;
import bkap.util.ConnectionDB;

public class ProductModel {

	public List<Product> getAllProduct() {
		Connection conn = null;
		CallableStatement callSt = null;
		List<Product> listPro = new ArrayList<Product>();
		try {
			conn = ConnectionDB.openConnection();
			callSt = conn.prepareCall("{call GetAllProduct}");
			ResultSet rs = callSt.executeQuery();
			while (rs.next()) {
				Product pro = new Product();
				pro.setProductId(rs.getString("ProductId"));
				pro.setProductName(rs.getString("ProductName"));
				pro.setPrice(Float.parseFloat(rs.getString("Price")));
				pro.setDescriptions(rs.getString("Descriptions"));
				pro.setTitle(rs.getString("Title"));
//				pro.setStatus(rs.getBoolean("ProductStatus"));
				pro.setCatalogId(Integer.parseInt(rs.getString("CatalogId")));
				pro.setCatalogName(rs.getString("CatalogName"));
				listPro.add(pro);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			ConnectionDB.closeConnection(conn, callSt);
		}
		return listPro;
	}
	
	public boolean addProduct(Product pro) {
		Connection conn = null;
		CallableStatement callSt = null;
		boolean flag = false;
		try {
			conn = ConnectionDB.openConnection();
			callSt = conn.prepareCall("{call AddProduct(?, ?, ?, ?, ?, ?, ?, ?, ?)}");
			callSt.setString(1, pro.getProductId());
			callSt.setString(2, pro.getProductName());
			callSt.setFloat(3, pro.getPrice());
			callSt.setString(4, pro.getDescriptions());
			callSt.setString(5, pro.getTitle());
			callSt.setBoolean(6, pro.isStatus());
			callSt.setInt(7, pro.getCatalogId());
			callSt.setString(8, pro.getCatalogName());
			callSt.registerOutParameter(9, Types.BIT);
			callSt.execute();
			flag = callSt.getBoolean(9);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			ConnectionDB.closeConnection(conn, callSt);
		}
		return flag;
	}
	
	public Product getProductById(String proId) {
		Connection conn = null;
		CallableStatement callSt = null;
		Product pro = new Product();
		try {
			conn = ConnectionDB.openConnection();
			callSt = conn.prepareCall("{call getProductById(?)}");
			callSt.setString("productId", proId);
			ResultSet rs = callSt.executeQuery();
			if(rs.next()) {
				pro.setProductId(proId);
				pro.setProductName(rs.getString("ProductName"));
				pro.setPrice(Float.parseFloat(rs.getString("Price")));
				pro.setDescriptions(rs.getString("Descriptions"));
				pro.setTitle(rs.getString("Title"));
				pro.setStatus(Boolean.parseBoolean(rs.getString("ProductStatus")));
				pro.setCatalogId(Integer.parseInt(rs.getString("CatalogId")));
				pro.setCatalogName(rs.getString("CatalogName"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			ConnectionDB.closeConnection(conn, callSt);
		}
		return pro;
	}
	
	public boolean deleteProduct(String proId) {
		Connection conn = null;
		CallableStatement callSt = null;
		boolean flag = false;
		try {
			conn = ConnectionDB.openConnection();
			callSt = conn.prepareCall("{call deleteProduct(?)}");
			Product pro = this.getProductById(proId);
			callSt.setString("productId", proId);
			flag = callSt.execute();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			ConnectionDB.closeConnection(conn, callSt);
		}
		return flag;
	}
	
	public boolean updateProduct(Product pro) {
		Connection conn = null;
		CallableStatement callSt = null;
		boolean flag = false;
		try {
			conn = ConnectionDB.openConnection();
			callSt = conn.prepareCall("{call updateProduct(?, ?, ?, ?, ?, ?, ?, ?, ?)}");
			callSt.setString(1, pro.getProductId());
			callSt.setString(2, pro.getProductName());
			callSt.setFloat(3, pro.getPrice());
			callSt.setString(4, pro.getDescriptions());
			callSt.setString(5, pro.getTitle());
			callSt.setBoolean(6, pro.isStatus());
			callSt.setInt(7, pro.getCatalogId());
			callSt.setString(8, pro.getCatalogName());
			callSt.registerOutParameter(9, Types.BIT);
			callSt.execute();
			flag = callSt.getBoolean(9);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			ConnectionDB.closeConnection(conn, callSt);
		}
		return flag;
	}
}
