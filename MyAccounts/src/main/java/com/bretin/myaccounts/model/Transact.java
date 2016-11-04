package com.bretin.myaccounts.model;

import java.util.Date;

public class Transact implements java.io.Serializable {

	private int id;
	private String title;
	private String description;
	private Date dateTransact;
	private Date dateValue;
	private double value;
	private Subcategorie categorie;
	private Consumer payedBy;
	private Account account;
	
	public Transact() {
		super();
	}

	public Transact(int id, String title, String description, Date dateTransact, Date dateValue, double value) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.dateTransact = dateTransact;
		this.dateValue = dateValue;
		this.value = value;
	}

	public Transact(int id, String title, String description, Date dateTransact, Date dateValue, double value,
			Subcategorie categorie, Consumer payedBy, Account account) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.dateTransact = dateTransact;
		this.dateValue = dateValue;
		this.value = value;
		this.categorie = categorie;
		this.payedBy = payedBy;
		this.account = account;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getDateTransact() {
		return dateTransact;
	}

	public void setDateTransact(Date dateTransact) {
		this.dateTransact = dateTransact;
	}

	public Date getDateValue() {
		return dateValue;
	}

	public void setDateValue(Date dateValue) {
		this.dateValue = dateValue;
	}

	public double getValue() {
		return value;
	}

	public void setValue(double value) {
		this.value = value;
	}

	public Subcategorie getCategorie() {
		return categorie;
	}

	public void setCategorie(Subcategorie categorie) {
		this.categorie = categorie;
	}

	public Consumer getPayedBy() {
		return payedBy;
	}

	public void setPayedBy(Consumer payedBy) {
		this.payedBy = payedBy;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	@Override
	public String toString() {
		return "Transact [id=" + id + ", title=" + title + ", description=" + description + ", dateTransact="
				+ dateTransact + ", dateValue=" + dateValue + ", value=" + value + ", categorie=" + categorie
				+ ", payedBy=" + payedBy + ", account=" + account + "]";
	}
	
}
