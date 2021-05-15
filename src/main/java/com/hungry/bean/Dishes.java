package com.hungry.bean;

public class Dishes {
	private Integer dishes_id;
	private Double dishes_price;
	private String dishes_name;
	private String dishes_describe;
	private String photo;
	private Integer dishes_tid;
		
	public Dishes() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Integer getDishes_id() {
		return dishes_id;
	}

	public void setDishes_id(Integer dishes_id) {
		this.dishes_id = dishes_id;
	}

	public Double getDishes_price() {
		return dishes_price;
	}

	public void setDishes_price(Double dishes_price) {
		this.dishes_price = dishes_price;
	}

	public String getDishes_name() {
		return dishes_name;
	}

	public void setDishes_name(String dishes_name) {
		this.dishes_name = dishes_name;
	}

	public String getDishes_describe() {
		return dishes_describe;
	}

	public void setDishes_describe(String dishes_describe) {
		this.dishes_describe = dishes_describe;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String dishes_photo) {
		this.photo = dishes_photo;
	}

	public Integer getDishes_tid() {
		return dishes_tid;
	}

	public void setDishes_tid(Integer dishes_tid) {
		this.dishes_tid = dishes_tid;
	}

	@Override
	public String toString() {
		return "Dish[id=" + dishes_id + ", name=" + dishes_name + ", tid=" + dishes_tid
				+ ", price=" + dishes_price + "]";
	}
	
}
