package app.my.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import app.my.entity.Customer;
import app.my.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	CustomerService customerService;
	
	@GetMapping("/list")
	public String listCustomers(Model model)
	{
		List<Customer> customers = customerService.getCustomers();
		
		model.addAttribute("customers", customers);
		
		return "customerList";
		
	}
	
	@GetMapping("/showForm")
	public String showFormForAdd(Model model)
	{
		Customer customer = new Customer();
		model.addAttribute("customer", customer);
		
		return "customerNew";
	}
	
}
