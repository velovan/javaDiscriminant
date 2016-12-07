package com.ranga.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import java.io.Serializable;

 
@Entity
@Table(name = "Discriminant")
public class Discriminant implements Serializable {

	private static final long serialVersionUID = -7988799579036225137L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	@Column
	private float a; 

	@Column
	private float b;

	@Column
	private float c;

	public Discriminant() {
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	} 

	public float getA() {
		return a;
	}

	public void setA(float a) {
		this.a = a;
	} 

	public float getB() {
		return b;
	} 
	 
	public void setB(float b) {
		this.b = b;
	}
	
	public float getC() {
		return c;
	}
 
	public void setC(float c) {
		this.c = c;
	}  

	@Override
    public String toString() {
        return "Discriminant{" +
                "id=" + id +
                ", a='" + a + '\'' +
                ", b=" + b +
                ", c=" + c +
                '}';
    } 
}
