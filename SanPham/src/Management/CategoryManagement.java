package Management;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import Class.Categories;
import Class.Product;
import Exceptions.DuplicateException;
import Exceptions.InvalidLevelException;
import Exceptions.NonExistenceValueException;

public class CategoryManagement {
//	static List<Integer> dsId = new ArrayList<>();

	static List<Integer> dsParentId = new ArrayList<>(); // List chứa các id danh mục cha
	static List<Categories> category = new ArrayList<Categories>();

	// Hàm kiểm tra giá trị tồn tại
	public static boolean checkExistenceValue(int id) {
		for (Integer i : dsParentId) {
			if (id == i)
				return true;
		}
		return false;
	}

	public void CateMenu() {
		// TODO Auto-generated method stub

		Scanner sc = new Scanner(System.in);

		boolean flag = true;
		while (flag) {
			boolean flag1 = true;
			boolean flag2 = true;
			System.out.println("******************QUAN LY DANH MUC*********************");
			System.out.println("1.Danh sach danh muc");
			System.out.println("2.Them danh muc");
			System.out.println("3.Xoa danh muc");
			System.out.println("4.Tim kiem danh muc");
			System.out.println("5.Quay lai");
			System.out.println("Su lua chon cua ban:");
			int choice1 = sc.nextInt();
			switch (choice1) {
			// Danh sach danh muc
			case 1:
				while (flag1) {
					System.out.println("**********DANH SACH DANH MUC**********");
					System.out.println("1.Danh sach cay danh muc");
					System.out.println("2.Thong tin chi tiet danh muc");
					System.out.println("3.Quay lai");
					System.out.println("Su lua chon cua ban:");
					int choice2 = sc.nextInt();
					switch (choice2) {
					// Danh sach cay danh muc
					case 1:
						int i = 1, i1 = 1, i2 = 1;
						for (int k = 0; k < Menu.categoryList.size(); k++) {
							if (Menu.categoryList.get(k).getParentId() == 0) {
								System.out.println(i + "." + Menu.categoryList.get(k).getCatalogName());
								for (int l = k + 1; l < Menu.categoryList.size(); l++) {
									if (Menu.categoryList.get(l).getParentId() == Menu.categoryList.get(k)
											.getCatalogId()) {
										System.out.println(
												"\t" + i + "." + i1 + "." + Menu.categoryList.get(l).getCatalogName());
										for (int m = l + 1; m < Menu.categoryList.size(); m++) {
											if (Menu.categoryList.get(m).getParentId() == Menu.categoryList.get(l)
													.getCatalogId()) {
												System.out.println("\t\t" + i + "." + i1 + "." + i2 + "."
														+ Menu.categoryList.get(m).getCatalogName());
												i2++;
											}
										}
										i2 = 1;
										i1++;
									}
								}
								i1 = 1;
								i++;
							}
						}
						break;
					// Thong tin chi tiet danh muc
					case 2:
						String ten;
						sc.nextLine();
						ten = sc.nextLine();
						for (int n = 0; n < Menu.categoryList.size(); n++) {
							if (Menu.categoryList.get(n).getCatalogName().startsWith(ten)) {
								Menu.categoryList.get(n).displayData();
							}
						}
						break;
					// Quay lai
					case 3:
						flag1 = false;
						break;
					}
				}
				break;
			// Them danh muc
			case 2:
				Categories x = new Categories();
//				int b = 0, c = 0;
				while (flag2) {
					try {
						x.inputData();
						// Set level cap do
						if (x.getParentId() == 0) {
							// Đặt level = 1
							x.setLevel(1);
							dsParentId.add(x.getCatalogId());
						} else if (checkExistenceValue(x.getParentId())) {
							for (int k = 0; k < Menu.categoryList.size(); k++) {
								if (x.getParentId() == Menu.categoryList.get(k).getCatalogId()
										&& Menu.categoryList.get(k).getLevel() == 1) {
									// Đặt level = 2
									x.setLevel(2);
									dsParentId.add(x.getCatalogId());
									break;
								}
								if (x.getParentId() == Menu.categoryList.get(k).getCatalogId()
										&& Menu.categoryList.get(k).getLevel() == 2) {
									// Đặt level = 3
									x.setLevel(3);
									dsParentId.add(x.getCatalogId());
									break;
								} else
									// Đặt level = 4(Không add)
									x.setLevel(4);
							}
						} else if (!checkExistenceValue(x.getParentId()))
							throw new NonExistenceValueException();
						// Quan ly toi da 3 cap
						if (x.getLevel() <= 3) {
//							dsId.add(x.getCatalogId());
							Menu.categoryList.add(x);
							flag2 = false;
						} else
							throw new InvalidLevelException();
					} catch (InvalidLevelException | NonExistenceValueException e) {
						// TODO: handle exception
						System.err.println(e.toString());
					}
				}
				if (Menu.categoryList.size() > 0)
					Menu.writeObjectFileCategory(Menu.catePathFileName);
				break;
			// Xoa danh muc
			case 3:
				int a = 0;
				sc.nextLine();
				int id1 = sc.nextInt();
				// Add ông, cha và con cần xóa vào deleteList
				for (int k = 0; k < Menu.categoryList.size(); k++) {
					if (Menu.categoryList.get(k).getCatalogId() == id1) {
						Menu.deleteList.add(Menu.categoryList.get(k));
						for (int l = k + 1; l < Menu.categoryList.size(); l++) {
							if (Menu.categoryList.get(l).getParentId() == id1) {
								Menu.deleteList.add(Menu.categoryList.get(l));
								for (int m = l + 1; m < Menu.categoryList.size(); m++) {
									if (Menu.categoryList.get(m).getParentId() == Menu.categoryList.get(l)
											.getCatalogId()) {
										Menu.deleteList.add(Menu.categoryList.get(m));
									}
								}
							}
						}
					}
				}
				if (Menu.deleteList.size() > 0) {
					// Xóa danh mục
					for (int k = 0; k < Menu.categoryList.size(); k++) {
						for (int l = 0; l < Menu.deleteList.size(); l++) {
							if (Menu.categoryList.get(k) == Menu.deleteList.get(l)) {
								Menu.categoryList.remove(k);
								if (k > 0)
									k--;
							}
						}
					}
					// Xóa sản phẩm tương ứng
					for (int k = 0; k < Menu.productList.size(); k++) {
						for (int l = 0; l < Menu.deleteList.size(); l++) {
							if (Menu.productList.get(k).getCatalog().getCatalogName() == Menu.deleteList.get(l)
									.getCatalogName()) {
								Menu.productList.remove(k);
								if (k > 0)
									k--;
							}
						}
					}
				}
				if (Menu.categoryList.size() > 0)
					Menu.writeObjectFileCategory(Menu.catePathFileName); // Cập nhật lại file categories
				if (Menu.productList.size() > 0)
					Menu.writeObjectFileProduct(Menu.proPathFileName); // Cập nhật lại file products
				break;
			case 4:
				String ten;
				sc.nextLine();
				ten = sc.nextLine();
				for (int k = 0; k < Menu.categoryList.size(); k++) {
					if (Menu.categoryList.get(k).getCatalogName().startsWith(ten))
						Menu.categoryList.get(k).displayData();
				}
				break;
			case 5:
				flag = false;
				break;
			}
		}
	}
}
