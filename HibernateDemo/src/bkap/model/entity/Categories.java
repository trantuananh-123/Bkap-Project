package bkap.model.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Categories")
public class Categories {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "CatalogId")
	private int catalogId;
	@Column(name = "CatalogName")
	private String catalogName;
	@Column(name = "CatalogStatus")
	private boolean catalogStatus;
	@OneToMany(mappedBy = "catalog")
	private List<Product> listPro = new ArrayList<Product>();
	public Categories() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Categories(int catalogId, String catalogName, boolean catalogStatus, List<Product> listPro) {
		super();
		this.catalogId = catalogId;
		this.catalogName = catalogName;
		this.catalogStatus = catalogStatus;
		this.listPro = listPro;
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
	public boolean isCatalogStatus() {
		return catalogStatus;
	}
	public void setCatalogStatus(boolean catalogStatus) {
		this.catalogStatus = catalogStatus;
	}
	public List<Product> getListPro() {
		return listPro;
	}
	public void setListPro(List<Product> listPro) {
		this.listPro = listPro;
	}
	
	

}
