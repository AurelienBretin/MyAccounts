package com.bretin.myaccounts.model;

public class Subcategorie implements java.io.Serializable {
	
	private int id;
	private String name;
	private int valueBudget;
	private Categorie categorie;
	
	public Subcategorie() {
		super();
	}

	public Subcategorie(int id, String name, int valueBudget) {
		super();
		this.id = id;
		this.name = name;
		this.valueBudget = valueBudget;
	}

	public Subcategorie(int id, String name, int valueBudget, Categorie categorie) {
		super();
		this.id = id;
		this.name = name;
		this.valueBudget = valueBudget;
		this.categorie = categorie;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getValueBudget() {
		return valueBudget;
	}

	public void setValueBudget(int valueBudget) {
		this.valueBudget = valueBudget;
	}

	public Categorie getCategorie() {
		return categorie;
	}

	public void setCategorie(Categorie categorie) {
		this.categorie = categorie;
	}

	@Override
	public String toString() {
		return "Subcategorie [id=" + id + ", name=" + name + ", valueBudget=" + valueBudget + ", categorie=" + categorie
				+ "]";
	}
	
}
