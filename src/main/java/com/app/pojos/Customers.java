package com.app.pojos;

import java.time.LocalDate;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "customers")
public class Customers {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name="cart_id")
	private Cart  cartId;
	
	@OneToOne(mappedBy = "customers")
	private Logins logins;

	@Column(length = 50, unique = true)
	private String username;

	@Column(length = 50)
	// @NotBlank(message = "Password Can't be Blank")
	private String password;

	@Column(name = "firstName", length = 30)
	// @NotBlank(message = "First Name Can't be Blank")
	private String firstName;

	@Column(name = "lastName", length = 30)
	// @NotBlank(message = "Last Name Can't be Blank")
	private String lastName;

	@Column(length = 50)
	// @NotBlank(message = "Email Can't be Blank")
	private String email;

	@Column(name = "contactNo", length = 11)
	private String contactNo;

	private LocalDate dob;

	@Column(length = 10)
	private String gender;

	@Column(name = "houseAddress", length = 100)
	private String houseAddress;

	public Customers() {
		System.out.println("In Constructor Customers");
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public Cart getCart() {
		return cartId;
	}

	public void setCart(Cart cart) {
		this.cartId = cart;
	}

	public LocalDate getDob() {
		return dob;
	}

	public void setDob(LocalDate dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getHouseAddress() {
		return houseAddress;
	}

	public void setHouseAddress(String houseAddress) {
		this.houseAddress = houseAddress;
	}

	@Override
	public String toString() {
		return "Customers [id=" + id + ", username=" + username + ", password=" + password + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", email=" + email + ", contactNo=" + contactNo + ", dob=" + dob
				+ ", gender=" + gender + ", houseAddress=" + houseAddress + "]";
	}

}
