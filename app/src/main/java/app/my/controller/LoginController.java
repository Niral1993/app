package app.my.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	//@GetMapping("/loginCheck")
	@RequestMapping(value="/loginCheck", method=RequestMethod.POST)
	public String loginCheck(HttpServletRequest request) 
	{
		//first check user login details
		
		//return response in json format
		
		//at view side - redirected to next page based on response
		
		String userName = request.getParameter("userName");  
		String password = request.getParameter("password");
		
		System.out.println("Request parameters : " + userName + " - " + password);
		
		System.out.println("login method call...");
		
		return "home"; 
	}
	
	//@RequestMapping(value = "/getMsg", method = RequestMethod.GET)
	@RequestMapping(value = "/getMsg", method = RequestMethod.POST)
	@ResponseBody
	public String getMsg(@RequestParam("userName") String userName)
	{
		
		//String userName = request.getParameter("userName");
		
		//return userName;
		return userName; 
	}
	
}
