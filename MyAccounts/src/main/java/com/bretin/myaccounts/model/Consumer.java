package com.bretin.myaccounts.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@Table(name="consumers")
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, scope=Consumer.class, property = "id")
public class Consumer implements java.io.Serializable {
	
	@Id
	@SequenceGenerator(name="seq",sequenceName="seq_consumers")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="seq")
	@Column(name="id")
	private int id;
	
	@Column(name="pseudo")
	private String pseudo;
	
	@Column(name="password")
	private String password;
	
	@Column(name="firstname")
	private String firstname;
	
	@Column(name="name")
	private String name;
	
	@Column(name="mail")
	private String mail;
	
	@Column(name="img")
	private String img;
	
	@Column(name="active")
	private boolean active;
	
	@OneToMany(mappedBy="consumer",fetch=FetchType.EAGER, cascade=CascadeType.PERSIST)
	private Set<Account> accounts;
	
	public Consumer() {
		super();
	}

	public Consumer(int id, String pseudo, String password, String firstname, String name, String mail, String img,
			boolean active) {
		super();
		this.id = id;
		this.pseudo = pseudo;
		this.password = password;
		this.firstname = firstname;
		this.name = name;
		this.mail = mail;
		this.img = img;
		this.active = active;
	}

	public Consumer(int id, String pseudo, String password, String firstname, String name, String mail, String img,
			boolean active, Set<Account> accounts) {
		super();
		this.id = id;
		this.pseudo = pseudo;
		this.password = password;
		this.firstname = firstname;
		this.name = name;
		this.mail = mail;
		this.img = img;
		this.active = active;
		this.accounts = accounts;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPseudo() {
		return pseudo;
	}

	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public Set<Account> getAccounts() {
		return accounts;
	}

	public void setAccounts(Set<Account> accounts) {
		this.accounts = accounts;
	}

	@Override
	public String toString() {
		return "Consumer [id=" + id + ", pseudo=" + pseudo + ", password=" + password + ", firstname=" + firstname
				+ ", name=" + name + ", mail=" + mail + ", img=" + img + ", active=" + active + ", accounts=" + accounts
				+ "]";
	}
	
}
