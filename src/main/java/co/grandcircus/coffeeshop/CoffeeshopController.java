package co.grandcircus.coffeeshop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class CoffeeshopController {
	
	@Autowired
	DrinksMenu drinksMenu;
	
	@RequestMapping("/")
	public ModelAndView home() {
		return new ModelAndView("home");
	}
	
	@RequestMapping("/drink")
	public ModelAndView listCoffee(@RequestParam(name = "category", required=false) String category) {
		ModelAndView mav = new ModelAndView("list-coffee");
		if (category == null || category.isEmpty()) {
			mav.addObject("drink", drinksMenu.getAllDrinks());
		} else {
			mav.addObject("drink", drinksMenu.getDrinksInCategory(category));
		}
		return mav;
	}
	
	@RequestMapping("/drink-form")
	public ModelAndView showDrinkForm() {
		return new ModelAndView("drink-form");
	
	}
	
	@PostMapping("/add-drink")

	public ModelAndView submitDrinkForm(Drink drink) {
		drinksMenu.addDrink(drink);
		return new ModelAndView("redirect:/drink");
	}
	
}


