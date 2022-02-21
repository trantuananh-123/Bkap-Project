package bkap.entity;

public class Categories {
	private int catalogId;
	private String catalogName;
	private int priority;
	private String description;
	private boolean status;

	public Categories() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Categories(int catalogId, String catalogName, int priority, String description, boolean status) {
		super();
		this.catalogId = catalogId;
		this.catalogName = catalogName;
		this.priority = priority;
		this.description = description;
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

	public int getPriority() {
		return priority;
	}

	public void setPriority(int priority) {
		this.priority = priority;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

}
