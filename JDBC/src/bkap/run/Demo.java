package bkap.run;

import java.util.List;
import java.util.Scanner;

import bkap.dao.ProductDaoImp;
import bkap.entities.Product;

public class Demo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		ProductDaoImp pdi= new ProductDaoImp();
		do {
			System.out.println("****************MENU*********************");
			System.out.println("1. Danh sach san pham");
			System.out.println("2. Them moi mot san pham");
			System.out.println("3. Cap nhat san pham");
			System.out.println("4. Xoa san pham");
			System.out.println("5. Thoat");
			System.out.print("Su lua chon cua ban: ");
			int choice = Integer.parseInt(sc.nextLine());
			switch (choice) {
			case 1:
				List<Product> listPro = pdi.getAllProduct();
				for (Product product : listPro) {
					System.out.printf("Ma SP: %d - ten SP: %s - Gia: %f\n",product.getProductId(),product.getProductName(),product.getPrice());
				}
				break;
			case 2:
				//Nhap thong tin san pham can them moi
				Product proNew = new Product();
				System.out.println("Nhap ten san pham: ");
				proNew.setProductName(sc.nextLine());
				System.out.println("Nhap gia san pham: ");
				proNew.setPrice(Float.parseFloat(sc.nextLine()));
				System.out.println("Nhap tieu de san pham: ");
				proNew.setTitle(sc.nextLine());
				System.out.println("Nhap mo ta san pham: ");
				proNew.setDescriptions(sc.nextLine());
				System.out.println("Nhap trang thai san pham: ");
				proNew.setStatus(Boolean.parseBoolean(sc.nextLine()));
				//Thuc hien them moi
				boolean check = pdi.insertProduct(proNew);
				if (check) {
					System.out.println("Them moi thanh cong");
				}else {
					System.err.println("Them moi that bai");
				}
				break;
			case 3:
				Product proUpdate = new Product();
				System.out.println("Nhap ma san pham can cap nhat: ");
				proUpdate.setProductId(Integer.parseInt(sc.nextLine()));
				System.out.println("Nhap ten san pham: ");
				proUpdate.setProductName(sc.nextLine());
				System.out.println("Nhap gia san pham: ");
				proUpdate.setPrice(Float.parseFloat(sc.nextLine()));
				System.out.println("Nhap tieu de san pham: ");
				proUpdate.setTitle(sc.nextLine());
				System.out.println("Nhap mo ta san pham: ");
				proUpdate.setDescriptions(sc.nextLine());
				System.out.println("Nhap trang thai san pham: ");
				proUpdate.setStatus(Boolean.parseBoolean(sc.nextLine()));
				//Thuc hien them moi
				boolean checkUpdate = pdi.updateProduct(proUpdate);
				if (checkUpdate) {
					System.out.println("Cap nhat thanh cong");
				}else {
					System.err.println("Cap nhat that bai");
				}
				break;
			case 4:
				System.out.println("Nhap vao ma san pham can xoa: ");
				int productId = Integer.parseInt(sc.nextLine());
				boolean checkDelete = pdi.deleteProduct(productId);
				if (checkDelete) {
					System.out.println("Xoa thanh cong");
				}else {
					System.err.println("Xoa that bai");
				}
				break;
			case 5:
				System.exit(0);
			default:
				System.out.println("Xin vui long chon tu 1-5");
				break;
			}
		} while (true);

	}

}
