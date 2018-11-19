package co.grandcircus.coffeeshop.auth;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.grandcircus.coffeeshop.User;
import co.grandcircus.coffeeshop.dao.UserDao;

@Controller
public class AuthController {

	@Autowired
	UserDao userDao;
	
	
	@RequestMapping("/login")
	public ModelAndView submitLoginForm() {
		return new ModelAndView("login");
		
	}
	
	@PostMapping("/login")
	public ModelAndView submitLoginForm(
			@RequestParam("username") String username,
			@RequestParam("password") String password,
			HttpSession session, RedirectAttributes redir) {
			
		co.grandcircus.coffeeshop.User user = userDao.findByUsername(username);
		if(user == null) {
			return new ModelAndView("login", "message", "Incorrect username or password.");
		}
	
		if (!user.getPassword().equals(password)) {
			return new ModelAndView("login", "message", "Incorrect username or password.");
		}
		
	
		session.setAttribute("user", user);
		
		redir.addFlashAttribute("message", "Login successful. Welcome back!");
		return new ModelAndView("redirect:/");
	
	}
	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session, RedirectAttributes redir) {
		session.invalidate();
		
		redir.addFlashAttribute("message", "You've logged out.");
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping("/signup")
	public ModelAndView showSignupForm() {
		return new ModelAndView("signup");
	}

	@PostMapping("/signup")
	public ModelAndView submitSignupForm(
			User user,
			@RequestParam("confirm-password") String confirmPassword, 
			HttpSession session, RedirectAttributes redir) {

		User existingUser = userDao.findByUsername(user.getFirstname());
		if (existingUser != null) {
			// If user already exists, display an error message.
			return new ModelAndView("signup", "message", "A user with that username already exists.");
		}
		
		if (!confirmPassword.equals(user.getPassword())) {
			// If the user or passwords don't match, display an error message.
			return new ModelAndView("signup", "message", "Passwords do not match.");
		}
		
		userDao.create(user);
		

		session.setAttribute("user", user);
		
	
		redir.addFlashAttribute("message", "Thanks for signing up!");
		return new ModelAndView("redirect:/");
	}

	

}