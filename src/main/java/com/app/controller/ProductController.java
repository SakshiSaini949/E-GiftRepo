package com.app.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.app.pojos.CartItems;
import com.app.pojos.Categories;
import com.app.pojos.Products;
import com.app.service.ICategoriesService;
import com.app.service.IProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	ICategoriesService catService;
	
	@Autowired
	IProductService prodService;
	

	@RequestMapping(value = "/categories", method = RequestMethod.GET)
	public ModelAndView CategoryList() {
		ModelAndView model = new ModelAndView("product/categories");
		List<Categories> catList = catService.getAllCategories();
		model.addObject("catList", catList);
		return model;
	}

	@RequestMapping(value = "/productList/{id}", method = RequestMethod.GET)
	public ModelAndView CategoryProductList(@PathVariable Integer id,Model mod) {
		// System.out.println("CATCONT"+id);
		Optional<Categories> cat = catService.getCategoryById(id);
		// System.out.println("cat OPTIONAL"+cat.get());
		List<Products> prodList = catService.getAllCatProducts(cat.get().getId());
		// System.out.println(id+ " "+prodList);
		ModelAndView model = new ModelAndView("product/categoryProduct");
		// System.out.println(prodList);
		model.addObject("prodList", prodList);
		CartItems cartItems = new CartItems();
		mod.addAttribute("citem", cartItems);
		return model;
	}

	@RequestMapping(value = "/categoryView", method = RequestMethod.GET)
	public ModelAndView CategoryAdminList() {
		ModelAndView model = new ModelAndView("admin/productCategories");
		List<Categories> catList = catService.getAllCategories();
		model.addObject("catList", catList);
		return model;
	}

	@RequestMapping(value = "/updateCategory/{id}", method = RequestMethod.GET)
	public ModelAndView editArticle(@PathVariable Integer id) {
		System.out.println("In Update " + id);
		ModelAndView model = new ModelAndView();
		Optional<Categories> categories = catService.getCategoryById(id);
		model.addObject("catForm", categories);
		model.setViewName("admin/cat_form");
		return model;
	}

	@RequestMapping(value = "/saveCategory", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("catForm") Categories cat) {
		catService.saveOrUpdate(cat);
		return new ModelAndView("redirect:/product/categoryView");
	}

	@RequestMapping(value = "/deleteCategory/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") Integer id) {
		System.out.println("In delete cat " + id);
		catService.deleteCategory(id);
		return new ModelAndView("redirect:/product/categoryView");
	}
	
	@RequestMapping(value = "/addCategory", method = RequestMethod.GET)
	public ModelAndView addCategory() {
		ModelAndView model = new ModelAndView();
		Categories categories = new Categories();
		model.addObject("catForm", categories);
		model.setViewName("admin/cat_form");
		return model;
	}
	
	@RequestMapping(value = "/productListInCategory/{id}", method = RequestMethod.GET)
	public ModelAndView CategoryProductAdminList(@PathVariable Integer id) {
		// System.out.println("CATCONT"+id);
		Optional<Categories> cat = catService.getCategoryById(id);
		// System.out.println("cat OPTIONAL"+cat.get());
		List<Products> prodList = catService.getAllCatProducts(cat.get().getId());
		// System.out.println(id+ " "+prodList);
		ModelAndView model = new ModelAndView("admin/listProductCategory");
		// System.out.println(prodList);
		model.addObject("prodList", prodList);
		return model;
	}
	
	@RequestMapping(value = "/addCatProduct/{CatID}", method = RequestMethod.GET)
	public ModelAndView addCatProduct(@PathVariable Integer CatID) {
		ModelAndView model = new ModelAndView();
		Optional<Categories> cat = catService.getCategoryById(CatID);
		Products products = new Products();
		products.setCategories(cat.get());
		System.out.println(products);
		model.addObject("prodForm", products);
		model.setViewName("admin/prod_form");
		return model;
	}
	
	@RequestMapping(value = "/saveProduct", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("prodForm") Products prod) {
		System.out.println("in save Products .. "+prod);
		prodService.saveOrUpdate(prod);
		return new ModelAndView("redirect:/product/productListInCategory/"+prod.getCategories().getId());
	}
	
	
	@RequestMapping(value = "/updateCatProduct/{id}", method = RequestMethod.GET)
	public ModelAndView editCatProduct(@PathVariable Integer id) {
		System.out.println("In Update " + id);
		ModelAndView model = new ModelAndView();
		Optional<Products> products = prodService.getProductsById(id);
		model.addObject("prodForm", products);
		model.setViewName("admin/prod_form");
		return model;
	}
	
	@RequestMapping(value = "/deleteCatProduct/{catID}/{id}", method = RequestMethod.GET)
	public ModelAndView deleteCatProduct(@PathVariable("id") Integer id, @PathVariable int catID) {
		System.out.println("In delete product " + id);
		prodService.deleteProducts(id);
		return new ModelAndView("redirect:/product/productListInCategory/"+catID);
	}
}
