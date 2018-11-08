package co.grandcircus.coffeeshop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CoffeeshopController {
	
	@RequestMapping("/")
	public ModelAndView index() {
		return new ModelAndView("home");
	}
	
	@RequestMapping("/register")
	public ModelAndView showFrom() {
		return new ModelAndView("register");
		
	}
	
	@RequestMapping("/user")
	public ModelAndView showStory(
			@RequestParam("fName") String fName, @RequestParam("lName")String lName, 
			@RequestParam("email")String email, @RequestParam("PhoneNumber")String PhoneNumber, @RequestParam("password")String password) {
		ModelAndView mv = new ModelAndView("user");
		mv.addObject("First Name", fName);
		mv.addObject("Last Name", lName);
		mv.addObject("Email", email);
		mv.addObject("PhoneNumber", PhoneNumber);
		mv.addObject("Password", password);
		return mv;
	
	}
}
