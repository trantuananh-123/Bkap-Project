package bkap.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import bkap.model.enitity.Categories;
import bkap.model.service.CatalogService;

@Controller
@RequestMapping(value = "/catalogController")
public class CatalogController {

	@Autowired
	private CatalogService catalogService;
	@RequestMapping(value = "/getAll.htm")
	public ModelAndView GetAllCatalog(){
		//Khai báo đối tượng ModelAndView trả về
		ModelAndView mav = new ModelAndView("listCategories");
		//Gọi sang Service để lấy danh mục
		List<Categories> listCat = catalogService.GetAllCatalog();
		mav.addObject("listCat", listCat);
		return mav;
	}
	
	@RequestMapping(value = "/initAdd.htm")
	public ModelAndView InitAddCatalog() {
		ModelAndView mav = new ModelAndView("newCatalog");
		Categories catNew = new Categories();
		mav.addObject("catNew", catNew);
		return mav;
	}

	@RequestMapping(value = "/add.htm", method = RequestMethod.POST)
	public String AddCatalog(Categories catNew) {
		//Thực hiện gọi sang service thực hiện thêm mới danh mục
		boolean flag = catalogService.addCatalog(catNew);
		if(flag) {
			return "redirect:getAll.htm";
		}
		else {
			return "error";
		}
	}
	
	@RequestMapping(value = "/initUpdate.htm")
	public ModelAndView InitUpdateCatalog(int catalogId) {
		ModelAndView mav = new ModelAndView("updateCatalog");
		//Lấy thông tin danh mục theo id
		Categories catUpdate = catalogService.getCatalogById(catalogId);
		mav.addObject("catUpdate", catUpdate);
		return mav;
	}

	@RequestMapping(value = "/update.htm", method = RequestMethod.POST)
	public String UpdateCatalog(Categories catUpdate) {
		//Thực hiện gọi sang service thực hiện thêm mới danh mục
		boolean flag = catalogService.updateCatalog(catUpdate);
		if(flag) {
			return "redirect:getAll.htm";
		}
		else {
			return "error";
		}
	}
	
	@RequestMapping(value = "/delete.htm")
	public String DeleteCatalog(int catalogId) {
		//Thực hiện gọi sang service thực hiện thêm mới danh mục
		boolean flag = catalogService.deleteCatalog(catalogId);
		if(flag) {
			return "redirect:getAll.htm";
		}
		else {
			return "error";
		}
	}
}
