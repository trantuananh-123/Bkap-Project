package Class;

import java.io.Serializable;
import java.util.ArrayList;

import java.util.InputMismatchException;
import java.util.List;
import java.util.Scanner;

import Exceptions.DuplicateException;
import Exceptions.EmptyStringException;
import Exceptions.NonExistenceValueException;
import Exceptions.PositiveNumException;
import Exceptions.PositiveNumException;
import Exceptions.StringContainsNoCharacterException;
import Exceptions.StringTooLongException;
import Exceptions.StringTooShortException;
import Interface.ICategories;
import Management.CategoryManagement;
import Management.Menu;

public class Categories implements ICategories, Serializable {

	private int catalogId, parentId = 0, level;
	private String catalogName, descriptions;
	private boolean catalogStatus;

	// Hàm kiểm tra chứa chữ
	public boolean checkContainsCharacter(String s) {
		for (int i = 0; i < s.length(); i++) {
			if ((s.charAt(i) >= 'a' && s.charAt(i) <= 'z') || (s.charAt(i) >= 'A' && s.charAt(i) <= 'Z'))
				return true;
		}
		return false;
	}

	// Hàm kiểm tra ID lặp
	public static boolean checkDuplicatedValue(int id) {
		for (Categories i : Menu.categoryList) {
			if (id == i.getCatalogId())
				return false;
		}
		return true;
	}

	// Constructor mặc định
	public Categories() {

	}

	// Constructor
	public Categories(int catalogId, int parentId, String catalogName, String descriptions, boolean catalogStatus) {
		super();
		this.catalogId = catalogId;
		this.parentId = parentId;
		this.catalogName = catalogName;
		this.descriptions = descriptions;
		this.catalogStatus = catalogStatus;
	}

	// Get và Set

	public int getCatalogId() {
		return catalogId;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public void setCatalogId(int catalogId) {
		this.catalogId = catalogId;
	}

	public int getParentId() {
		return parentId;
	}

	public void setParentId(int parentId) {
		this.parentId = parentId;
	}

	public String getCatalogName() {
		return catalogName;
	}

	public void setCatalogName(String catalogName) {
		this.catalogName = catalogName;
	}

	public String getDescriptions() {
		return descriptions;
	}

	public void setDescriptions(String descriptions) {
		this.descriptions = descriptions;
	}

	public boolean isCatalogStatus() {
		return catalogStatus;
	}

	public void setCatalogStatus(boolean catalogStatus) {
		this.catalogStatus = catalogStatus;
	}

	public void inputData() {
		boolean flag = true;
		Scanner sc = new Scanner(System.in);
		// Mã danh mục
		while (flag) {
			System.out.println("Xin mời bạn nhập mã danh mục: ");
			try {
				this.catalogId = sc.nextInt();
				if (this.catalogId < 0)
					throw new PositiveNumException();
				else if (!checkDuplicatedValue(this.catalogId))
					throw new DuplicateException();
				sc.nextLine();
				flag = false;
			} catch (PositiveNumException | DuplicateException | InputMismatchException e) {
				// TODO: handle exception
				sc.nextLine();
				System.err.println(e.toString());
			}
		}
		flag = true;
		// Tên danh mục
		while (flag) {
			System.out.println("Xin mời bạn nhập tên danh mục: ");
			try {
				this.catalogName = sc.nextLine();
				if (this.catalogName.length() > 30)
					throw new StringTooLongException();
				if (this.catalogName.length() < 6)
					throw new StringTooShortException();
				if (checkContainsCharacter(this.catalogName) == false)
					throw new StringContainsNoCharacterException();
				flag = false;
			} catch (StringTooLongException | StringTooShortException | StringContainsNoCharacterException e) {
				// TODO: handle exception
				System.err.println(e.toString());
			} catch (Exception e) {
				System.err.println(e.toString());
			}
		}
		flag = true;
		// Mô tả danh mục
		while (flag) {
			System.out.println("Xin mời bạn nhập mô tả danh mục: ");
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
		// Trạng thái danh mục
		while (flag) {
			System.out.println("Xin mời bạn nhập trạng thái danh mục(true/false): ");
			try {
				this.catalogStatus = sc.nextBoolean();
				flag = false;
			} catch (InputMismatchException e) {
				// TODO: handle exception
				sc.nextLine();
				System.err.println(e.toString());
			}
		}
		flag = true;
		// Mã danh mục cha
		while (flag) {
			System.out.println("Xin mời bạn nhập id danh mục cha: ");
			try {
				this.parentId = sc.nextInt();
				flag = false;
			} catch (Exception e) {
				sc.nextLine();
				System.err.println(e.toString());
			}
		}
	}

	public void displayData() {
		StringBuilder builder = new StringBuilder();
		builder.append(String.format("%20d", this.getCatalogId()));
		builder.append('|');
		builder.append(String.format("%20s", this.getCatalogName()));
		builder.append('|');
		builder.append(String.format("%20s", this.getDescriptions()));
		builder.append('|');
		if (this.isCatalogStatus() == true)
			builder.append(String.format("%25s", "Hoạt động"));
		else if (this.isCatalogStatus() == false)
			builder.append(String.format("%25s", "Không hoạt động"));
		builder.append('|');
		builder.append(String.format("%20s", this.getParentId()));
		builder.append('|');
		System.out.println(builder.toString());
	}

}