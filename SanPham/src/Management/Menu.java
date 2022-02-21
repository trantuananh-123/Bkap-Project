package Management;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import Class.Categories;
import Class.Product;
import Exceptions.EmptyFileException;

public class Menu {

	public static List<Categories> categoryList = new ArrayList<Categories>(); // List chứa các Category thỏa mãn
	public static List<Product> productList = new ArrayList<Product>(); // List chứa các Product thỏa mãn
	public static List<Categories> deleteList = new ArrayList<Categories>(); // List chứa danh mục và sản phẩm cần xóa

	public static Menu menu = new Menu(); // Khởi tạo menu

	public static String catePathName = "data/category";
	public static String catePathFileName = catePathName + "/categories.txt";
	public static File cateFile = new File("data/category/categories.txt");

	public static String proPathName = "data/product";
	public static String proPathFileName = proPathName + "/products.txt";
	public static File proFile = new File("data/product/products.txt");

	public static int FLAG = 0;
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		menu.createDirectory(catePathName);
		menu.createFile(catePathFileName);
		menu.createDirectory(proPathName);
		menu.createFile(proPathFileName);
		menu.MENU();
	}

	public boolean checkDuplicatedCategory(Categories x) {
		for (Categories i : categoryList) {
			if (x.getCatalogId() == i.getCatalogId())
				return false;
		}
		return true;
	}

	public boolean checkDuplicatedProduct(Product x) {
		for (Product i : productList) {
			if (x.getProductId().equals(i.getProductId()))
				return false;
		}
		return true;
	}

	// Tạo đường dẫn file
	public void createDirectory(String pathname) {
		File file = new File(pathname);

		if (file.exists()) {
//			System.out.println("Đường dẫn này đã tồn tại");
			if (file.isDirectory()) {
//				System.out.println("Thư mục đã tồn tại");
			}
		} else {
			file.mkdirs();
//			System.out.println("Tạo thư mục " + pathname + " thành công");
		}
	}

	// Tao file
	public void createFile(String pathname) {
		File file = new File(pathname);
		if (file.exists()) {
//			System.out.println("File đã tồn tại");
		} else {
			try {
				file.createNewFile();
			} catch (IOException e) {
				// TODO: handle exception
				System.err.println(e.toString());
			}
//			System.out.println("Tạo file " + pathname + " thành công");
		}
	}

	// Ghi vào file categories
	public static void writeObjectFileCategory(String pathname) {
		try (FileOutputStream fos = new FileOutputStream(pathname);
				ObjectOutputStream out = new ObjectOutputStream(fos);) {
			out.writeObject(categoryList);
//			System.out.println("Ghi dữ liệu thành công");
//			out.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	// Đọc file categories
	public void readObjectFileCategory(String pathname) {
		List<Categories> _categoryList = null;
		try (FileInputStream fis = new FileInputStream(pathname); ObjectInputStream in = new ObjectInputStream(fis);) {
			_categoryList = (List<Categories>) in.readObject();
			for (Categories i : _categoryList) {
				if (checkDuplicatedCategory(i))
					categoryList.add(i);
					CategoryManagement.dsParentId.add(i.getCatalogId());
			}
//			System.out.println("Đọc dữ liệu thành công");
//			_categoryList.forEach(i -> i.displayData());
//			in.close();
//			fis.close();
		} catch (IOException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	// Ghi vào file products
	public static void writeObjectFileProduct(String pathname) {
		try (FileOutputStream fos = new FileOutputStream(pathname);
				ObjectOutputStream out = new ObjectOutputStream(fos);) {
			out.writeObject(productList);
//			System.out.println("Ghi dữ liệu thành công");
//			out.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	// Đọc file products
	public void readObjectFileProduct(String pathname) {
		List<Product> _productList = null;
		try (FileInputStream fis = new FileInputStream(pathname); ObjectInputStream in = new ObjectInputStream(fis);) {
			_productList = (List<Product>) in.readObject();
			for (Product i : _productList) {
				if (checkDuplicatedProduct(i))
					productList.add(i);
			}
//			System.out.println("Đọc dữ liệu thành công");
//			_categoryList.forEach(i -> i.displayData());
//			in.close();
//			fis.close();
		} catch (IOException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public void MENU() {
		Scanner sc = new Scanner(System.in);

		CategoryManagement category = new CategoryManagement();
		ProductManagement product = new ProductManagement();

		int choice;

		while (true) {
			System.out.println("**************************************MENU**************************************");
			System.out.println("1.Quan ly danh muc");
			System.out.println("2.Quan ly san pham");
			System.out.println("3.Thoat");
			System.out.println("Su lua chon cua ban:");
			choice = sc.nextInt();
			switch (choice) {
			case 1:
				// Kiểm tra file category rỗng
				try {
					if (cateFile.length() == 0)
						throw new EmptyFileException();
					else
						menu.readObjectFileCategory(catePathFileName);
				} catch (EmptyFileException e) {
					// TODO: handle exception
					System.err.println(e.toString());
				} catch (Exception e) {
					System.err.println(e.toString());
				}
				category.CateMenu();
				if (categoryList.size() > 0) {
					for (Categories i : menu.categoryList)
						i.displayData();
				}
				break;
			case 2:
				// Kiểm tra file products rỗng
				try {
					if (proFile.length() == 0)
						throw new EmptyFileException();
					else
						menu.readObjectFileProduct(proPathFileName);
				} catch (EmptyFileException e) {
					// TODO: handle exception
					System.err.println(e.toString());
				} catch (Exception e) {
					System.err.println(e.toString());
				}
				product.ProMenu();
				for (Product i : menu.productList)
					i.displayData();
				break;
			case 3:
				System.out.println("Bạn đã thoát chương trình");
				System.exit(0);
			}
		}
	}

}
