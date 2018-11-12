package co.grandcircus.coffeeshop;

public class Drink {

	private String name;
	private String category;
	private String description;

	public Drink() {}

	public Drink(String name, String category, String description) {
		super();
		this.name = name;
		this.category = category;
		this.description = description;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "Drink [name=" + name + ", category=" + category +  "]";
	}

}
