package co.grandcircus.coffeeshop.dao;

import java.util.List;
import java.util.NoSuchElementException;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import co.grandcircus.coffeeshop.MenuItem;

@Repository
@Transactional
public class MenuItemDao {
	
	@PersistenceContext
	private EntityManager em;
	
	public List<MenuItem> findAll() {
		return em.createQuery("FROM MenuItem", MenuItem.class).getResultList();
	}
	public MenuItem findById(Long id) {
		try {
		return em.find(MenuItem.class, id);
		} catch(NoSuchElementException e) {
			return null;
		}
	}

	public void delete(Long id) {
	
		MenuItem menuItem = em.getReference(MenuItem.class, id);
		em.remove(menuItem);
	}
	public MenuItem findByName(String searchname) {
	
		return null;
	}
	public void update(MenuItem menuItem) {
		em.merge(menuItem);
	}
	public void create(MenuItem menuItem) {
		em.persist(menuItem);
	}
}
