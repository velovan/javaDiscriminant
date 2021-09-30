package com.ranga.dao;

import java.util.List;

import com.ranga.model.Discriminant;
 
public interface DiscriminantDAO {
    public long createDiscriminant(Discriminant discriminant);
    public Discriminant updateDiscriminant(Discriminant discriminant);
    public void deleteDiscriminant(long id);
    public List<Discriminant> getAllDiscriminant();
    public Discriminant getDiscriminant(long id);	
    public List<Discriminant> getAllDiscriminant(float discriminantName); 
}
