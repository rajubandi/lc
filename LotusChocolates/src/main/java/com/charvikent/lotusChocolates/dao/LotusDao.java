package com.charvikent.lotusChocolates.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.charvikent.lotusChocolates.model.HomeBean;
import com.charvikent.lotusChocolates.model.Ordertable;

@Repository("lotusDao")
@Transactional
public class LotusDao {

	@PersistenceContext
    private EntityManager entityManager;
	
	
	public void saveClient(HomeBean abheeBranch) {
		entityManager.persist(abheeBranch);
		
	}


	public void saveRequestOrder(Ordertable salesrequest) {

		entityManager.persist(salesrequest);
	}
}
