package bkap.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import bkap.entities.Product;
import bkap.util.ConnectionDB;

public class ProductDaoImp implements IProductDao {

	
	@Override
	public List<Product> getAllProduct() {
		// TODO Auto-generated method stub
		//Khởi tạo List Product
		List<Product> listProduct = null;
		//Khởi tạo đối tượng Connection và CallableStatement
		Connection conn = null;
		CallableStatement callSt = null;
		try {
			conn = ConnectionDB.openConnection();
			//Khởi tạo đối tượng callSt từ conn
			callSt = conn.prepareCall("{call getAllProduct()}");
			//Gọi procedure
			ResultSet rs = callSt.executeQuery();
			//Khởi tạo đối tượng listProduct
			listProduct = new ArrayList<Product>();
			//Duyệt dữ liệu trong ResultSet đẩy ra listProduct
			while(rs.next()) {
				//Khởi tạo đối tượng pro để chứa dữ liệu mỗi dòng của rs
				Product pro = new Product();
				pro.setProductId(rs.getInt("ProductId"));
				pro.setProductName(rs.getString("ProductName"));
				pro.setPrice(rs.getFloat("Price"));
				pro.setTitle(rs.getString("Title"));
				pro.setDescriptions(rs.getString("Descriptions"));
				pro.setStatus(rs.getBoolean("ProductStatus"));
				listProduct.add(pro);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			ConnectionDB.closeConnection(conn, callSt);
		}
		return listProduct;
	}

	@Override
	public boolean insertProduct(Product pro) {
		// TODO Auto-generated method stub
		Connection conn = null;
		CallableStatement callSt = null;
		boolean flag = false;
		try {
			conn = ConnectionDB.openConnection();
			callSt = conn.prepareCall("{call insertProduct(?, ?, ?, ?, ?, ?)}");
			//Set dữ liệu cho tham số vào
			callSt.setString(1, pro.getProductName());
			callSt.setFloat(2, pro.getPrice());
			callSt.setString(3, pro.getTitle());
			callSt.setString(4, pro.getDescriptions());
			callSt.setBoolean(5, pro.isStatus());
			//Đăng ký kiểu dữ liệu cho các tham số trả ra
			callSt.registerOutParameter(6, Types.BIT);
			//Gọi procedure
			callSt.execute();
			//Lấy giá trị các tham số trả ra
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
	public boolean updateProduct(Product pro) {
		// TODO Auto-generated method stub
		Connection conn = null;
		CallableStatement callSt = null;
		boolean flag = false;
		try {
			conn = ConnectionDB.openConnection();
			callSt = conn.prepareCall("{call updateProduct(?, ?, ?, ?, ?, ?, ?)}");
			//Set dữ liệu cho tham số vào
			callSt.setInt(1, pro.getProductId());
			callSt.setString(2, pro.getProductName());
			callSt.setFloat(3, pro.getPrice());
			callSt.setString(4, pro.getTitle());
			callSt.setString(5, pro.getDescriptions());
			callSt.setBoolean(6, pro.isStatus());
			//Đăng ký kiểu dữ liệu cho các tham số trả ra
			callSt.registerOutParameter(7, Types.BIT);
			//Gọi procedure
			callSt.execute();
			//Lấy giá trị các tham số trả ra
			flag = callSt.getBoolean(7);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			ConnectionDB.closeConnection(conn, callSt);
		}
		return flag;
	}

	@Override
	public boolean deleteProduct(int productId) {
		// TODO Auto-generated method stub
		Connection conn = null;
		CallableStatement callSt = null;
		boolean flag = false;
		try {
			conn = ConnectionDB.openConnection();
			callSt = conn.prepareCall("{call deleteProduct(?)}");
			//Set dữ liệu cho tham số vào
			callSt.setInt(1, productId);
			//Gọi procedure
			callSt.executeUpdate();
			//Lấy giá trị các tham số trả ra
			flag = true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			ConnectionDB.closeConnection(conn, callSt);
		}
		return flag;
	}

	
}
