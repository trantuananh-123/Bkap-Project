package Class;

import java.io.Serializable;
import java.util.InputMismatchException;
import java.util.Scanner;

import Exceptions.EmptyStringException;
import Exceptions.StringBeginException;
import Exceptions.StringLengthException;
import Exceptions.StringTooLongException;
import Exceptions.StringTooShortException;
import Exceptions.ValueException;
import Exceptions._DuplicateException;
import Exceptions._NonExistenceValueException;
import Exceptions._PositiveNumException;
import Exceptions._StringTooLongException;
import Exceptions._StringTooShortException;
import Interface.IProduct;
import Management.Menu;
import Management.ProductManagement;

public class Product implements IProduct, Serializable {

	private String productId, productName, title, descriptions, cataName;
	private float importPrice, exportPrice, profit;
	private boolean productStatus;
	private Categories catalog;

	// Hàm kiểm tra mã sản phẩm lặp
	public static boolean _checkDuplicatedValue(String id) {
		for (Product i : Menu.productList) {
			if (id.equals(i.getProductId()))
				return false;
		}
		return true;
	}

	public Product() {

	}

	public Product(String productId, String productName, String title, String descriptions, float importPrice,
			float exportPrice, float profit, boolean productStatus, Categories catalog) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.title = title;
		this.descriptions = descriptions;
		this.importPrice = importPrice;
		this.exportPrice = exportPrice;
		this.profit = profit;
		this.productStatus = productStatus;
		this.catalog = catalog;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescriptions() {
		return descriptions;
	}

	public void setDescriptions(String descriptions) {
		this.descriptions = descriptions;
	}

	public float getImportPrice() {
		return importPrice;
	}

	public void setImportPrice(float importPrice) {
		this.importPrice = importPrice;
	}

	public float getExportPrice() {
		return exportPrice;
	}

	public void setExportPrice(float exportPrice) {
		this.exportPrice = exportPrice;
	}

	public float getProfit() {
		return profit;
	}

	public void setProfit(float profit) {
		this.profit = profit;
	}

	public boolean isProductStatus() {
		return productStatus;
	}

	public void setProductStatus(boolean productStatus) {
		this.productStatus = productStatus;
	}

	public Categories getCatalog() {
		return catalog;
	}

	public void setCatalog(Categories catalog) {
		this.catalog = catalog;
	}

	public String getCataName() {
		return cataName;
	}

	public void setCataName(String cataName) {
		this.cataName = cataName;
	}

	public void inputData() {
		Scanner sc = new Scanner(System.in);
		boolean flag = true, flag1 = false;
		// Mã sản phẩm
		if (Menu.FLAG == 0) {
			while (flag) {
				System.out.println("Xin mời bạn nhập vào mã sản phẩm: ");
				try {
					this.productId = sc.nextLine();
					if (this.productId.length() != 4)
						throw new StringLengthException();
					else if (this.productId.charAt(0) != 'C')
						throw new StringBeginException();
					else if (!_checkDuplicatedValue(this.productId))
						throw new _DuplicateException();
					flag = false;
				} catch (StringLengthException | _DuplicateException | StringBeginException e) {
					// TODO: handle exception
					System.err.println(e.toString());
				} catch (Exception e) {
					System.err.println(e.toString());
				}
			}
		}
		flag = true;
		// Tên sản phẩm
		while (flag) {
			System.out.println("Xin mời bạn nhập vào tên sản phẩm: ");
			try {
				this.productName = sc.nextLine();
				if (this.productName.length() < 6)
					throw new _StringTooShortException();
				if (this.productName.length() > 50)
					throw new _StringTooLongException();
				flag = false;
			} catch (_StringTooShortException | _StringTooLongException e) {
				// TODO: handle exception
				System.err.println(e.toString());
			} catch (Exception e) {
				System.err.println(e.toString());
			}
		}
		flag = true;
		// Tiêu đề sản phẩm
		while (flag) {
			System.out.println("Xin mời bạn nhập vào tiêu đề sản phẩm: ");
			try {
				this.title = sc.nextLine();
				if (this.title.length() < 6)
					throw new _StringTooShortException();
				if (this.title.length() > 30)
					throw new _StringTooLongException();
				flag = false;
			} catch (_StringTooShortException | _StringTooLongException e) {
				// TODO: handle exception
				System.err.println(e.toString());
			} catch (Exception e) {
				System.err.println(e.toString());
			}
		}
		flag = true;
		// Giá nhập sản phẩm
		while (flag) {
			System.out.println("Xin mời bạn nhập vào giá nhập sản phẩm");
			try {
				this.importPrice = sc.nextFloat();
				if (this.importPrice < 0)
					throw new _PositiveNumException();
				flag = false;
			} catch (_PositiveNumException | InputMismatchException e) {
				// TODO: handle exception
				sc.nextLine();
				System.err.println(e.toString());
			} catch (Exception e) {
				sc.nextLine();
				System.err.println(e.toString());
			}
		}
		flag = true;
		// Giá xuất sản phẩm
		while (flag) {
			System.out.println("Xin mời bạn nhập vào giá xuất sản phẩm");
			try {
				this.exportPrice = sc.nextFloat();
				if (this.exportPrice < this.importPrice * (1 + MIN_INTEREST_RATE))
					throw new ValueException();
				flag = false;
				sc.nextLine();
			} catch (ValueException | InputMismatchException e) {
				// TODO: handle exception
				sc.nextLine();
				System.err.println(e.toString());
			} catch (Exception e) {
				sc.nextLine();
				System.err.println(e.toString());
			}
		}
		flag = true;
		// Mô tả sản phẩm
		while (flag) {
			System.out.println("Xin mời bạn nhập mô tả sản phẩm: ");
			try {
				this.descriptions = sc.nextLine();
				if (this.descriptions.equals(""))
					throw new EmptyStringException();
				flag = false;
			} catch (EmptyStringException e) {
				// TODO: handle exception
				System.err.println(e.toString());
			} catch (Exception e) {
				System.err.println(e.toString());
			}
		}
		flag = true;
		// Trạng thái sản phẩm
		while (flag) {
			System.out.println("Xin mời bạn nhập trạng thái sản phẩm(true/false): ");
			try {
				this.productStatus = sc.nextBoolean();
				sc.nextLine();
				flag = false;
			} catch (InputMismatchException e) {
				// TODO: handle exception
				sc.nextLine();
				System.err.println(e.toString());
			}
		}
		flag = true;
		while (flag) {
			System.out.println("Xin mời bạn nhập danh mục sản phẩm");
			try {
				this.cataName = sc.nextLine();
				for (Categories i : Menu.categoryList) {
					if (this.cataName.equals(i.getCatalogName())) {
						this.setCatalog(i);
						flag1 = true;
						break;
					}
				}
				if (flag1 == true)
					flag = false;
				else
					throw new _NonExistenceValueException();
			} catch (_NonExistenceValueException e) {
				// TODO: handle exception
				System.err.println(e.toString());
			} catch (Exception e) {
				System.err.println(e.toString());
			}
		}
	}

//	public void updateData() {
//		Scanner sc = new Scanner(System.in);
//		boolean flag = true, flag1 = false;
//		// Tên sản phẩm
//		while (flag) {
//			System.out.println("Xin mời bạn nhập vào tên sản phẩm: ");
//			try {
//				this.productName = sc.nextLine();
//				if (this.productName.length() < 6)
//					throw new _StringTooShortException();
//				if (this.productName.length() > 50)
//					throw new _StringTooLongException();
//				flag = false;
//			} catch (_StringTooShortException | _StringTooLongException e) {
//				// TODO: handle exception
//				System.err.println(e.toString());
//			} catch (Exception e) {
//				System.err.println(e.toString());
//			}
//		}
//		flag = true;
//		// Tiêu đề sản phẩm
//		while (flag) {
//			System.out.println("Xin mời bạn nhập vào tiêu đề sản phẩm: ");
//			try {
//				this.title = sc.nextLine();
//				if (this.title.length() < 6)
//					throw new _StringTooShortException();
//				if (this.title.length() > 30)
//					throw new _StringTooLongException();
//				flag = false;
//			} catch (_StringTooShortException | _StringTooLongException e) {
//				// TODO: handle exception
//				System.err.println(e.toString());
//			} catch (Exception e) {
//				System.err.println(e.toString());
//			}
//		}
//		flag = true;
//		// Giá nhập sản phẩm
//		while (flag) {
//			System.out.println("Xin mời bạn nhập vào giá nhập sản phẩm");
//			try {
//				this.importPrice = sc.nextFloat();
//				if (this.importPrice < 0)
//					throw new _PositiveNumException();
//				flag = false;
//			} catch (_PositiveNumException | InputMismatchException e) {
//				// TODO: handle exception
//				sc.nextLine();
//				System.err.println(e.toString());
//			} catch (Exception e) {
//				sc.nextLine();
//				System.err.println(e.toString());
//			}
//		}
//		flag = true;
//		// Giá xuất sản phẩm
//		while (flag) {
//			System.out.println("Xin mời bạn nhập vào giá xuất sản phẩm");
//			try {
//				this.exportPrice = sc.nextFloat();
//				if (this.exportPrice < this.importPrice * (1 + MIN_INTEREST_RATE))
//					throw new ValueException();
//				flag = false;
//				sc.nextLine();
//			} catch (ValueException | InputMismatchException e) {
//				// TODO: handle exception
//				sc.nextLine();
//				System.err.println(e.toString());
//			} catch (Exception e) {
//				sc.nextLine();
//				System.err.println(e.toString());
//			}
//		}
//		flag = true;
//		// Mô tả sản phẩm
//		while (flag) {
//			System.out.println("Xin mời bạn nhập mô tả sản phẩm: ");
//			try {
//				this.descriptions = sc.nextLine();
//				if (this.descriptions.equals(""))
//					throw new EmptyStringException();
//				flag = false;
//			} catch (EmptyStringException e) {
//				// TODO: handle exception
//				System.err.println(e.toString());
//			} catch (Exception e) {
//				System.err.println(e.toString());
//			}
//		}
//		flag = true;
//		// Trạng thái sản phẩm
//		while (flag) {
//			System.out.println("Xin mời bạn nhập trạng thái sản phẩm: ");
//			try {
//				this.productStatus = sc.nextBoolean();
//				sc.nextLine();
//				flag = false;
//			} catch (InputMismatchException e) {
//				// TODO: handle exception
//				sc.nextLine();
//				System.err.println(e.toString());
//			}
//		}
//		flag = true;
//		while (flag) {
//			System.out.println("Xin mời bạn nhập danh mục sản phẩm");
//			try {
//				this.cataName = sc.nextLine();
//				for (Categories i : Menu.categoryList) {
//					if (this.cataName.equals(i.getCatalogName())) {
//						this.setCatalog(i);
//						flag1 = true;
//						break;
//					}
//				}
//				if (flag1 == true)
//					flag = false;
//				else
//					throw new _NonExistenceValueException();
//			} catch (_NonExistenceValueException e) {
//				// TODO: handle exception
//				System.err.println(e.toString());
//			} catch (Exception e) {
//				System.err.println(e.toString());
//			}
//		}
//	}

	public void displayData() {
		StringBuilder builder = new StringBuilder();
		builder.append(String.format("%20s", this.getProductId()));
		builder.append('|');
		builder.append(String.format("%20s", this.getProductName()));
		builder.append('|');
		builder.append(String.format("%20s", this.getTitle()));
		builder.append('|');
		builder.append(String.format("%20s", this.getImportPrice()));
		builder.append('|');
		builder.append(String.format("%20s", this.getExportPrice()));
		builder.append('|');
		if (this.isProductStatus() == true)
			builder.append(String.format("%25s", "Hoạt động"));
		else if (this.isProductStatus() == false)
			builder.append(String.format("%25s", "Không hoạt động"));
		builder.append('|');
		builder.append(String.format("%20s", this.getCataName()));
		builder.append('|');
		System.out.println(builder.toString());
	}

	public float calProfit() {
		return this.exportPrice - this.importPrice;
	}
}
