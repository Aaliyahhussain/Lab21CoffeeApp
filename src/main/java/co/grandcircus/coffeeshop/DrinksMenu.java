package co.grandcircus.coffeeshop;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import org.springframework.stereotype.Component;


@Component
public class DrinksMenu {

	private List<Drink> list = new ArrayList<>();
	
	public DrinksMenu() {
		list.add(new Drink("Triple Chocolate Frappuccino", "Iced", "a blend of every chocolate known to man" ));
		list.add(new Drink("Peppermint Mocha", "Iced", "shards of peppermint in a cup"));
		list.add(new Drink("Mexican Chocolate Milk", "Iced", "Creamy chocolate milk made with pure Mexican cacao"));
		list.add(new Drink("Spiced Cider", "Hot", "Christmas in a cup"));
		list.add(new Drink("Chestnut Praline Latte", "Hot", "Stolen from Starbucks' Menu"));
		list.add(new Drink("Pumpkin Spice", "Hot", "Pumpkin Pie's fraternal twin"));
		
	}
	
	
	public List<Drink> getAllDrinks() {
		return list;
	}
	
	
	public List<Drink> getDrinksInCategory(String category) {
		List<Drink> matches = new ArrayList<>();
		for(Drink drink : list) {
			if (drink.getCategory().equalsIgnoreCase(category)) {
				matches.add(drink);
			}
		}
		return matches;
	}
	
	
	public List<Drink> getFoodsByKeyword(String keyword) {
		keyword = keyword.toLowerCase();
		List<Drink> matches = new ArrayList<>();
		for(Drink drink : list) {
			if (drink.getName().toLowerCase().contains(keyword)) {
				matches.add(drink);
			}
		}
		return matches;
	}
	
	
	public Set<String> getCategories() {
		Set<String> categories = new TreeSet<>();
		for(Drink drink : list) {
			categories.add(drink.getCategory());
		}
		return categories;
	}

	
	public void addDrink(Drink drink) {
		list.add(drink);
	}
}