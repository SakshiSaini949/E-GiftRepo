package com.app.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.app.pojos.Cart;
import com.app.pojos.CartItems;
import com.app.pojos.Customers;
import com.app.pojos.Logins;
import com.app.service.ICartItemsService;
import com.app.service.ICustomerService;
import com.app.service.ILoginService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	@Autowired
	ICustomerService custService;
	@Autowired
	ILoginService logService;
	@Autowired
	ICartItemsService cartItemService;

	@RequestMapping(value = "/customerView", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView model = new ModelAndView("admin/customerView");
		List<Customers> custList = custService.getAllCustomers();
		model.addObject("custList", custList);
		return model;
	}

	@RequestMapping(value = "/addCustomer", method = RequestMethod.GET)
	public ModelAndView addArticle() {
		ModelAndView model = new ModelAndView();
		Customers customer = new Customers();
		model.addObject("custForm", customer);
		model.setViewName("admin/cust_form");
		return model;
	}

	@RequestMapping(value = "/updateCustomer/{id}", method = RequestMethod.GET)
	public ModelAndView editArticle(@PathVariable int id) {
		System.out.println("In Update "+id);
		ModelAndView model = new ModelAndView();
		Customers customer = custService.getCustomerByCustomerId(id);
		model.addObject("custForm", customer);
		model.setViewName("admin/cust_form");
		return model;
	}

	@RequestMapping(value = "/saveCustomer", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("custForm") Customers cust) {
		custService.saveOrUpdate(cust);
		return new ModelAndView("redirect:/customer/customerView");
	}

	@RequestMapping(value = "/deleteCustomer/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") int id) {
		System.out.println("In delete cust "+id);
		custService.deleteCustomers(id);
		return new ModelAndView("redirect:/customer/customerView");
	}

	@GetMapping("/register")
	public String showRegisterPage(Customers customers) {
		System.out.println("in customer register page");
		return "customer/register";
	}

	@PostMapping("/register")
	public String processRegisterPage(@ModelAttribute Customers customers, HttpSession session) {
		System.out.println("In Process Register page");
		System.out.println(customers);
		Cart c = new Cart();
		customers.setCart(c);
		custService.saveOrUpdate(customers);
		Logins login = new Logins();
		login.setUsername(customers.getUsername());
		login.setPassword(customers.getPassword());
		login.setRole("user");
		login.setCustomers(customers);
		logService.saveOrUpdate(login);
		return "redirect:/home/login";
	}
	
	@RequestMapping(value ="/cart", method = RequestMethod.POST)
	public ModelAndView showCartPage( @ModelAttribute CartItems citem) {
		System.out.println("in cart page"+citem);
		cartItemService.saveOrUpdate(citem);
		List<CartItems> list = cartItemService.getAllCartItems();
		ModelAndView model= new ModelAndView("cart/cart");
		model.addObject("cartItems",list);	
		return model;
	}
	
	@RequestMapping(value ="/finalCart")
	public ModelAndView showCartFinalPage() {
		ModelAndView model= new ModelAndView("cart/finalCart");
		List<CartItems> list = cartItemService.getAllCartItems();
		model.addObject("cartList",list);
		return model;
	}
}
