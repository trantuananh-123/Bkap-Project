package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@RequestMapping(value = {"/", "/home"})
	public ModelAndView Index() {
		ModelAndView mav = new ModelAndView("user/index");
		return mav;
	}
	
	@RequestMapping(value = "/catalog")
	public ModelAndView Catalog() {
		ModelAndView mav = new ModelAndView("user/catalog");
		return mav;
	}
}
