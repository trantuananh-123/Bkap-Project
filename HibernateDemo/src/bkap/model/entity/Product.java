package bkap.model.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.context.annotation.Lazy;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Product")
public class Product {
	@Id
	@Column(name = "ProductId")
	private String productId;
	@Column(name = "ProductName")
	private String productName;
	@Column(name = "Price")
	private float price;
	@Column(name = "ProductStatus")
	private boolean productStatus;
	@Column(name = "Created")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date created;
	@ManyToOne
	@JoinColumn(name = "CatalogId",referencedColumnName = "catalogId")
	@Lazy(value = false)
	private Categories catalog;
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(String productId, String productName, float price, boolean productStatus, Categories catalog, Date created) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.price = price;
		this.productStatus = productStatus;
		this.catalog = catalog;
		this.created = created;
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
	public Date getCreated() {
		return created;
	}
	public void setCreated(String created) {
		this.created = Date.valueOf(created);
	}
	
	
}
