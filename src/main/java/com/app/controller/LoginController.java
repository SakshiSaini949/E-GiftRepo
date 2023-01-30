package com.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.app.pojos.Logins;
import com.app.service.ILoginService;

@Controller
@Validated
@RequestMapping(value = "/login")
public class LoginController {
	@Autowired
	private ILoginService logService;

	public LoginController() {
		System.out.println("in ctor of " + getClass().getName());
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView model = new ModelAndView("login/login_list");
		List<Logins> loginList = logService.getAllLogins();
		model.addObject("loginList", loginList);
		return model;
	}

	@RequestMapping(value = "/addLogin", method = RequestMethod.GET)
	public ModelAndView addArticle() {
		ModelAndView model = new ModelAndView();
		Logins login = new Logins();
		model.addObject("loginForm", login);
		model.setViewName("login/login_form");
		return model;
	}

	@RequestMapping(value = "/updateLogin/{id}", method = RequestMethod.GET)
	public ModelAndView editArticle(@PathVariable int id) {
		ModelAndView model = new ModelAndView();

		Logins login = logService.getLoginsById(id);
		model.addObject("loginForm", login);
		model.setViewName("login/login_form");

		return model;
	}

	@RequestMapping(value = "/saveLogin", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("loginForm") Logins login) {
		logService.saveOrUpdate(login);
		return new ModelAndView("redirect:/login/list");
	}

	@RequestMapping(value = "/deleteLogin/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") int id) {
		logService.deleteLogin(id);
		return new ModelAndView("redirect:/login/list");
	}

}
