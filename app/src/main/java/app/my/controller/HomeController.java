package app.my.controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class HomeController {

	@RequestMapping(name="/homePage", method = RequestMethod.GET)
	public ModelAndView homePage()
	{
		return new ModelAndView("home");
	}
	
}
