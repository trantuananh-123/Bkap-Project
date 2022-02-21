package bkap.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import bkap.model.entity.Categories;
import bkap.model.entity.Product;
import bkap.model.service.CatalogService;
import bkap.model.service.ProductService;

@Controller
@RequestMapping(value = "/productController")
public class ProductController {
	@Autowired
	private ProductService proService;
	@Autowired
	private CatalogService catService;
	
	@RequestMapping(value = "/getAll.htm")
	public ModelAndView getAllProduct() {
		ModelAndView mav = new ModelAndView("listProduct");
		List<Product> listPro = proService.getAll();
		mav.addObject("listPro", listPro);
		return mav;		
	}
	
	@RequestMapping(value = "/initInsert.htm")
	public ModelAndView initInsert() {
		ModelAndView mav = new ModelAndView("newProduct");
		Product proNew = new Product();
		List<Categories> listCat = catService.getAll();
		mav.addObject("proNew", proNew);
		mav.addObject("listCat", listCat);
		return mav;
	}
	
	@RequestMapping(value = "/insert.htm",method = RequestMethod.POST)
	public String insertProduct(Product proNew) {
		boolean check = proService.save(proNew);
		if (check) {
			return "redirect:getAll.htm";
		}else {
			return "error";
		}
	}
}
