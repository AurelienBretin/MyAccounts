package com.bretin.myaccounts.model;

public class Type implements java.io.Serializable {
	
	private int id;
	private int name;
	
	public Type() {
		super();
	}

	public Type(int id, int name) {
		super();
		this.id = id;
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getName() {
		return name;
	}

	public void setName(int name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Type [id=" + id + ", name=" + name + "]";
	}
		
}
