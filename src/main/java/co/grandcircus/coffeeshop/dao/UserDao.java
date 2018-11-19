package co.grandcircus.coffeeshop.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;


import org.springframework.stereotype.Repository;
import co.grandcircus.coffeeshop.User;


@Repository
@Transactional
public class UserDao {
	
	@PersistenceContext
	private EntityManager em;
	
	public void create(User user) {
		em.persist(user);
	}
	
	public User findByUsername(String username) {
		try {
			return em.createQuery("FROM User WHERE username = :username", User.class)
					.setParameter("username", username)
					.getSingleResult();
		} catch (NoResultException ex) {
			// No user with that username found.
			return null;
		}
	}
	
	public User findByGithubId(Long githubId) {
		try {
			return em.createQuery("FROM User WHERE githubId = :githubId", User.class)
					.setParameter("githubId", githubId)
					.getSingleResult();
		} catch (NoResultException ex) {
			// No user with that githubId found.
			return null;
		}
	}
	
	public void update(User user) {
		em.merge(user);
	}

	public User findByEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}

}
