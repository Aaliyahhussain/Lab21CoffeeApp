package co.grandcircus.coffeeshop.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import co.grandcircus.coffeeshop.CartItem;
import co.grandcircus.coffeeshop.MenuItem;


@Repository
@Transactional
public class CartItemDao {
	@PersistenceContext
	private EntityManager em;
	
	public List<CartItem> findAll() {
		return em.createQuery("FROM CartItem", CartItem.class).getResultList();
	}
	public CartItem findById(Long id) {
			return em.find(CartItem.class, id);
	}
	public MenuItem findByMenuItemId(Long id) {
		return em.find(MenuItem.class, id);
	}

	public void delete(Long id) {
		CartItem cartItem = em.getReference(CartItem.class, id);
		em.remove(cartItem);
	}
	public CartItem findByName(String searchname) {
		
		return null;
	}
	public void update(CartItem cartItem) {
		em.merge(cartItem);
	}
	public void create(CartItem cartItem) {
		em.persist(cartItem);
	}
}