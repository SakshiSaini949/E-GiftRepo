package com.app.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "products")
public class Products {
	@Id
	@Column(name = "product_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(name = "productName", length = 50)
	private String productName;

	@Column(name = "purchasePrice")
	private double purchasePrice;

	@Column(name = "salePrice")
	private double salePrice;

	@ManyToOne
	@JoinColumn(name = "category_id", nullable = false)
	private Categories categories;

	@Column(name = "quantity")
	// @NotBlank(message = "Product Quantity Can't be Blank")
	private int quantity;

	private String image;

//	@OneToMany(mappedBy = "productID"/* , fetch = FetchType.EAGER, cascade = CascadeType.ALL */)
//	private List<Ratings> ratings = new ArrayList<>();

	public Products() {
		System.out.println("In Constructor Products");
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public double getPurchasePrice() {
		return purchasePrice;
	}

	public void setPurchasePrice(double purchasePrice) {
		this.purchasePrice = purchasePrice;
	}

	public double getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(double salePrice) {
		this.salePrice = salePrice;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

//	public List<Ratings> getRatings() {
//		return ratings;
//	}
//
//	public void setRatings(List<Ratings> ratings) {
//		this.ratings = ratings;
//	}

	public Categories getCategories() {
		return categories;
	}

	public void setCategories(Categories categories) {
		this.categories = categories;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "Products [productID=" + id + ", productName=" + productName + ", purchasePrice=" + purchasePrice
				+ ", salePrice=" + salePrice + ", categories=" + categories + ", quantity=" + quantity + ", image="
				+ "]";
	}

}
