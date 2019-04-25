package com.padrao.spring.entity;

public class Product {
	
	private String id;
	private String name;
	private double price;
	
	public Product() {
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Product(String id, String username, double price) {
		this.id = id;
		this.name = username;
		this.price = price;
	}
	
}
