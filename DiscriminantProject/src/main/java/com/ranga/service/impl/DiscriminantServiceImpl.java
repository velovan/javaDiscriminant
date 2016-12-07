package com.ranga.service.impl;
import com.ranga.dao.DiscriminantDAO;
import com.ranga.model.Discriminant;
import com.ranga.service.DiscriminantService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
 
@Service
@Transactional
public class DiscriminantServiceImpl implements DiscriminantService {
	
	public DiscriminantServiceImpl() {
		System.out.println("DiscriminantServiceImpl()");
	}
	
    @Autowired
    private DiscriminantDAO discriminantDAO;

    @Override
    public long createDiscriminantt(Discriminant discriminant) {
        return discriminantDAO.createDiscriminant(discriminant);
    }
    @Override
    public Discriminant updateDiscriminantt(Discriminant discriminant) {
        return discriminantDAO.updateDiscriminant(discriminant);
    }
    @Override
    public void deleteDiscriminantt(long id) {
        discriminantDAO.deleteDiscriminant(id);
    }
    @Override
    public List<Discriminant> getAllDiscriminant() {
        return discriminantDAO.getAllDiscriminant();
    }
    @Override
    public Discriminant getDiscriminant(long id) {
        return discriminantDAO.getDiscriminant(id);
    }    
 
}
