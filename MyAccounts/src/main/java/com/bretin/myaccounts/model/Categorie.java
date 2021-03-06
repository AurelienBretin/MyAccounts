package com.bretin.myaccounts.model;

public class Categorie implements java.io.Serializable {

	private int id;
	private String name;
	private int value;
	
	public Categorie() {
		super();
	}
	
	public Categorie(int id, String name, int value) {
		super();
		this.id = id;
		this.name = name;
		this.value = value;
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

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}

	@Override
	public String toString() {
		return "Categorie [id=" + id + ", name=" + name + ", value=" + value + "]";
	}
		
}
