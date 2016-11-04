package com.bretin.myaccounts.model;

import java.util.Set;

public class Consumer implements java.io.Serializable {
	
	private int id;
	private String pseudo;
	private String password;
	private String firstname;
	private String name;
	private String mail;
	private String img;
	private boolean active;
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
