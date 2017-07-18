package com.movie.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.movie.vo.EmployeeEntity;
@Controller
public class EditEmployeeController {

	private static final Logger LOGGER = Logger.getLogger(EditEmployeeController.class);
   @RequestMapping(value = "/", method = RequestMethod.GET)
   public String defaultPage(ModelMap map) {
   	LOGGER.info("Entering into .. listEmployees");
       return "redirect:/list";
   }
   @RequestMapping(value = "/list", method = RequestMethod.GET)
   public String listEmployees(ModelMap map) {
   	LOGGER.info("Entering into .. listEmployees");
       map.addAttribute("employee", new EmployeeEntity());
       map.addAttribute("employeeList", getEmployeList());

       return "editEmployeeList";
   }
   
   private List<EmployeeEntity> getEmployeList(){
   	
   	EmployeeEntity e=new EmployeeEntity();
   	e.setEmail("asdadf@gmail.com");
   	e.setFirstname("adsd");
   	e.setId(12);
   	e.setLastname("sdfasd");
   	e.setTelephone("2323423423");
   	List<EmployeeEntity> allEmp=new ArrayList<EmployeeEntity>();
   	allEmp.add(e);
   	LOGGER.info("Entering into .. listed Employees"+allEmp);
   	return allEmp;
   }

   @RequestMapping(value = "/add", method = RequestMethod.POST)
   public String addEmployee(
           @ModelAttribute(value = "employee") EmployeeEntity employee,
           BindingResult result) {
   	
       return "redirect:/list";
   }

   @RequestMapping("/delete/{employeeId}")
   public String deleteEmplyee(@PathVariable("employeeId") Integer employeeId) {
   	LOGGER.info("Deleting into ..  Employees"+employeeId);
       return "redirect:/list";
   }

   @RequestMapping(value = "/login", method = RequestMethod.GET)
   public String login(ModelMap model) {
   	LOGGER.info("Entering into .. login");
       return "login";
   }

   @RequestMapping(value = "/accessdenied", method = RequestMethod.GET)
   public String loginerror(ModelMap model) {
   	LOGGER.info("Entering into .. accessdenied");
       model.addAttribute("error", "true");
       return "denied";
   }

   @RequestMapping(value = "/logout", method = RequestMethod.GET)
   public String logout(ModelMap model) {
   	LOGGER.info("Entering into .. logout");
       return "logout";
   }

}
