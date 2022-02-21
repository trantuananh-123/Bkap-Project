package bkap.model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import bkap.enitity.Product;
import bkap.util.ConnectionDB;

public class ProductModel {

	public List<Product> getAllProduct() {
		Connection conn = null;
		CallableStatement callSt = null;
		List<Product> listPro = null;
		try {
			conn = ConnectionDB.openConnection();
			callSt = conn.prepareCall("{call getAllProduct()}");
			ResultSet rs = callSt.executeQuery();
			listPro = new ArrayList<Product>();
			while (rs.next()) {
				Product pro = new Product();
				pro.setProductId(rs.getString("ProductId"));
				pro.setProductName(rs.getString("ProductName"));
				pro.setPrice(rs.getFloat("Price"));
				pro.setDescription(rs.getString("Descriptions"));
				pro.setTitle(rs.getString("Title"));
				pro.setStatus(rs.getBoolean("ProductStatus"));
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
			callSt = conn.prepareCall("{call addProduct(?, ?, ?, ?, ?, ?, ?)}");
			callSt.setString(1, pro.getProductId());
			callSt.setString(2, pro.getProductName());
			callSt.setFloat(3, pro.getPrice());
			callSt.setString(4, pro.getDescription());
			callSt.setString(5, pro.getTitle());
			callSt.setBoolean(6, pro.isStatus());
			callSt.registerOutParameter(7, Types.BIT);
			callSt.execute();
			flag = callSt.getBoolean(7);
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
			callSt = conn.prepareCall("{call updateProduct(?, ?, ?, ?, ?, ?, ?)}");
			callSt.setString(1, pro.getProductId());
			callSt.setString(2, pro.getProductName());
			callSt.setFloat(3, pro.getPrice());
			callSt.setString(4, pro.getDescription());
			callSt.setString(5, pro.getTitle());
			callSt.setBoolean(6, pro.isStatus());
			callSt.registerOutParameter(7, Types.BIT);
			callSt.execute();
			flag = callSt.getBoolean(7);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			ConnectionDB.closeConnection(conn, callSt);
		}
		return flag;
	}
	
	public Product getProductById(String productId) {
		Connection conn = null;
		CallableStatement callSt = null;
		Product pro = null;
		
		try {
			conn = ConnectionDB.openConnection();
			callSt = conn.prepareCall("{call getProductById(?)}");
			callSt.setString(1, productId);
			ResultSet rs = callSt.executeQuery();
			pro = new Product();
			if (rs.next()) {
				pro.setProductId(rs.getString("ProductId"));
				pro.setProductName(rs.getString("ProductName"));
				pro.setPrice(rs.getFloat("Price"));
				pro.setDescription(rs.getString("Descriptions"));
				pro.setTitle(rs.getString("Title"));
				pro.setStatus(rs.getBoolean("ProductStatus"));
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
