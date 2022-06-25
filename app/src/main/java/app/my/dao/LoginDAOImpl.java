package app.my.dao;

import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.my.entity.User;

@Repository
public class LoginDAOImpl implements LoginDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public User checkLogin(String userName, String password) {
		// TODO Auto-generated method stub
		
		System.out.print("userName : " + userName  + " and :" + password);
		 
		
		//get connection
		Session session = sessionFactory.getCurrentSession();
		
		CriteriaBuilder criteriaBuilder = sessionFactory.getCriteriaBuilder();
		
		CriteriaQuery<User> criteriaQuery = criteriaBuilder.createQuery(User.class);
		
		Root<User> root = criteriaQuery.from(User.class);
		
		criteriaQuery.select(root);
		
		//where 
		Predicate forUserName = criteriaBuilder.equal(root.get("userName"), userName);
		Predicate forPassword = criteriaBuilder.equal(root.get("password"), password);
		
		Predicate forLogin = criteriaBuilder.and(forUserName, forPassword);
		
		criteriaQuery.where(forLogin);
		
		Query query = session.createQuery(criteriaQuery);
		
		User user;
		
		try
		{
			
			user = (User) query.getSingleResult();
			
		}
		catch(NoResultException e)
		{
			//when no result found
			user = new User();
			user.setUserId(0);
			user.setUserName("0");
			user.setUserType("0"); 
			
		} 
		
		return user;
		
	}

}
