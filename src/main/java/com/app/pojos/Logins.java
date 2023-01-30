package com.app.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "logins")
public class Logins {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;

	@Column(length = 50)
	// @NotBlank(message = "Username Can't be Blank")
	private String username;

	@Column(length = 50)
	// @NotBlank(message = "Password Can't be Blank")
	private String password;

	@Column(length = 20)
	private String role;

	@OneToOne
	@JoinColumn(name = "cust_id")
	private Customers customers;

	public Logins() {
		this.id = 0;
		System.out.println("In Constructor Logins");
	}

	public Customers getCustomers() {
		return customers;
	}

	public void setCustomers(Customers customers) {
		this.customers = customers;
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

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "Logins [loginId=" + id + ", username=" + username + ", password=" + password + ", role=" + role + "]";
	}

}
