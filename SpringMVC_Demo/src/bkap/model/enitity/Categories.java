package bkap.model.enitity;

public class Categories {

	private int catalogId;
	private String catalogName;
	private String descriptions;
	private int priority;
	private boolean status;

	public Categories(int catalogId, String catalogName, String descriptions, int priority, boolean status) {
		super();
		this.catalogId = catalogId;
		this.catalogName = catalogName;
		this.descriptions = descriptions;
		this.priority = priority;
		this.status = status;
	}

	public Categories() {
		super();
		// TODO Auto-generated constructor stub
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

	public String getDescriptions() {
		return descriptions;
	}

	public void setDescriptions(String descriptions) {
		this.descriptions = descriptions;
	}

	public int getPriority() {
		return priority;
	}

	public void setPriority(int priority) {
		this.priority = priority;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
}
