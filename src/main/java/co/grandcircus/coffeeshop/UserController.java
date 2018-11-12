package co.grandcircus.coffeeshop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	
	@RequestMapping("/register")
	public ModelAndView showForm() {
		return new ModelAndView("register");
		
	}

	
	@RequestMapping("/user")
	public ModelAndView showStory(
			@RequestParam("FirstName") String FirstName, 
			@RequestParam("LastName")String LastName, 
			@RequestParam("email")String email, 
			@RequestParam("PhoneNumber")String PhoneNumber, 
			@RequestParam("Age") Integer age,
			@RequestParam("password")String password) {
		ModelAndView mv = new ModelAndView("user");
		
		User user = new User();
		user.setFirstname(FirstName);
		user.setLastname(LastName);
		user.setEmail(email);
		user.setPhonenumber(PhoneNumber);
		user.setAge(age);
		user.setPassword(password);
		
		mv.addObject(user);
		return mv;
	
	}
}


