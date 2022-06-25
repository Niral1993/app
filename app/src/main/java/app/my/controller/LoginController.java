package app.my.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.annotation.JsonView;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import app.my.entity.User;
import app.my.jsonview.Views;
import app.my.model.AjaxResponseBody;
import app.my.service.LoginService;

//@Controller
@RestController 
@RequestMapping("/login")
public class LoginController {
	
	@Autowired
	LoginService loginService;
	
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
	//@RequestMapping(value = "/getMsg", method = RequestMethod.POST, consumes = "application/json",headers = "content-type=application/x-www-form-urlencoded")
	//@ResponseBody
	//public String getMsg(@RequestBody User user )
	//public String getMsg(HttpServletRequest request, @RequestParam(required = false, value = "userName") String userName)
	@JsonView(Views.Public.class) 
	@RequestMapping(value = "/checkLogin", method = RequestMethod.POST)  
	//public AjaxResponseBody getMsg(@RequestBody User user)
	
	//public User getMsg(@RequestBody User user)
	
	//public String getMsg(@RequestBody User user)
	public Object checkLogin(@RequestBody User user) 
	{
		//String userName = request.getParameter("userName");
		//String userName = user.getUserName();
		
		//return userName;
		//return request.getParameter("userName"); 
		
		//return "1234"; 
		
		AjaxResponseBody result = new AjaxResponseBody(); 
		
		result.setCode("12");
		result.setMsg("12");   
		
		//ObjectMapper Obj = new ObjectMapper();
		
		User u = loginService.cehckLogin(user.getUserName(), user.getPassword());
		
		System.out.print("login result : " + u); 
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("status","0");
		map.put("user", u); 
		
		ObjectMapper objectMapper = new ObjectMapper();
		
		String respose = null;
		
		try 
		{
			respose = objectMapper.writeValueAsString(map);
		}
		catch (JsonProcessingException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return respose;
		
		//return user.getUserName(); 
		
	}
	
}
