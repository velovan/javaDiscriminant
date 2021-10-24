 package com.ranga.dao.impl;

import com.ranga.dao.DiscriminantDAO;
import com.ranga.model.Discriminant;
import com.ranga.util.HibernateUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
 

@Repository
public class DiscriminantDAOImpl implements DiscriminantDAO {
    
	public DiscriminantDAOImpl() {
    	System.out.println("DiscriminantDAOImpl");
    } 
	
	@Autowired
    private HibernateUtil hibernateUtil;

    @Override
    public long createDiscriminant(Discriminant discriminant) {        
        return (Long) hibernateUtil.create(discriminant);
    }
    
    @Override
    public Discriminant updateDiscriminant(Discriminant discriminant) {        
        return hibernateUtil.update(discriminant);
    }
    
    @Override
    public void deleteDiscriminant(long id) {
        Discriminant discriminant = new Discriminant();
        discriminant.setId(id);
        hibernateUtil.delete(discriminant);
    }
    
    @Override
    public List<Discriminant> getAllDiscriminant() {        
        return hibernateUtil.fetchAll(Discriminant.class);
    }
    
    @Override
    public Discriminant getDiscriminant(long id) {
        return hibernateUtil.fetchById(id, Discriminant.class);
    }
 
	@SuppressWarnings("unchecked")
	@Override
	public List<Discriminant> getAllDiscriminant(float discriminantName) { 
		String query = "SELECT e.* FROM discriminant e WHERE e.name like '%"+ discriminantName +"%'";
		List<Object[]> discriminantObjects = hibernateUtil.fetchAll(query);
		List<Discriminant> discriminant = new ArrayList<Discriminant>();
		for(Object[] discriminantObject: discriminantObjects) {
			Discriminant discriminantt = new Discriminant();
			long id = ((BigInteger) discriminantObject[0]).longValue();			
			float a = (float) discriminantObject[1];
			float b = (float) discriminantObject[2];
			float c = (float) discriminantObject[3];
			discriminantt.setId(id);
			discriminantt.setA(a);
			discriminantt.setB(b);
			discriminantt.setC(c);
			discriminant.add(discriminantt);
		}
		System.out.println(discriminant); 
		
		return discriminant;
	}
}
