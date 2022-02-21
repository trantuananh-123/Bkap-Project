package bkap.entities;

public class Product {

	private String productId;
	private String productName;
	private float price;
	private String descriptions;
	private String title;
	private boolean status;
	private int catalogId;
	private String catalogName;

	public Product(String productId, String productName, float price, String descriptions, String title, boolean status,
			int catalogId, String catalogName) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.price = price;
		this.descriptions = descriptions;
		this.title = title;
		this.status = status;
		this.catalogId = catalogId;
		this.catalogName = catalogName;
	}

	public Product() {
		super();
		// TODO Auto-generated constructor stub
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

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getDescriptions() {
		return descriptions;
	}

	public void setDescriptions(String descriptions) {
		this.descriptions = descriptions;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public int getCatalogId() {
		return catalogId;
	}

	public void setCatalogId(int catalogId) {
		this.catalogId = catalogId;
	}

	public String getCatalogName() {
		return catalogName;
	}

	public void setCatalogName(String catalogName) {
		this.catalogName = catalogName;
	}

}
