package com.bretin.myaccounts.model;

public class Budget implements java.io.Serializable {
	
	private Consumer consumer;
	private Categorie cateogorie;
	private double value;
	
	public Budget(){
		super();
	}
	
	public Budget(Consumer consumer, Categorie cateogorie, double value) {
		super();
		this.consumer = consumer;
		this.cateogorie = cateogorie;
		this.value = value;
	}

	public Consumer getConsumer() {
		return consumer;
	}

	public void setConsumer(Consumer consumer) {
		this.consumer = consumer;
	}

	public Categorie getCateogorie() {
		return cateogorie;
	}

	public void setCateogorie(Categorie cateogorie) {
		this.cateogorie = cateogorie;
	}

	public double getValue() {
		return value;
	}

	public void setValue(double value) {
		this.value = value;
	}

	@Override
	public String toString() {
		return "Budget [consumer=" + consumer + ", cateogorie=" + cateogorie + ", value=" + value + "]";
	}
		
}
