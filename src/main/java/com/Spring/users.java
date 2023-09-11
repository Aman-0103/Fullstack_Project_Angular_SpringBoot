package com.Spring;

import javax.persistence.*;
import org.hibernate.annotations.GenericGenerator;


@Entity
@Table(name="users")
public class users
{

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator="native")
	@GenericGenerator(name = "native",strategy = "native")
	private int id;

	@Column(name="em")
	private String em;

	@Column(name="username")
	private String username;

	@Column(name="pwd")
	private String pwd;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEm() {
		return em;
	}

	public void setEm(String em) {
		this.em = em;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

}
