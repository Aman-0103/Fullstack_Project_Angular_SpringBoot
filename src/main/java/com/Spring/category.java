package com.Spring;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;


@Entity             // specifies that the class is an entity and is mapped to a database table
@Table(name="category")     // specifies the name of the database table to be used for mapping
public class category
{
	@Id         // specifies the primary key of an entity
	@GeneratedValue(strategy = GenerationType.AUTO,generator="native")        //  generate unique values for primary key columns within our database tables
	@GenericGenerator(name = "native",strategy = "native")                    // a hibernate annotation used to denote a custom generator,
	private int catid;
	
	@Column(name="catnm")
	private String catnm;

	
	@OneToMany(mappedBy="ct",fetch = FetchType.LAZY)                // represents that a collection of objects are direct children of the current entity
	private List<college> CL;


	@OneToMany(mappedBy="ct",fetch = FetchType.LAZY)
	private List<contact> CT;
	

	public List<college> getCL() {
		return CL;
	}

	public void setCL(List<college> cL) {
		CL = cL;
	}

	public List<contact> getCT() {
		return CT;
	}

	public void setCT(List<contact> CT) {
		this.CT = CT;
	}

	public int getCatid() {
		return catid;
	}

	public void setCatid(int catid) {
		this.catid = catid;
	}

	public String getCatnm() {
		return catnm;
	}

	public void setCatnm(String catnm) {
		this.catnm = catnm;
	}	
}
