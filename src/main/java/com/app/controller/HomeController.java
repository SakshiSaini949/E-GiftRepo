package com.app.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.pojos.Customers;
import com.app.pojos.Logins;
import com.app.service.ICustomerService;
import com.app.service.ILoginService;

@Controller
@RequestMapping("/home")
public class HomeController {

	@Autowired
	ILoginService logService;
	@Autowired
	ICustomerService custService;

	public HomeController() {
		System.out.println("in ctor of " + getClass().getName());
	}

	public String showIndexPage() {
		System.out.println("in show index page");
		return "/index";// actual view name : /WEB-INF/views/index.jsp
	}

	@RequestMapping("/index")
	public String showIndex1Page() {
		System.out.println("in show index page");
		return "/index";
	}

	@RequestMapping("/admin")
	public String showAdminPage() {
		System.out.println("in show admin page");
		return "admin/admin";
	}

	@GetMapping("/login")
	public String showLoginPage(Customers customers) {
		System.out.println("in show login page");
		return "login/login";
	}

	@PostMapping("/login")
	public String processLoginPage(@ModelAttribute Logins logins, HttpSession session) {
		System.out.println("In Process login page");
		Logins loginspojo = logService.validateUser(logins.getUsername(), logins.getPassword());
		System.out.println("Login pojo " + loginspojo);

		session.setAttribute("login_details", loginspojo);

		if (loginspojo.getId() == 0) {
			return "login/login";

		} else if (loginspojo.getRole().equals("user")) {
			return "/index2";
		} else
			return "admin/admin";
	}

	@RequestMapping("/register")
	public String showRegisterPage() {
		System.out.println("in customer register page");
		return "redirect:/customer/register";
	}
	
	@RequestMapping("/categories")
	public String showCategoryPage() {
		System.out.println("in product category page");
		return "redirect:/product/categories";
	}
	@GetMapping("/logout")
	public String showLogoutPage() {
		return "logout";
	}

}
