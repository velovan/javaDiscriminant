package com.ranga.service;
import java.util.List;

import com.ranga.model.Discriminant;

 
public interface DiscriminantService { 
	
    public long createDiscriminantt(Discriminant discriminantt);
    public Discriminant updateDiscriminantt(Discriminant discriminantt);
    public void deleteDiscriminantt(long id);
    public List<Discriminant> getAllDiscriminant();
    public Discriminant getDiscriminant(long id);	 
}
