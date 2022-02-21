package Management;

import java.util.Scanner;

import Class.Categories;
import Class.Product;
import Exceptions.NonExistenceValueException;
import Exceptions.StringBeginException;
import Exceptions.StringLengthException;
import Exceptions._DuplicateException;
import Exceptions._NonExistenceIDException;

public class ProductManagement {
	
	public void ProMenu() {

		Scanner sc = new Scanner(System.in);

		boolean flag = true;
		while (flag) {
			System.out.println("********QUAN LY SAN PHAM********");
			System.out.println("1.Them san pham moi");
			System.out.println("2.Tinh loi nhuan san pham");
			System.out.println("3.Hien thi thong tin san pham");
			System.out.println("4.Sap xep san pham");
			System.out.println("5.Cap nhat thong tin san pham");
			System.out.println("6.Cap nhat trang thai san pham");
			System.out.println("7.Quay lai");
			System.out.println("Su lua chon cua ban:");
			int choice1 = sc.nextInt();
			if(choice1 == 5) Menu.FLAG = 1;
			switch (choice1) {
			case 1:
				// Them san pham
				Product product = new Product();
				product.inputData();
				Menu.productList.add(product);
				if(Menu.productList.size() > 0) Menu.writeObjectFileProduct(Menu.proPathFileName);
				break;
			case 2:
				// Tinh loi nhuan
				for (Product i : Menu.productList) {
					System.out.println(i.getProductName() + " " + i.calProfit());
				}
				break;
			case 3:
				// Thong tin chi tiet
				boolean flag1 = true;
				while (flag1) {
					System.out.println("********THONG TIN SAN PHAM********");
					System.out.println("1.Hien thi san pham theo danh muc");
					System.out.println("2.Hien thi chi tiet san pham");
					System.out.println("3.Quay lai");
					System.out.println("Su lua chon cua ban:");
					int choice2 = sc.nextInt();
					switch (choice2) {
					case 1:
						String cataName;
						sc.nextLine();
						cataName = sc.nextLine();
						for (Product i : Menu.productList) {
							if (i.getCatalog().getCatalogName().equals(cataName)) {
								i.displayData();
							}
						}
						break;
					case 2:
						for (Product i : Menu.productList)
							i.displayData();
						break;
					case 3:
						flag1 = false;
						break;
					}
				}
				break;
			case 4:
				// Sap xep
				boolean flag2 = true;
				while (flag2) {
					System.out.println("********SAP XEP SAN PHAM********");
					System.out.println("1.Sap xep san pham theo gia xuat tang dan");
					System.out.println("2.Sap xep san pham theo loi nhuan giam dan");
					System.out.println("3.Quay lai");
					System.out.println("Su lua chon cua ban:");
					int choice2 = sc.nextInt();
					switch (choice2) {
					case 1:
						for (int i = 0; i < Menu.productList.size() - 1; i++) {
							for (int j = i + 1; j < Menu.productList.size(); j++) {
								float x = Menu.productList.get(i).getExportPrice();
								float y = Menu.productList.get(j).getExportPrice();
								if (x > y) {
									Product temp = Menu.productList.get(i);
									Menu.productList.set(i, Menu.productList.get(j));
									Menu.productList.set(j, temp);
								}
							}
						}
						for (Product i : Menu.productList)
							i.displayData();
						break;
					case 2:
						for (int i = 0; i < Menu.productList.size() - 1; i++) {
							for (int j = i + 1; j < Menu.productList.size(); j++) {
								float x = Menu.productList.get(i).calProfit();
								float y = Menu.productList.get(j).calProfit();
								if (x < y) {
									Product temp = Menu.productList.get(i);
									Menu.productList.set(i, Menu.productList.get(j));
									Menu.productList.set(j, temp);
								}
							}
						}
						for (Product i : Menu.productList)
							i.displayData();
						break;
					case 3:
						flag2 = false;
						break;
					}
				}
				break;
			case 5:
				String s = null;
				Product x = new Product();
				boolean flag3 = true, flag4 = false;
				sc.nextLine();
				while (flag3) {
					System.out.println("Xin mời bạn nhập vào mã sản phẩm: ");
					try {
						s = sc.nextLine();
						if (s.length() != 4)
							throw new StringLengthException();
						else if (s.charAt(0) != 'C')
							throw new StringBeginException();
						else {
							for (Product k : Menu.productList) {
								if (s.equals(k.getProductId())) {
									flag4 = true;
									break;
								}
							}
							if (flag4 == false)
								throw new _NonExistenceIDException();
						}
						flag3 = false;
					} catch (StringLengthException | _NonExistenceIDException | StringBeginException e) {
						// TODO: handle exception
						System.err.println(e.toString());
					} catch (Exception e) {
						System.err.println(e.toString());
					}
				}
				for (int i = 0; i < Menu.productList.size(); i++) {
					if (Menu.productList.get(i).getProductId().equals(s)) {
						x.inputData();
						x.setProductId(s);
						Menu.productList.set(i, x);
					}
				}
				if(Menu.productList.size() > 0) Menu.writeObjectFileProduct(Menu.proPathFileName);
				break;
			case 6:
				String ID;
				sc.nextLine();
				ID = sc.nextLine();
				for (int i = 0; i < Menu.productList.size(); i++) {
					if (Menu.productList.get(i).getProductId().equals(ID)) {
						boolean status;
						status = sc.nextBoolean();
						Menu.productList.get(i).setProductStatus(status);
					}
				}
				if(Menu.productList.size() > 0) Menu.writeObjectFileProduct(Menu.proPathFileName);
				break;
			case 7:
				flag = false;
				break;
			}
		}

	}
}
