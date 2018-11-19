package co.grandcircus.coffeeshop;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.coffeeshop.dao.CartItemDao;
import co.grandcircus.coffeeshop.dao.MenuItemDao;
import co.grandcircus.coffeeshop.dao.UserDao;

@Controller
public class CoffeeShopController {
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	MenuItemDao menuItemDao;
	
	@Autowired
	CartItemDao cartItemDao;
	
	@RequestMapping("/")
	public ModelAndView home() {
		return new ModelAndView("home");
	}
	
	@RequestMapping("/register")
	public ModelAndView register() {
		return new ModelAndView("register");
	}
	
	@RequestMapping("/confirmation")
	public ModelAndView summary(User user, @RequestParam(name="box", required=false) boolean box) {
		ModelAndView mv = new ModelAndView("confirmation");
		userDao.create(user);
		mv.addObject("user", user);
		return mv;
	}
	
	@RequestMapping("/menu")
	public ModelAndView menu() {
		ModelAndView mv = new ModelAndView("menu");
		System.out.println("Test1");
		List<MenuItem> menu = menuItemDao.findAll();
		System.out.println("Test2");

		mv.addObject("menu", menu);
		return mv;
	}
	@RequestMapping("/single")
	public ModelAndView viewSingle(@RequestParam("searchname") String searchname) {
		MenuItem menuItem = menuItemDao.findByName(searchname);
		List<MenuItem> menu = new ArrayList<>();
		if (menuItem == null) {
			ModelAndView mv = new ModelAndView("menu");
			String error = "No results found";
			return mv.addObject("error", error);
		}
		menu.add(menuItem);
		ModelAndView mav = new ModelAndView("menu");
		mav.addObject("menu", menu);
		return mav;
	}
	@RequestMapping("/item/menu")
	public ModelAndView adminMenu() {
		ModelAndView mv = new ModelAndView("menu");
		List<MenuItem> menu = menuItemDao.findAll();
		boolean admin = true;
		mv.addObject("menu", menu);
		mv.addObject("item", admin);
		return mv;
	}
	@RequestMapping("/menu/delete")
	public ModelAndView delete(@RequestParam("id") Long id) {
		menuItemDao.delete(id);
		return new ModelAndView("redirect:/item/menu");
	}
	@RequestMapping("/menu/edit")
	public ModelAndView showEditForm(@RequestParam("id") Long id) {
		ModelAndView mav = new ModelAndView("item");
		mav.addObject("menuItem", menuItemDao.findById(id));
		System.out.println("test");
		mav.addObject("title", "Edit Menu Item");
		return mav;
	}
	

	@RequestMapping(value="/menu/edit", method=RequestMethod.POST)
	public ModelAndView submitEditForm(MenuItem menuItem) {
		menuItemDao.update(menuItem);
		return new ModelAndView("redirect:/admin/menu");
	}
	@RequestMapping("/menu/create")
	public ModelAndView showCreateForm() {
		return new ModelAndView("item", "title", "Add a drink");
	}
	
	@RequestMapping(value="/menu/create", method=RequestMethod.POST)
	public ModelAndView submitCreateForm(MenuItem menuItem) {
		menuItemDao.create(menuItem);
		return new ModelAndView("redirect:/admin/menu");
	}
	
	@RequestMapping(value="/add")
	public ModelAndView addToCart(@RequestParam("id") Long menuItemId) {
		MenuItem m = menuItemDao.findById(menuItemId);
		CartItem cartItem = new CartItem();
		System.out.println(cartItemDao.findByMenuItemId(menuItemId).getName());
		for (CartItem c : cartItemDao.findAll()) {
			if (c.getMenuItem().getId() == menuItemId) {
				Integer quantity = c.getQuantity()+1;
				c.setQuantity(quantity);
				cartItemDao.update(c);
				return new ModelAndView("redirect:/menu");
			}
		}
		cartItem.setQuantity(1);
		cartItem.setMenuItem(m);
		cartItemDao.create(cartItem);
		return new ModelAndView("redirect:/menu");
	}
	
	
	
}