package co.grandcircus.coffeeshop;

import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;


@Repository
@Transactional
public class ItemDao {
	
	@PersistenceContext
	private EntityManager em;
	
	public List<Drink> findAll() {
		return em.createQuery("FROM Drink", Drink.class).getResultList();
	}
	
	public List<Drink> findByKeyword(String keyword) {
		return em.createQuery("FROM Food WHERE LOWER(name) LIKE :regex", Drink.class)
				.setParameter("regex", "%" + keyword.toLowerCase() + "%")
				.getResultList();
	}
	
	public void create(Drink drink) {
		em.persist(drink);
	}
	
	public void update(Drink drink) {
		em.merge(drink);
	}
	
	public void delete(Long id) {
		Drink drink = em.getReference(Drink.class, id);
		em.remove(drink);
	}
	
	public Set<String> findAllCategories() {
		List<String> categoryList = em.createQuery("SELECT DISTINCT category FROM Drink", String.class)
				.getResultList();
		return new TreeSet<>(categoryList);
	
	}
}
